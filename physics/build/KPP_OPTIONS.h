C $Header: /u/gcmpack/MITgcm/pkg/kpp/KPP_OPTIONS.h,v 1.17 2009/09/18 11:40:22 mlosch Exp $
C $Name: checkpoint62r $

C     /==========================================================\
C     | KPP_OPTIONS.h                                            |
C     | o CPP options file for KPP package.                      |
C     |==========================================================|
C     | Use this file for selecting options within the KPP       |
C     | package.  KPP is enabled with ALLOW_KPP in CPP_OPTIONS.h |
C     \==========================================================/

#ifndef KPP_OPTIONS_H
#define KPP_OPTIONS_H
#include "PACKAGES_CONFIG.h"

#ifdef ALLOW_KPP

#include "CPP_OPTIONS.h"

C o When set, smooth shear horizontally with 121 filters
#define KPP_SMOOTH_SHSQ
#undef KPP_SMOOTH_DVSQ

C o When set, smooth dbloc KPP variable horizontally
#define KPP_SMOOTH_DBLOC

C o When set, smooth all KPP density variables horizontally
#undef KPP_SMOOTH_DENS
#ifdef KPP_SMOOTH_DENS
#  define KPP_SMOOTH_DBLOC
#endif

C o When set, smooth vertical viscosity horizontally
#undef KPP_SMOOTH_VISC

C o When set, smooth vertical diffusivity horizontally
#undef KPP_SMOOTH_DIFF

C o Get rid of vertical resolution dependence of dVsq term by
C   estimating a surface velocity that is independent of first
C   level thickness in the model.
#undef KPP_ESTIMATE_UREF

C o Include/exclude KPP non/local transport terms
#define KPP_GHAT

C o Exclude Interior shear instability mixing
#undef EXCLUDE_KPP_SHEAR_MIX

C o Exclude double diffusive mixing in the interior
#undef EXCLUDE_KPP_DOUBLEDIFF

C o Avoid as many as possible AD recomputations
C   usually not necessary, but useful for testing
#undef KPP_AUTODIFF_EXCESSIVE_STORE

C o Vertically smooth Ri (for interior shear mixing)
#undef ALLOW_KPP_VERTICALLY_SMOOTH

#endif /* ALLOW_KPP */
#endif /* KPP_OPTIONS_H */


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
