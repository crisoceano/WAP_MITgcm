C$Header: /csys/software/cvsroot/REcoM/pkg/recom/recom_iterate_ph.F,v 1.3 2008/02/11 09:52:59 mlosch Exp $
#include "RECOM_OPTIONS.h"
#ifdef ALLOW_MODULES
      module m_iterate_ph
      contains
#endif /* ALLOW_MODULES */
C-----------------------------------------------------------------------
C 'safe' iterative zero-finding routine for minimizing the mismatch
c between measured alkalinity and alkalinity calculated from pH. 
c
c Based on the routine DRTSAFE from Numerical Recipes. 
c Modified by R.M.Key 4/94, Geir Evensen (NERSC), Markus Schartau (AWI),
c Martin Losch (AWI), Christoph Voelker (AWI)
c-----------------------------------------------------------------------         

C  Newton-Raphson method --- rewritten by Tingting Wang
      subroutine recom_iterate_ph(
     I     X1, X2, xguess, XACC,
     O     xsol, NITER )
      implicit none

C     routine arguments
C     Input:
C     X1, X2: minimum and maximum values expected for result
C     xguess: first guess of result
C     XACC  : required accuracy for convergence
      _RL X1, X2, xguess, XACC
C     Output:
C     xsol  : solution of iteration
C     NITER : actual number of iterations required to obtain xsol
      _RL xsol
      integer NITER

C     local variables
      integer MAXIT
      _RL FL, DF, DFM, FH, XL, XH, SWAP, F, FM, TEMP,xm      

      MAXIT=100
      CALL recom_talk_difference(X1,FL,DF)
      CALL recom_talk_difference(X2,FH,DF)
      IF(FL .LT. 0.0) THEN
        XL=X1
        XH=X2
      ELSE
        XH=X1
        XL=X2
        SWAP=FL
        FL=FH
        FH=SWAP
      END IF

       CALL recom_talk_difference(xguess,F,DF)
      IF (F .LT. 0.0) THEN
        XL=xguess
      ELSE
        XH=xguess
      END IF

      DO NITER=1,MAXIT
       xm=0.5*(XL+XH)
       CALL recom_talk_difference(xm,FM,DFM)
       TEMP=xm-FM/DFM
       IF (TEMP .LT. XH .AND. TEMP .GT. XL) THEN
         CALL recom_talk_difference(TEMP,F,DF)
         xsol=TEMP
       ELSE
         xsol=xm
         F=FM
       END IF
        IF(ABS(F) .LT. XACC)RETURN 

        IF(F .LT. 0.0) THEN
           XL=xsol
           FL=F
        ELSE
           XH=xsol
           FH=F
        END IF
      END DO
      RETURN
#ifdef ALLOW_MODULES
      END subroutine recom_iterate_ph
#else
      END 
#endif /* ALLOW_MODULES */

cccc 
cccc      This subroutine is adapted from the OCMIP program 
cccc      (updated and extended by Christoph Voelker)   
cccc
      subroutine recom_talk_difference(x,fn,df)
      implicit none

C     routine arguments
      _RL x, fn, df
C     common blocks variables
      _RL bt, dic_molal, talk_molal
      common /species/ bt,dic_molal,talk_molal
      _RL k1,k2,kw,kb,ff
      common /equilibrium_constants/ k1,k2,kw,kb,ff

C     local variables
      _RL X2, X3, B, B2, DB
C     reciprocal values for safer division
      _RL rb, rx
      _RL k12
C
C This routine expresses TA as a function of DIC, htotal and constants.
C It also calculates the derivative of this function with respect to 
C htotal. It is used in the iterative solution for htotal. In the call
C "x" is the input value for htotal, "fn" is the calculated value for TA
C and "df" is the value for dTA/dhtotal
C
      x2=x*x
      x3=x2*x
      k12 = k1*k2
      b = x2 + k1*x + k12
      b2=b*b
      db = 2.0*x + k1
      rb = 0.
      if ( b .ne. 0. ) rb = 1./b
      rx = 0.
      if ( x .ne. 0 ) rx = 1./x
C     
C	fn = hco3+2*co3+borate+oh-hfree-ta
C
      fn = k1*x*dic_molal*rb +
     &     2.0*dic_molal*k12*rb +
     &     bt*kb/(kb + x) +
     &     kw*rx -
     &     x -
     &     talk_molal
c        print components of alkalinity
c        print *, k1*x*dic_molal/b, 2.0*dic_molal*k12/b, bt/(1.0 + x/kb), kw/x, -x 
C
C	df = dfn/dx
C
      df = k1*dic_molal*rb - k1*x*dic_molal*db*(rb*rb) -
     &     2.0*dic_molal*k12*db*(rb*rb) -
     &     bt*kb/(kb+x)**2 -
     &     kw*(rx*rx) -
     &     1.0

#ifdef ALLOW_MODULES
      END subroutine recom_talk_difference
#else 
      END 
#endif /* ALLOW_MODULES */

#ifdef ALLOW_MODULES
      end module m_iterate_ph
#endif /* ALLOW_MODULES */
