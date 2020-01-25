












C$Header: /csys/software/cvsroot/REcoM/pkg/recom/recom_co2flux.F,v 1.9 2008/02/15 07:27:33 mlosch Exp $
C$Name:  $
C $Header: /u/gcmpack/MITgcm/pkg/ptracers/PTRACERS_OPTIONS.h,v 1.7 2008/05/08 19:50:08 jahn Exp $
C $Name: checkpoint62r $

C CPP options file for PTRACERS package
C
C Use this file for selecting options within the PTRACERS package








C $Header: /u/gcmpack/MITgcm/model/inc/CPP_OPTIONS.h,v 1.31 2004/04/05 23:42:52 jmc Exp $
C $Name:  $


C CPP flags controlling particular source code features
C

C o Shortwave heating as extra term in external_forcing.F
C Note: this should be a run-time option

C o Include/exclude phi_hyd calculation code

C o Include/exclude call to S/R CONVECT

C o Include/exclude call to S/R CALC_DIFFUSIVITY

C o Include/exclude Implicit vertical advection code

C o Include/exclude nonHydrostatic code

C o Include pressure loading code

C o Use "Exact Convervation" of fluid in Free-Surface formulation
C   so that d/dt(eta) is exactly equal to - Div.Transport

C o Allow the use of Non-Linear Free-Surface formulation
C   this implies that surface thickness (hFactors) vary with time

C o Use "OLD" UV discretisation near boundaries (*not* recommended)
C   Note - only works with  #undef NO_SLIP_LATERAL  in calc_mom_rhs.F
C          because the old code did not have no-slip BCs

C o Execution environment support options
C $Header: /u/gcmpack/MITgcm/eesupp/inc/CPP_EEOPTIONS.h,v 1.33 2010/03/04 22:01:35 jmc Exp $
C $Name: checkpoint62r $

CBOP
C     !ROUTINE: CPP_EEOPTIONS.h
C     !INTERFACE:
C     include "CPP_EEOPTIONS.h"
C
C     !DESCRIPTION:
C     *==========================================================*
C     | CPP\_EEOPTIONS.h                                         |
C     *==========================================================*
C     | C preprocessor "execution environment" supporting        |
C     | flags. Use this file to set flags controlling the        |
C     | execution environment in which a model runs - as opposed |
C     | to the dynamical problem the model solves.               |
C     | Note: Many options are implemented with both compile time|
C     |       and run-time switches. This allows options to be   |
C     |       removed altogether, made optional at run-time or   |
C     |       to be permanently enabled. This convention helps   |
C     |       with the data-dependence analysis performed by the |
C     |       adjoint model compiler. This data dependency       |
C     |       analysis can be upset by runtime switches that it  |
C     |       is unable to recoginise as being fixed for the     |
C     |       duration of an integration.                        |
C     |       A reasonable way to use these flags is to          |
C     |       set all options as selectable at runtime but then  |
C     |       once an experimental configuration has been        |
C     |       identified, rebuild the code with the appropriate  |
C     |       options set at compile time.                       |
C     *==========================================================*
CEOP


C     In general the following convention applies:
C     ALLOW  - indicates an feature will be included but it may
C     CAN      have a run-time flag to allow it to be switched
C              on and off.
C              If ALLOW or CAN directives are "undef'd" this generally
C              means that the feature will not be available i.e. it
C              will not be included in the compiled code and so no
C              run-time option to use the feature will be available.
C
C     ALWAYS - indicates the choice will be fixed at compile time
C              so no run-time option will be present

C=== Macro related options ===
C--   Control storage of floating point operands
C     On many systems it improves performance only to use
C     8-byte precision for time stepped variables.
C     Constant in time terms ( geometric factors etc.. )
C     can use 4-byte precision, reducing memory utilisation and
C     boosting performance because of a smaller working set size.
C     However, on vector CRAY systems this degrades performance.
C     Enable to switch REAL4_IS_SLOW from genmake2 (with LET_RS_BE_REAL4):

C--   Control use of "double" precision constants.
C     Use D0 where it means REAL*8 but not where it means REAL*16

C--   Enable some old macro conventions for backward compatibility

C=== IO related options ===
C--   Flag used to indicate whether Fortran formatted write
C     and read are threadsafe. On SGI the routines can be thread
C     safe, on Sun it is not possible - if you are unsure then
C     undef this option.

C--   Flag used to indicate whether Binary write to Local file (i.e.,
C     a different file for each tile) and read are thread-safe.

C--   Flag to turn off the writing of error message to ioUnit zero

C--   Alternative formulation of BYTESWAP, faster than
C     compiler flag -byteswapio on the Altix.

C=== MPI, EXCH and GLOBAL_SUM related options ===
C--   Flag turns off MPI_SEND ready_to_receive polling in the
C     gather_* subroutines to speed up integrations.

C--   Control MPI based parallel processing
CXXX We no longer select the use of MPI via this file (CPP_EEOPTIONS.h)
CXXX To use MPI, use an appropriate genmake2 options file or use
CXXX genmake2 -mpi .
CXXX #undef  1
CXXX #undef  1

C--   Control use of communication that might overlap computation.
C     Under MPI selects/deselects "non-blocking" sends and receives.
C--   Control use of communication that is atomic to computation.
C     Under MPI selects/deselects "blocking" sends and receives.

C--   Control use of JAM routines for Artic network
C     These invoke optimized versions of "exchange" and "sum" that
C     utilize the programmable aspect of Artic cards.
CXXX No longer supported ; started to remove JAM routines.
CXXX #undef  LETS_MAKE_JAM
CXXX #undef  JAM_WITH_TWO_PROCS_PER_NODE

C--   Control XY periodicity in processor to grid mappings
C     Note: Model code does not need to know whether a domain is
C           periodic because it has overlap regions for every box.
C           Model assume that these values have been
C           filled in some way.

C--   Alternative way of doing global sum without MPI allreduce call
C     but instead, explicit MPI send & recv calls.

C--   Alternative way of doing global sum on a single CPU
C     to eliminate tiling-dependent roundoff errors.
C     Note: This is slow.

C=== Other options (to add/remove pieces of code) ===
C--   Flag to turn on checking for errors from all threads and procs
C     (calling S/R STOP_IF_ERROR) before stopping.

C--   Control use of communication with other component:
C     allow to import and export from/to Coupler interface.


C $Header: /u/gcmpack/MITgcm/eesupp/inc/CPP_EEMACROS.h,v 1.23 2010/08/12 21:38:58 jmc Exp $
C $Name: checkpoint62r $

CBOP
C     !ROUTINE: CPP_EEMACROS.h
C     !INTERFACE:
C     include "CPP_EEMACROS.h "
C     !DESCRIPTION:
C     *==========================================================*
C     | CPP_EEMACROS.h
C     *==========================================================*
C     | C preprocessor "execution environment" supporting
C     | macros. Use this file to define macros for  simplifying
C     | execution environment in which a model runs - as opposed
C     | to the dynamical problem the model solves.
C     *==========================================================*
CEOP


C     In general the following convention applies:
C     ALLOW  - indicates an feature will be included but it may
C     CAN      have a run-time flag to allow it to be switched
C              on and off.
C              If ALLOW or CAN directives are "undef'd" this generally
C              means that the feature will not be available i.e. it
C              will not be included in the compiled code and so no
C              run-time option to use the feature will be available.
C
C     ALWAYS - indicates the choice will be fixed at compile time
C              so no run-time option will be present

C     Flag used to indicate which flavour of multi-threading
C     compiler directives to use. Only set one of these.
C     USE_SOLARIS_THREADING  - Takes directives for SUN Workshop
C                              compiler.
C     USE_KAP_THREADING      - Takes directives for Kuck and
C                              Associates multi-threading compiler
C                              ( used on Digital platforms ).
C     USE_IRIX_THREADING     - Takes directives for SGI MIPS
C                              Pro Fortran compiler.
C     USE_EXEMPLAR_THREADING - Takes directives for HP SPP series
C                              compiler.
C     USE_C90_THREADING      - Takes directives for CRAY/SGI C90
C                              system F90 compiler.






C--   Define the mapping for the _BARRIER macro
C     On some systems low-level hardware support can be accessed through
C     compiler directives here.

C--   Define the mapping for the BEGIN_CRIT() and  END_CRIT() macros.
C     On some systems we simply execute this section only using the
C     master thread i.e. its not really a critical section. We can
C     do this because we do not use critical sections in any critical
C     sections of our code!

C--   Define the mapping for the BEGIN_MASTER_SECTION() and
C     END_MASTER_SECTION() macros. These are generally implemented by
C     simply choosing a particular thread to be "the master" and have
C     it alone execute the BEGIN_MASTER..., END_MASTER.. sections.

CcnhDebugStarts
C      Alternate form to the above macros that increments (decrements) a counter each
C      time a MASTER section is entered (exited). This counter can then be checked in barrier
C      to try and detect calls to BARRIER within single threaded sections.
C      Using these macros requires two changes to Makefile - these changes are written
C      below.
C      1 - add a filter to the CPP command to kill off commented _MASTER lines
C      2 - add a filter to the CPP output the converts the string N EWLINE to an actual newline.
C      The N EWLINE needs to be changes to have no space when this macro and Makefile changes
C      are used. Its in here with a space to stop it getting parsed by the CPP stage in these
C      comments.
C      #define IF ( a .EQ. 1 ) THEN  IF ( a .EQ. 1 ) THEN  N EWLINE      CALL BARRIER_MS(a)
C      #define ENDIF    CALL BARRIER_MU(a) N EWLINE        ENDIF
C      'CPP = cat $< | $(TOOLSDIR)/set64bitConst.sh |  grep -v '^[cC].*_MASTER' | cpp  -traditional -P'
C      .F.f:
C      $(CPP) $(DEFINES) $(INCLUDES) |  sed 's/N EWLINE/\n/' > $@
CcnhDebugEnds

C--   Control storage of floating point operands
C     On many systems it improves performance only to use
C     8-byte precision for time stepped variables.
C     Constant in time terms ( geometric factors etc.. )
C     can use 4-byte precision, reducing memory utilisation and
C     boosting performance because of a smaller working
C     set size. However, on vector CRAY systems this degrades
C     performance.
C- Note: global_sum/max macros were used to switch to  JAM routines (obsolete);
C  in addition, since only the R4 & R8 S/R are coded, GLOBAL RS & RL macros
C  enable to call the corresponding R4 or R8 S/R.



C- Note: a) exch macros were used to switch to  JAM routines (obsolete)
C        b) exch R4 & R8 macros are not practically used ; if needed,
C           will directly call the corrresponding S/R.

C--   Control use of JAM routines for Artic network (no longer supported)
C     These invoke optimized versions of "exchange" and "sum" that
C     utilize the programmable aspect of Artic cards.
CXXX No longer supported ; started to remove JAM routines.
CXXX #ifdef LETS_MAKE_JAM
CXXX #define CALL GLOBAL_SUM_R8 ( a, b) CALL GLOBAL_SUM_R8_JAM ( a, b)
CXXX #define CALL GLOBAL_SUM_R8 ( a, b ) CALL GLOBAL_SUM_R8_JAM ( a, b )
CXXX #define CALL EXCH_XY_RS ( a, b ) CALL EXCH_XY_R8_JAM ( a, b )
CXXX #define CALL EXCH_XY_RL ( a, b ) CALL EXCH_XY_R8_JAM ( a, b )
CXXX #define CALL EXCH_XYZ_RS ( a, b ) CALL EXCH_XYZ_R8_JAM ( a, b )
CXXX #define CALL EXCH_XYZ_RL ( a, b ) CALL EXCH_XYZ_R8_JAM ( a, b )
CXXX #endif

C--   Control use of "double" precision constants.
C     Use d0 where it means REAL*8 but not where it means REAL*16

C--   Substitue for 1.D variables
C     Sun compilers do not use 8-byte precision for literals
C     unless .Dnn is specified. CRAY vector machines use 16-byte
C     precision when they see .Dnn which runs very slowly!



C o Include/exclude code specific to the ECCO/SEALION version.
C   AUTODIFF or EXF package.
C   Currently controled by a single header file
C   For this to work, PACKAGES_CONFIG.h needs to be included!
cph#if (defined (ALLOW_AUTODIFF) || cph     defined (ALLOW_ECCO) || cph     defined ())
cph# include "ECCO_CPPOPTIONS.h"
cph#endif



C NUMBER_OF_PTRACERS defines how many passive tracers are allocated/exist.
C This CPP macro is *only* used in PTRACERS.h to set an integer parameter.
C <Please> do not make use of it elsewhere.
C   Note: this CPP macro has been removed to avoid confusion and risk of
C    error resulting from multiple definitions (default + explicit) within
C    the code. The number of tracers is now defined within PTRACERS_SIZE.h
C---


C CPP Macros go here
C     This enables the dynamically allocated internal state data structures
C     for PTracers.  Needed for PTRACERS_SOM_Advection.
C     This requires a Fortran 90 compiler!


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/pkg/gchem/GCHEM_OPTIONS.h,v 1.8 2008/04/07 20:19:47 dfer Exp $
C $Name:  $


C $Header: /u/gcmpack/MITgcm/model/inc/CPP_OPTIONS.h,v 1.31 2004/04/05 23:42:52 jmc Exp $
C $Name:  $



CBOP
C    !ROUTINE: GCHEM_OPTIONS.h
C    !INTERFACE:

C    !DESCRIPTION:
C options for biogeochemistry package
CEOP


C$Header: /csys/software/cvsroot/REcoM/MITgcm/recom/RECOM_OPTIONS.h,v 1.4 2007/02/09 15:20:14 mlosch Exp $
C$Name:  $
CBOP
C    !ROUTINE: RECOM_OPTIONS.h
C    !INTERFACE:

C    !DESCRIPTION:
C 
C CPP flags controlling which code included in the REcoM files that
C will be compiled.
C

C $Header: /u/gcmpack/MITgcm/model/inc/CPP_OPTIONS.h,v 1.31 2004/04/05 23:42:52 jmc Exp $
C $Name:  $





C---------------------
CCV  In REcoM-2, silicate and iron are always modeled; no need to
CCV  set it here; delete this part later
CC only possible or reasonable for REcoM with Silicate and Iron
C#if NUMBER_OF_PTRACERS == 16
C allow some extra output
C#define ALLOW_RECOM_SILICATE
C allow some extra fields to load iron dust decomposition into the model 
C#define ALLOW_RECOM_FEINPUT
C#endif 
CCV 
CCV Instead we set a variable that says we are dealing with two 
CCV phytoplankton classes. This is not used consistently yet!
CCV
C---------------------

CTW increased sinking speed 

CCV Short iron recycling loop 
C   Excreted organic iron is directly put into bioavailable iron

CCV vertical fluxes of PON, POC, Calc and BSi are defined as diagnostics

CCV many different additional diagnostics for the MAREMIP model intercomparison

C- settings for how complex iron chemistry should be

C catch bad CPP-flag combination

C NOTE: none of the flags below will be used anywhere, because 
C       RECOM_OPTIONS.h will not be include into the REcoM model. 
C       Use, e.g.
C       set DEFINES='-DEULER -DWRITE -DPARVE -DASTRO_RAD' 
C       in the .genmakerc of REcoM/bin instead.
C#undef EULER
C#undef WRITE
C#undef PARVE 
C#undef ASTRO_RAD
C#undef EP85  
C#undef TEP_AGG

      subroutine recom_co2flux(pco2a, dic, talk, temp, sali, u10,
     &   dflux, pco2surf, co2star, hplus, nit)
c==========================================================================  
cccc  Calculates atmosphere-ocean flux of carbon, given atmospheric CO2 
cccc  partial pressure in dry air, dissolved inorganic carbon, total 
cccc  alkalinity, temperature, salinity, and 10m wind speed
cccc 
cccc      This subroutine is adapted from the OCMIP program 
cccc      (updated and extended by Christoph Voelker)   
cccc
c
c pco2a : atmospheric pCO2 in dry air          [microatm]           (input)
c dic   : dissolved inorganic carbon           [mmol/m^3]           (input)
c talk  : total alkalinity                     [mmol/m^3]           (input)
c temp  : temperature                          [deg. centigrade]    (input)
c sali  : salinity                             [1]                  (input)
c u10   : wind speed at 10 meters height       [m/s]                (input)
c dflux : flux of co2                          [mmol C / m^2 / d]  (output)
c pco2surf: seawater pCO2                      [microatm]          (output)
c co2star: seawater [CO2*]                     [mmol/m^3]          (output)
c hplus : concentration of h+                  [mol/kg]            (in/out)
c nit   : number of iterations needed          [1]                 (output)
c==========================================================================  
      implicit none
      Real*8 piston_velocity, schmidt_number
      external piston_velocity, schmidt_number
 
C     input variables
      Real*8 dic, talk, temp, sali, pco2a, u10
C     output variables
      Real*8 dflux, pco2surf, co2star
      integer nit
C     updated variables
      Real*8 hplus

C     common block variables
      Real*8 scl, bt, dic_molal, talk_molal 
      common /species/ bt, dic_molal, talk_molal
      Real*8 k1, k2, kw, kb, ff    
c In this common block, K0 and HTOTAL have been removed. 
c This was also changed in recom_iterate_ph 
      common /equilibrium_constants/ k1, k2, kw, kb, ff
      
C     local variables
      Real*8 piston_vel, schmidt_no
      Real*8 dco2star, co2starair, hplus2
      Real*8 phlo, phhi, phacc, phgu 
      Real*8 permil, permeg, pco2

c-- piston velocity at Schmidt number = 660 in [cm/h]
      piston_vel = piston_velocity(temp,u10)

c-- actual Schmidt number
      schmidt_no = schmidt_number(temp)

c-- piston velocity in [m/d]
      piston_vel = piston_vel * sqrt(660.0/schmidt_no)*0.24

      call recom_calculate_constants(temp, sali)

C------------------------------------------------------------------------
C Calculate concentrations for borate, sulfate, and fluoride
C
C total borate: Uppstrom (1974)
      scl = sali / 1.80655        ! Chlorinity
      bt  = 0.000232 * scl/10.811 ! total borate (unit: [mol/kg])

c     input concentrations DIC and Alkalinity are given in 
c     mmol/m^3 = micromol/l, change them to mol/kg
c     PERMIL should better be set in initialization...
      permil = 1.e-3 / 1024.5
      talk_molal = talk * permil
      dic_molal  = dic * permil
c      print *,'DIC,TA',dic_molal,talk_molal

c---------------------------------------------------------------------
C     Change units from uatm to atm. That is, atm is what the body of 
c     this routine uses for calculations.
c---------------------------------------------------------------------
      permeg = 1.e-6
      pco2 = pco2a * permeg

c------------------------------------------------------------------------
c Iteration to find the pH (or rather the [H+] concentration) for given 
c DIC, TALK, 

c-- maximum and minimum values for [H+] that are expected
      phlo = 10**(-5.0)
      phhi = 10**(-9.0)
c-- precision for [H+] in iteration
      phacc = 1.e-12

c use [H+] from last timestep for starting iteration 
      phgu = hplus

c-- this is the iteration routine

      call recom_iterate_ph(phlo,phhi,phgu,phacc,hplus,nit)

C Calculate [CO2*] as defined in DOE Methods Handbook 1994 Ver.2, 
C ORNL/CDIAC-74, Dickson and Goyet, eds. (Ch 2 p 10, Eq A.49)
C
      hplus2     = hplus * hplus
      co2star    = dic_molal * hplus2 / (hplus2 + k1*hplus + k1*k2)
      co2starair = pco2 * ff
      dco2star   = co2starair - co2star

c     ---------------------------------------------------------------
c     Add output argument for storing pco2surf
c     Should we be using K0 or ff for the solubility here?
c     ---------------------------------------------------------------

      pco2surf = co2star / ff

C     Convert units of output arguments
c     Note: co2star and dco2star are calculated in mol/kg within this routine 
c     Thus convert now from mol/kg -> mmol/m^3

      co2star  = co2star / permil
      dco2star = dco2star / permil

c     Note: pCO2surf and dpCO2 are calculated in atm above. 
c     Thus convert now to uatm

      pco2surf = pco2surf / permeg

c-- finally, calculate CO2 flux

      dflux = piston_vel * dco2star  ! [mmol C m^{-2} d^{-1}]

      return
      end

      subroutine recom_calculate_constants(temp, sali)
c-- definition equilibrium constants
      implicit none
C     input variables
      Real*8 temp, sali
C     common block variables
      Real*8 k1, k2, kw, kb, ff
      common /equilibrium_constants/ k1, k2, kw, kb, ff

c-- definition auxiliary variables
      Real*8 tk, tk100, tk1002, invtk, dlogtk, s2, sqrts, s15

c-- auxiliary variables
      tk = 273.15 + temp
      tk100 = tk/100.0
      tk1002=tk100*tk100
      invtk=1.0/tk
      dlogtk=log(tk)
      s2=sali*sali
      sqrts=sqrt(sali)
      s15=sali**1.5

C------------------------------------------------------------------------
C ff = k0*(1-pH2O)*correction term for non-ideality
C
C Weiss & Price (1980, Mar. Chem., 8, 347-359; Eq 13 with table 6 values)

        ff = exp(-162.8301 + 218.2968/tk100  +
     & 90.9241*log(tk100) - 1.47696*tk1002 +
     & sali * (.025695 - .025225*tk100 + 
     & 0.0049867*tk1002))

C------------------------------------------------------------------------
C k1 = [H][HCO3]/[H2CO3]
C k2 = [H][CO3]/[HCO3]
C
C Millero p.664 (1995) using Mehrbach et al. data on seawater scale 

      k1=10**(-1*(3670.7*invtk - 62.008 + 9.7944*dlogtk -
     &		0.0118 * sali + 0.000116*s2))
C
      k2=10**(-1*(1394.7*invtk + 4.777 - 
     &		0.0184*sali + 0.000118*s2))

C------------------------------------------------------------------------
C kb = [H][BO2]/[HBO2]
C
C Millero p.669 (1995) using data from Dickson (1990)

      kb=exp((-8966.90 - 2890.53*sqrts - 77.942*sali +
     &		1.728*s15 - 0.0996*s2)*invtk +
     &		(148.0248 + 137.1942*sqrts + 1.62142*sali) +
     &		(-24.4344 - 25.085*sqrts - 0.2474*sali) *
     &		dlogtk + 0.053105*sqrts*tk)

C------------------------------------------------------------------------
C kw = [H][OH]
C
C Millero p.670 (1995) using composite data

      kw = exp(-13847.26*invtk + 148.9652 - 23.6521 * dlogtk +
     &		(118.67*invtk - 5.977 + 1.0495 * dlogtk) *
     &		sqrts - 0.01615 * sali)


      return
      end

C$Header: /csys/software/cvsroot/REcoM/pkg/recom/recom_co2flux.F,v 1.9 2008/02/15 07:27:33 mlosch Exp $
c#include "CPP_OPTIONS.h"
c#include "PTRACERS_OPTIONS.h"
c#include "GCHEM_OPTIONS.h"
c#include "RECOM_OPTIONS.h"

cccc 
cccc      This subroutine is adapted from the OCMIP program 
cccc      (updated and extended by Christoph Voelker)   
cccc
      Real*8 function piston_velocity(tc,u)
c--------------------------------------------------------------------------
      Real*8 tc,u
c chemical_enhancement
        piston_velocity = (2.5*(0.5246 + 1.6256e-2*tc + 
     &                     4.9946e-4*tc*tc) + 0.3*u*u)
c else
c  ifdef cubic_wann
c        u2 = u*u
c        u3 = u2*u
c        wann = (1.09*u - 0.333*u2 + 0.078*u3)
c  else
c	wann = 0.39*u*u
c  endif
c endif
c      print*, 'wann = ',wann
      end 

cccc 
cccc      This subroutine is adapted from the OCMIP program 
cccc      (updated and extended by Christoph Voelker)   
cccc
      Real*8 function schmidt_number(tc)
c--------------------------------------------------------------------------
c calculates polynomial approximation to Schmidt number
c for seawater (at salinity = 35 psu) after Wanninkhof (1992),
c table A1
c
      Real*8 tc
      schmidt_number = 2073.1 - 125.62*tc + 3.6276*tc*tc - 
     &                 4.3219e-2*tc*tc*tc
      end 
