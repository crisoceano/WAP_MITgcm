C $Header: /csys/software/cvsroot/REcoM/MITgcm/recom/recom_external_fields_load.F,v 1.14 2008/04/17 14:25:52 mlosch Exp $
C $Name:  $

#include "GCHEM_OPTIONS.h"
#include "RECOM_OPTIONS.h"
#ifdef ALLOW_EXF
# include "EXF_OPTIONS.h"
#endif /* ALLOW_EXF */

CBOP
C     !ROUTINE: RECOM_EXTERNAL_FIELDS_LOAD
C     !INTERFACE:
      SUBROUTINE RECOM_EXTERNAL_FIELDS_LOAD( 
     ImyTime, myIter, myThid )

C     !DESCRIPTION: \bv
C     *==================================================================
C     | SUBROUTINE RECOM_EXTERNAL_FIELDS_LOAD
C     | o Control reading of fields from external source 
C     |   for a bio-geo-chemical model
C     *==================================================================
C     | External source field loading routine.                    
C     | This routine is called every time we want to              
C     | load a a set of external fields. The routine decides      
C     | which fields to load and then reads them in.              
C     | This routine needs to be customised for particular        
C     | experiments.                                              
C     |
C     | RECOM_EXTERNAL_FIELDS_LOAD is called from GCHEM_FORCING, before 
C     | calling the dynamics of the biogeochemical model.
C     |
C     *==================================================================
C     \ev

C     !USES:
      IMPLICIT NONE
C     == Global variables ==
#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"
#include "GRID.h"
#include "GCHEM.h"
#ifdef ALLOW_RECOM
# include "RECOM.h"
#endif /* ALLOW_RECOM */
#ifdef ALLOW_EXF
# include "EXF_PARAM.h"
# include "EXF_FIELDS.h"
# include "EXF_CONSTANTS.h"
# include "RECOM_EXF.h"
#endif /* ALLOW_EXF */
#ifdef RECOM_ATMOSPCO2_HISTORY
# include "RECOM_PARAMS.h"
#endif

C     !INPUT/OUTPUT PARAMETERS:
C     == Routine arguments ==
C     note: under the multi-threaded model myiter and 
C           mytime are local variables passed around as routine 
C           arguments. Although this is fiddly it saves the need to 
C           impose additional synchronisation points when they are 
C           updated.
C     myiter - iteration counter for this thread
C     mytime - time counter for this thread
C     mythid - thread number for this instance of the routine.
      integer mythid 
      integer myiter
      _RL     myTime

#ifdef ALLOW_RECOM

C     !LOCAL VARIABLES:
C     == Local variables ==
C     aWght, bWght :: Interpolation weights
      INTEGER bi,bj,i,j,intime0,intime1
      _RL aWght,bWght,rdt
      _RL tmp1Wght, tmp2Wght
      _RL tmpRepeatPeriod
#ifdef RECOM_ATMOSPCO2_HISTORY
      INTEGER ntim, ioUnit
      _RL tmp
#endif
      INTEGER nForcingPeriods,Imytm,Ifprd,Ifcyc,Iftm
      CHARACTER*(MAX_LEN_MBUF) msgBuf
#ifdef ALLOW_EXF
      INTEGER interp_method
      PARAMETER(interp_method=1)
      _RL loc0, loc1
#endif /* ALLOW_EXF */

CEOP

#ifdef ALLOW_EXF
      loc0 = 0. _d 0
      loc1 = 1. _d 0
C     10-m winds
      IF (recom_windFile .NE. ' ') CALL EXF_SET_GEN  ( 
     &     recom_windFile, wspeedstartdate, wspeedperiod, 
     &     loc1, loc0, loc0, 
     &     windSpeed, windSpeed0, windSpeed1, sfluxmask, 
#ifdef USE_EXF_INTERPOLATION
     &     wspeed_lon0, wspeed_lon_inc, 
     &     wspeed_lat0, wspeed_lat_inc,
     &     wspeed_nlon, wspeed_nlat, xC, yC, interp_method,
#endif
     &     myTime, myIter, myThid )
#ifndef RECOM_ATMOSPCO2_HISTORY
C     atmospheric CO2
      IF (recom_pCO2File .NE. ' ') THEN
C     this is a hack to allow non-periodic atmospheric pCO2
C     with periodic (climatological) forcing: save repeatperiod
C     and restore it to original value after the call of exf_set_gen
       tmpRepeatPeriod = repeatPeriod
       repeatPeriod    = pCO2RepeatPeriod
       CALL EXF_SET_GEN  ( 
     &     recom_pCO2File, pCO2startdate, pCO2period, 
     &     loc1, loc0, loc0, 
     &     atmospCO2, atmosp0, atmosp1, sfluxmask, 
#ifdef USE_EXF_INTERPOLATION
     &     pCO2_lon0, pCO2_lon_inc, pCO2_lat0,
     &     pCO2_lat_inc, pCO2_nlon, pCO2_nlat, xC, yC,
     &     interp_method,
#endif
     &     myTime, myIter, myThid )
C     restore repeatPeriod to original value
       repeatPeriod    = tmpRepeatPeriod
      ENDIF
#endif
CCV#ifdef ALLOW_RECOM_FEINPUT
C     iron input (through dust)
      IF (recom_ironFile .NE. ' ') THEN
CMLC     this is a hack to allow non-periodic dust input
CMLC     with periodic (climatological) forcing: save repeatperiod
CMLC     and restore it to original value after the call of exf_set_gen
CML       tmpRepeatPeriod = repeatPeriod
CML       repeatPeriod    = feDustRepeatPeriod
       CALL EXF_SET_GEN  ( 
     &     recom_ironFile, feduststartdate, fedustperiod, 
     &     loc1, loc0, loc0, 
     &     feDustDeposit, feDustDeposit0, feDustDeposit1, sfluxmask, 
#ifdef USE_EXF_INTERPOLATION
     &     fedust_lon0, fedust_lon_inc, fedust_lat0,
     &     fedust_lat_inc, fedust_nlon, fedust_nlat, xC, yC,
     &     interp_method,
#endif
     &     myTime, myIter, myThid )
CMLC     restore repeatPeriod to original value
CML       repeatPeriod    = tmpRepeatPeriod
      ENDIF
CCV#endif /* ALLOW_RECOM_FEINPUT  */

#else /* not ALLOW_EXF */

      IF ( periodicExternalForcing ) THEN

C First call requires that we initialize everything to zero for safety
cQQQ need to check timing
       IF ( myIter .EQ. nIter0 ) THEN
         CALL LEF_ZERO( windSpeed0,myThid )
         CALL LEF_ZERO( windSpeed1,myThid )
#ifndef RECOM_ATMOSPCO2_HISTORY
         CALL LEF_ZERO( atmosp0,myThid )
         CALL LEF_ZERO( atmosp1,myThid )
#endif
CCV#ifdef ALLOW_RECOM_FEINPUT 
         CALL LEF_ZERO( feDustDeposit0,myThid )
         CALL LEF_ZERO( feDustDeposit1,myThid )
CCV#endif /* ALLOW_RECOM_FEINPUT */
       ENDIF

       rdt = 1. _d 0 / deltaTclock
       nForcingPeriods = NINT(externForcingCycle/externForcingPeriod)
       Imytm = NINT(myTime*rdt)
       Ifprd = NINT(externForcingPeriod*rdt)
       Ifcyc = NINT(externForcingCycle*rdt)
       Iftm  = MOD( Imytm+Ifcyc-Ifprd/2, Ifcyc)
C Now calculate whether it is time to update the forcing arrays
       intime0 = 1 + INT(Iftm/Ifprd)
       intime1 = 1 + MOD(intime0,nForcingPeriods)
C-jmc: with some option of g77, FLOAT results in real*4 evaluation
C      of aWght; using DFLOAT always force real*8 computation:
C-ph: however, TAF doesnt recognize DFLOAT, 
C     so I put it back to FLOAT for now 
c      aWght =  FLOAT( Iftm-Ifprd*(intime0 - 1) ) /  FLOAT( Ifprd )
c      aWght = DFLOAT( Iftm-Ifprd*(intime0 - 1) ) / DFLOAT( Ifprd )
C-jmc: so let's try this:
       tmp1Wght = FLOAT( Iftm-Ifprd*(intime0 - 1) )
       tmp2Wght = FLOAT( Ifprd )
       aWght =  tmp1Wght / tmp2Wght
       bWght = 1. _d 0 - aWght
       
       IF (
     &   Iftm-Ifprd*(intime0-1).EQ. 0
     &   .OR. myIter .EQ. nIter0
     &    ) THEN


        _BEGIN_MASTER(myThid)

C      If the above condition is met then we need to read in
C      data for the period ahead and the period behind myTime.
        WRITE(msgBuf,'(A,E12.6,I11)') 
     &       'S/R RECOM_EXTERNAL_FIELDS_LOAD: Reading new REcoM data ',
     &       myTime,myIter
        CALL PRINT_MESSAGE( msgBuf, standardMessageUnit, 
     &       SQUEEZE_RIGHT , 1)

       IF ( recom_WindFile .NE. ' '  ) THEN
C         CALL MDSREADFIELD( recom_WindFile, readBinaryPrec, 
C     &       'RS', 1, windSpeed0, intime0, myThid )
          CALL MDS_READ_FIELD( recom_WindFile, readBinaryPrec, 
      &       .FALSE., 'RS', 1, 1, 1, windSpeed0, intime0, myThid )
C         CALL MDSREADFIELD( recom_WindFile, readBinaryPrec, 
C     &       'RS', 1, windSpeed1, intime1, myThid )
          CALL MDS_READ_FIELD( recom_WindFile, readBinaryPrec, 
      &       .FALSE., 'RS', 1, 1, 1, windSpeed1, intime1, myThid )
       ENDIF
#ifndef RECOM_ATMOSPCO2_HISTORY
       IF ( recom_pCO2File .NE. ' '  ) THEN
C         CALL MDSREADFIELD( recom_pCO2File, readBinaryPrec, 
C     &       'RS', 1, atmosp0, intime0, myThid )
         CALL MDS_READ_FIELD( recom_pCO2File, readBinaryPrec, 
     &       .FALSE., 'RS', 1, 1, 1, atmosp0, intime0, myThid )
C         CALL MDSREADFIELD( recom_pCO2File, readBinaryPrec, 
C     &       'RS', 1, atmosp1, intime1, myThid )
         CALL MDS_READ_FIELD( recom_pCO2File, readBinaryPrec, 
     &       .FALSE., 'RS', 1, 1, 1, atmosp1, intime1, myThid )
       ENDIF 
#endif
CCV#ifdef ALLOW_RECOM_FEINPUT 
       IF ( recom_IronFile .NE. ' '  ) THEN
C         CALL MDSREADFIELD( recom_IronFile, readBinaryPrec, 
C     &       'RS', 1, feDustDeposit0, intime0, myThid )
         CALL MDS_READ_FIELD( recom_IronFile, readBinaryPrec, 
     &       .FALSE., 'RS', 1, 1, 1, feDustDeposit0, intime0, myThid )
C         CALL MDSREADFIELD( recom_IronFile, readBinaryPrec, 
C     &       'RS', 1, feDustDeposit1, intime1, myThid )
         CALL MDS_READ_FIELD( recom_IronFile, readBinaryPrec, 
     &       .FALSE., 'RS', 1, 1, 1, feDustDeposit1, intime1, myThid )
       ENDIF 
CCV#endif /* ALLOW_RECOM_FEINPUT */

       _END_MASTER(myThid)
C
       _EXCH_XY_RS(windSpeed0, myThid )
       _EXCH_XY_RS(windSpeed1, myThid )
#ifndef RECOM_ATMOSPCO2_HISTORY
       _EXCH_XY_RS(atmosp0, myThid )
       _EXCH_XY_RS(atmosp1, myThid )
#endif
CCV#ifdef ALLOW_RECOM_FEINPUT 
       _EXCH_XY_RS(feDustDeposit0, myThid )
       _EXCH_XY_RS(feDustDeposit1, myThid )
CCV#endif /* ALLOW_RECOM_FEINPUT */

C
       ENDIF

       DO bj = myByLo(myThid), myByHi(myThid)
        DO bi = myBxLo(myThid), myBxHi(myThid)
         DO j=1-Oly,sNy+Oly
          DO i=1-Olx,sNx+Olx
           IF ( recom_WindFile .NE. ' '  ) THEN
             windSpeed(i,j,bi,bj) = bWght*windSpeed0(i,j,bi,bj)
     &                             +aWght*windSpeed1(i,j,bi,bj)
           ELSE
             windSpeed(i,j,bi,bj) = 1. _d 0*maskC(i,j,1,bi,bj)
           ENDIF
#ifndef RECOM_ATMOSPCO2_HISTORY
           IF ( recom_pCO2File .NE. ' '  ) THEN
             atmospCO2(i,j,bi,bj) = Bwght*atmosp0(i,j,bi,bj)
     &                             +aWght*atmosp1(i,j,bi,bj)
           ELSE
             atmospCO2(i,j,bi,bj) = 370. _d 0*maskC(i,j,1,bi,bj)
           ENDIF
#endif
CCV#ifdef ALLOW_RECOM_FEINPUT 
           IF ( recom_IronFile .NE. ' ' ) THEN
            feDustDeposit(i,j,bi,bj) = bWght*feDustDeposit0(i,j,bi,bj)
     &                                +aWght*feDustDeposit1(i,j,bi,bj)
           ELSE
            feDustDeposit(i,j,bi,bj) = 0. _d 0*maskC(i,j,1,bi,bj)
           ENDIF
CCV#else
CCV           feDustDeposit(i,j,bi,bj)  = 0. _d 0*maskC(i,j,1,bi,bj)
CCV#endif /* ALLOW_RECOM_FEINPUT */
          ENDDO
         ENDDO
        ENDDO
       ENDDO

C     ELSE
C     not  periodicForcing
C
C endif for periodicForcing
      ENDIF
#endif /* not ALLOW_EXF */

#ifdef RECOM_ATMOSPCO2_HISTORY
C read from a file (note:
C                   recom_pco2_int2=number entries to read
C                   recom_pco2_int3=start timestep,
C                   recom_pco2_int4=timestep between file entries)
C linearly interpolate between file entries
      ntim=int((myIter-recom_pco2_int3)/recom_pco2_int4)+1
      aWght = FLOAT(myIter-recom_pco2_int3)
      bWght = FLOAT(recom_pco2_int4)

CJH   taken out 0.5 in the following line as this would assume 
CJH   that for January in the first year the mean of the last 
CJH   year would have been read in -> the interpolation for the 
CJH   first time step would always be the mean of the first and 
CJH   second CO2 entry which is wrong for both cases: (a) mean 
CJH   centered in January is being read in, (b) mean of the 
CJH   actual calendar year (centered in July) is read in
CJH    aWght = 0.5 _d 0 +  aWght/bWght - FLOAT(ntim-1)
CJH   new now: uses start time step (recom_pco2_int3) as given
CJH   in data.recom for first CO2 entry. Set recom_pco2_int3 to 
CJH   two weeks in time stepping units to use yearly means centered
CJH   in January for correct interpolation

      aWght =  aWght/bWght - FLOAT(ntim-1)
      IF (aWght.GT.1. _d 0) THEN
         ntim=ntim+1
         aWght=aWght-1. _d 0
      ENDIF
      bWght = 1. _d 0 - aWght
      tmp=co2atmos(ntim,2)*bWght+co2atmos(ntim+1,2)*aWght

      ioUnit = standardMessageUnit
      WRITE(ioUnit,*) 'weights',ntim, aWght, bWght, tmp

      DO bj = myByLo(myThid), myByHi(myThid)
       DO bi = myBxLo(myThid), myBxHi(myThid)
        DO j=1-Oly,sNy+Oly
         DO i=1-Olx,sNx+Olx
          atmospCO2(i,j,bi,bj) = tmp
         ENDDO
        ENDDO
       ENDDO
      ENDDO
#endif

      RETURN
      END

#endif /* ALLOW_RECOM */

