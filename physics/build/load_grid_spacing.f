C $Header: /u/gcmpack/MITgcm/model/src/load_grid_spacing.F,v 1.7 2010/12/27 23:26:39 jmc Exp $
C $Name: checkpoint62r $

c #include "PACKAGES_CONFIG.h"
#include "CPP_OPTIONS.h"

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
CBOP
C     !ROUTINE: LOAD_GRID_SPACING
C     !INTERFACE:
      SUBROUTINE LOAD_GRID_SPACING( myThid )

C     !DESCRIPTION:
C     load grid-spacing (vector array) delX, delY, delR or delRc from file.

C     !USES:
      IMPLICIT NONE
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GRID.h"

C     !INPUT/OUTPUT PARAMETERS:
C     myThid    :: my Thread Id. number
      INTEGER myThid
CEOP

C     !FUNCTIONS:
      INTEGER  ILNBLNK
      EXTERNAL ILNBLNK

C     !LOCAL VARIABLES:
C     msgBuf    :: Informational/error message buffer
      INTEGER iLen
      INTEGER i, j, n
      CHARACTER*(MAX_LEN_MBUF) msgBuf

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|

      _BEGIN_MASTER( myThid )

C--   X coordinate
      IF ( delXFile .NE. ' ' ) THEN
        iLen = ILNBLNK(delXFile)
        CALL READ_GLVEC_RL( delXFile, ' ', delX, Nx, 1, myThid )
        WRITE(msgBuf,'(3A)') 'S/R LOAD_GRID_SPACING:',
     &    ' delX loaded from file: ', delXFile(1:iLen)
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                      SQUEEZE_RIGHT , myThid )
      ENDIF

C--   Y coordinate
      IF ( delYFile .NE. ' ' ) THEN
        iLen = ILNBLNK(delYFile)
        CALL READ_GLVEC_RL( delYFile, ' ', delY, Ny, 1, myThid )
        WRITE(msgBuf,'(3A)') 'S/R LOAD_GRID_SPACING:',
     &    ' delY loaded from file: ', delYFile(1:iLen)
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                      SQUEEZE_RIGHT , myThid )
      ENDIF

C--   vertical coordinate "R"
      IF ( delRFile .NE. ' ' ) THEN
        iLen = ILNBLNK(delRFile)
        CALL READ_GLVEC_RL( delRFile, ' ', delR, Nr, 1, myThid )
        WRITE(msgBuf,'(3A)') 'S/R LOAD_GRID_SPACING:',
     &    ' delR loaded from file: ', delRFile(1:iLen)
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                      SQUEEZE_RIGHT , myThid )
      ENDIF

      IF ( delRcFile .NE. ' ' ) THEN
        iLen = ILNBLNK(delRcFile)
        CALL READ_GLVEC_RL( delRcFile, ' ', delRc, Nr+1, 1, myThid )
        WRITE(msgBuf,'(3A)') 'S/R LOAD_GRID_SPACING:',
     &    ' delRc loaded from file: ', delRcFile(1:iLen)
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                      SQUEEZE_RIGHT , myThid )
      ENDIF

C--   hybrid sigma vertical coordinate coefficient
      IF ( hybSigmFile .NE. ' ' ) THEN
        iLen = ILNBLNK(hybSigmFile)
        CALL READ_GLVEC_RS( hybSigmFile,' ',aHybSigmF,Nr+1, 1,myThid )
        CALL READ_GLVEC_RS( hybSigmFile,' ',bHybSigmF,Nr+1, 2,myThid )
        WRITE(msgBuf,'(3A)') 'S/R LOAD_GRID_SPACING:',
     &    ' a&b_HybSigmF loaded from file: ', hybSigmFile(1:iLen)
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit,
     &                      SQUEEZE_RIGHT , myThid )
      ENDIF

C--   Check horizontal grid-spacing
      IF ( .NOT.usingCurvilinearGrid ) THEN
C Note: To avoid multiple copies of the same code in several horiz.grid
C       initialisation S/R, check horiz.grid spacing here, after
C       loading delX,delY (and before calling any of these S/R).

C--   Check delX grid-spacing:
       n = 0
       DO i=1,Nx
C-    check that delX has been set
        IF ( delX(i).EQ.UNSET_RL ) THEN
         n = n+1
         WRITE(msgBuf,'(2A,I5)') 'S/R LOAD_GRID_SPACING:',
     &       ' No value for delX at i =', i
         CALL PRINT_ERROR( msgBuf, myThid )
        ENDIF
C-    check that delX is > 0
        IF ( delX(i).LE.0. ) THEN
         n = n+1
         WRITE(msgBuf,'(2A,I5,A,1PE16.8,A)') 'S/R LOAD_GRID_SPACING:',
     &       ' delX(i=', i, ')=', delX(i), ' : MUST BE >0'
         CALL PRINT_ERROR( msgBuf, myThid )
        ENDIF
       ENDDO
       IF ( n.GE.1 ) THEN
         WRITE(msgBuf,'(2A,I5,A)') 'S/R LOAD_GRID_SPACING:',
     &       ' found', n, ' invalid delX values'
         CALL PRINT_ERROR( msgBuf, myThid )
         STOP 'ABNORMAL END: S/R LOAD_GRID_SPACING'
       ENDIF

C--   Check delY grid-spacing:
       n = 0
       DO j=1,Ny
C-    check that delY has been set
        IF ( delY(j).EQ.UNSET_RL ) THEN
         n = n+1
         WRITE(msgBuf,'(2A,I5)') 'S/R LOAD_GRID_SPACING:',
     &       ' No value for delY at j =', j
         CALL PRINT_ERROR( msgBuf, myThid )
        ENDIF
C-    check that delY is > 0
        IF ( delY(j).LE.0. ) THEN
         n = n+1
         WRITE(msgBuf,'(2A,I5,A,1PE16.8,A)') 'S/R LOAD_GRID_SPACING:',
     &       ' delY(j=', j, ')=', delY(j), ' : MUST BE >0'
         CALL PRINT_ERROR( msgBuf, myThid )
        ENDIF
       ENDDO
       IF ( n.GE.1 ) THEN
         WRITE(msgBuf,'(2A,I5,A)') 'S/R LOAD_GRID_SPACING:',
     &       ' found', n, ' invalid delY values'
         CALL PRINT_ERROR( msgBuf, myThid )
         STOP 'ABNORMAL END: S/R LOAD_GRID_SPACING'
       ENDIF
C--   end of grid-spacing check (not usingCurvilinearGrid)
      ENDIF

      _END_MASTER(myThid)
C--   Everyone else must wait for the parameters to be loaded
      _BARRIER

      RETURN
      END