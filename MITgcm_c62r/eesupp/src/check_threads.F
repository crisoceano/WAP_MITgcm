C $Header: /u/gcmpack/MITgcm/eesupp/src/check_threads.F,v 1.14 2006/07/29 20:58:31 jmc Exp $
C $Name: checkpoint62r $

#include "CPP_EEOPTIONS.h"

CBOP
C     !ROUTINE: CHECK_THREADS

C     !INTERFACE:
      SUBROUTINE CHECK_THREADS( myThid )
      IMPLICIT NONE

C     !DESCRIPTION:
C     *==========================================================
C     | SUBROUTINE CHECK\_THREADS                                 
C     | o Check that all the threads we need did indeed start.    
C     *========================================================== 
C     | This routine is called during the initialisation phase    
C     | to check whether all the threads have started.            
C     | It is invoked by every thread and if any thread finds an  
C     | error it should set its error flag.                       
C     | Notes:                                                    
C     |  Different mechanisms may be required on different        
C     | platforms to actually perform the check. For example as   
C     | coded here each thread checks for a semaphore set by the  
C     | other threads to see if they are running.                 
C     | It is also possible for a system to schedule threads      
C     | sequentially, unless some system call is made to yield    
C     | the process. This routine would detect this situation too 
C     | and allow a programmer to modify this routine and the     
C     | barrier code to allow threads to be scheduled more        
C     | appropriately.                                            
C     *========================================================== 

C     !USES:
C     == Global variables ==
#include "SIZE.h"
#include "EEPARAMS.h"
#include "EESUPPORT.h"

C     !INPUT PARAMETERS:
C     == Routine arguments ==
C     myThid :: My thread number
      INTEGER myThid

C     !LOCAL VARIABLES:
C     == Local variables ==
C     I :: Loop counter
C     numberThreadRunning :: Count of number of threads this thread
C                            thinks are running.
C     nChecks   :: Number of times checked for all threads. After so
C                  many checks give up and report an error.
C     msgBuffer :: Temp. for preparing text messages.
      INTEGER I
      INTEGER numberThreadsRunning
      INTEGER nChecks
      CHARACTER*(MAX_LEN_MBUF) msgBuffer
CEOP

C
      threadIsRunning(myThid) = .TRUE. 
      nChecks                 = 0
 
   10 CONTINUE
      numberThreadsRunning = 0
      nChecks = nChecks + 1
      DO I = 1, nThreads
       IF ( threadIsRunning(I) )
     &  numberThreadsRunning = numberThreadsRunning+1
      ENDDO
      IF ( nChecks .GT. 10 ) THEN
       thError(myThid) = .TRUE.
       eeBootError     = .TRUE.
       WRITE(msgBuffer,'(A,I5,A,I5,A)')
     &  'S/R INI_CHECK_THREADS: Only ',numberThreadsRunning,
     &  ' thread(s), ',nThreads,' are needed for this configuration!'
        CALL PRINT_ERROR( msgBuffer , myThid)
C--     Not enough threads are running so halt the program.
C       I did not want this here but it is the only place I have found that
C       KAP deadlocks if it there are fewer threads than iterations in a BLOCKED(1)
C       loop. The deadlock appears to be in the routine mppjoin which never 
C       returns. I tried putting the STOP in main or breaking out of the loop in main
C       but this causes KAP to insert a call to mppjoin - which then deadlocks!
        IF ( myThid .EQ. 1 ) THEN
         STOP 'ABNORMAL END: S/R CHECK_THREADS'
        ENDIF
       GOTO 11
      ENDIF
      IF ( numberThreadsRunning .NE. nThreads ) THEN
#ifdef HAVE_SYSTEM
       CALL SYSTEM('sleep 1')
#endif
       GOTO 10
      ENDIF
   11 CONTINUE

C--   check barrier synchronization: 1rst (initial) call.
      CALL BAR_CHECK( 1, myThid )

      RETURN
      END
