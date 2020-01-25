C $Header: /u/gcmpack/MITgcm/pkg/exf/exf_wind.F,v 1.11 2010/10/25 16:21:58 gforget Exp $
C $Name: checkpoint62r $

#include "EXF_OPTIONS.h"

      SUBROUTINE EXF_WIND( myTime, myIter, myThid )

C     ==================================================================
C     SUBROUTINE exf_wind
C     ==================================================================
C
C     o Prepare wind speed and stress fields
C
C     ==================================================================
C     SUBROUTINE exf_wind
C     ==================================================================

      IMPLICIT NONE

C     == global variables ==

#include "SIZE.h"
#include "EEPARAMS.h"
#include "PARAMS.h"

#include "EXF_PARAM.h"
#include "EXF_FIELDS.h"
#include "EXF_CONSTANTS.h"

#ifdef ALLOW_AUTODIFF_TAMC
#include "tamc.h"
#include "tamc_keys.h"
#endif

C     == routine arguments ==

      _RL     myTime
      INTEGER myIter
      INTEGER myThid

C     == external functions ==

C     == local variables ==

      INTEGER bi,bj
      INTEGER i,j
      _RL     wsLoc(1-OLx:sNx+OLx,1-OLy:sNy+OLy)
#ifdef ALLOW_ATM_WIND
      _RL     wsSq
#else
      _RL     usSq, recip_sqrtRhoA, ustar
      _RL     tmp1, tmp2, tmp3, tmp4
      _RL     oneThirdRL
      PARAMETER ( oneThirdRL = 1.d0 / 3.d0 )
#endif

C     == end of interface ==

C--   Use atmospheric state to compute surface fluxes.

C     Loop over tiles.
      DO bj = myByLo(myThid),myByHi(myThid)
       DO bi = myBxLo(myThid),myBxHi(myThid)

#ifdef ALLOW_AUTODIFF_TAMC
          act1 = bi - myBxLo(myThid)
          max1 = myBxHi(myThid) - myBxLo(myThid) + 1
          act2 = bj - myByLo(myThid)
          max2 = myByHi(myThid) - myByLo(myThid) + 1
          act3 = myThid - 1
          max3 = nTx*nTy
          act4 = ikey_dynamics - 1
          ikey = (act1 + 1) + act2*max1
     &                      + act3*max1*max2
     &                      + act4*max1*max2*max3
#endif /* ALLOW_AUTODIFF_TAMC */

C--   Initialise
        DO j = 1,sNy
         DO i = 1,sNx
          wsLoc(i,j) = 0. _d 0
          cw(i,j,bi,bj) = 0. _d 0
          sw(i,j,bi,bj) = 0. _d 0
          sh(i,j,bi,bj) = 0. _d 0
          wStress(i,j,bi,bj) = 0. _d 0
         ENDDO
        ENDDO

#ifdef ALLOW_ATM_WIND

C--   Wind speed and direction.
        DO j = 1,sNy
         DO i = 1,sNx
           wsSq = uwind(i,j,bi,bj)*uwind(i,j,bi,bj)
     &         + vwind(i,j,bi,bj)*vwind(i,j,bi,bj)
           IF ( wsSq .NE. 0. _d 0 ) THEN
             wsLoc(i,j) = SQRT(wsSq)
             cw(i,j,bi,bj) = uwind(i,j,bi,bj)/wsLoc(i,j)
             sw(i,j,bi,bj) = vwind(i,j,bi,bj)/wsLoc(i,j)
           ELSE
             wsLoc(i,j) = 0. _d 0
             cw(i,j,bi,bj) = 0. _d 0
             sw(i,j,bi,bj) = 0. _d 0
           ENDIF
         ENDDO
        ENDDO
        IF ( wspeedfile .EQ. ' ' ) THEN
C-    wind-speed is not loaded from file: save local array into common block
          DO j = 1,sNy
           DO i = 1,sNx
             wspeed(i,j,bi,bj) = wsLoc(i,j)
           ENDDO
          ENDDO
        ENDIF

#else  /* ifndef ALLOW_ATM_WIND */

C--   Wind stress and direction.
        DO j = 1,sNy
         DO i = 1,sNx
           IF ( stressIsOnCgrid ) THEN
             usSq = ( ustress(i,  j,bi,bj)*ustress(i  ,j,bi,bj)
     &               +ustress(i+1,j,bi,bj)*ustress(i+1,j,bi,bj)
     &               +vstress(i,j,  bi,bj)*vstress(i,j  ,bi,bj)
     &               +vstress(i,j+1,bi,bj)*vstress(i,j+1,bi,bj)
     &              )*0.5 _d 0
           ELSE
             usSq = ustress(i,j,bi,bj)*ustress(i,j,bi,bj)
     &             +vstress(i,j,bi,bj)*vstress(i,j,bi,bj)
           ENDIF
           IF ( usSq .NE. 0. _d 0 ) THEN
             wStress(i,j,bi,bj) = SQRT(usSq)
c            ustar = SQRT(usSq/atmrho)
             cw(i,j,bi,bj) = ustress(i,j,bi,bj)/wStress(i,j,bi,bj)
             sw(i,j,bi,bj) = vstress(i,j,bi,bj)/wStress(i,j,bi,bj)
           ELSE
             wStress(i,j,bi,bj) = 0. _d 0
             cw(i,j,bi,bj)      = 0. _d 0
             sw(i,j,bi,bj)      = 0. _d 0
           ENDIF
         ENDDO
        ENDDO

        IF ( wspeedfile .EQ. ' ' ) THEN
C--   wspeed is not loaded ; derive wind-speed by inversion of
C     wind-stress=fct(wind-speed) relation:
C             The variables us, sh and rdn have to be computed from
C             given wind stresses inverting relationship for neutral
C             drag coeff. cdn.
C             The inversion is based on linear and quadratic form of
C             cdn(umps); ustar can be directly computed from stress;
         recip_sqrtRhoA = 1. _d 0 / SQRT(atmrho)
         DO j = 1,sNy
          DO i = 1,sNx
            ustar = wStress(i,j,bi,bj)*recip_sqrtRhoA
            IF ( ustar .EQ. 0. _d 0 ) THEN
             wsLoc(i,j) = 0. _d 0
            ELSE IF ( ustar .LT. ustofu11 ) THEN
             tmp1 = -cquadrag_2/cquadrag_1*exf_half
             tmp2 = SQRT(tmp1*tmp1 + ustar*ustar/cquadrag_1)
             wsLoc(i,j) = SQRT(tmp1 + tmp2)
            ELSE
             tmp1 = clindrag_2/clindrag_1*oneThirdRL
             tmp2 = ustar*ustar/clindrag_1*exf_half
     &            - tmp1*tmp1*tmp1
             tmp3 = SQRT( ustar*ustar/clindrag_1*
     &            (ustar*ustar/clindrag_1*0.25 _d 0 - tmp1*tmp1*tmp1 )
     &                  )
             tmp4 = (tmp2 + tmp3)**oneThirdRL
             wsLoc(i,j) = tmp4 + tmp1*tmp1 / tmp4 - tmp1
c            wsLoc(i,j) = (tmp2 + tmp3)**oneThirdRL +
c    &            tmp1*tmp1 * (tmp2 + tmp3)**(-oneThirdRL) - tmp1
            ENDIF
          ENDDO
         ENDDO
C-    save local array wind-speed to common block
         DO j = 1,sNy
          DO i = 1,sNx
            wspeed(i,j,bi,bj) = wsLoc(i,j)
          ENDDO
         ENDDO
        ENDIF

C--   infer wind field from wind-speed & wind-stress direction
        DO j = 1,sNy
         DO i = 1,sNx
           uwind(i,j,bi,bj) = wspeed(i,j,bi,bj)*cw(i,j,bi,bj)
           vwind(i,j,bi,bj) = wspeed(i,j,bi,bj)*sw(i,j,bi,bj)
         ENDDO
        ENDDO
#endif /* ifndef ALLOW_ATM_WIND */

#ifdef ALLOW_AUTODIFF_TAMC
CADJ STORE wspeed(:,:,bi,bj) = comlev1_bibj, key=ikey, byte=isbyte
#endif

C--   set wind-speed lower limit
        DO j = 1,sNy
         DO i = 1,sNx
           sh(i,j,bi,bj) = MAX(wspeed(i,j,bi,bj),uMin)
         ENDDO
        ENDDO

C--   end bi,bj loops
       ENDDO
      ENDDO

      RETURN
      END