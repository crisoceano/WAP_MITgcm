












C$Header: /csys/software/cvsroot/REcoM/pkg/recom/recom_readparms.F,v 1.16 2008/04/17 14:25:51 mlosch Exp $
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
CML#include "GCHEM_OPTIONS.h"
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
C $Header: /u/gcmpack/MITgcm/model/inc/CPP_OPTIONS.h,v 1.31 2004/04/05 23:42:52 jmc Exp $
C $Name:  $


C $Header: /u/gcmpack/MITgcm/verification/lab_sea/code/ECCO_CPPOPTIONS.h,v 1.6 2004/03/17 23:30:51 dimitri Exp $
C $Name:  $


C $Header: /u/gcmpack/MITgcm/model/inc/CPP_OPTIONS.h,v 1.31 2004/04/05 23:42:52 jmc Exp $
C $Name:  $



C CPP flags controlling which code is included in the files that
C will be compiled.
C

C ********************************************************************
C ***             External forcing Package                         ***
C ********************************************************************
C 

C   Do more printout for the protocol file than usual.

C   Options that are required to use pkg/exf with pkg/seaice.

C   Relaxation to monthly climatologies.
                                                                                  
C   Use spatial interpolation to interpolate
C   forcing files from input grid to model grid.
C   runoff is a special case for which one might want to bypass
C   interpolation from an input grid
C# define USE_NO_INTERP_RUNOFF


      SUBROUTINE RECOM_READPARMS( myThid )
C=================================================================

      implicit none
C$Header: /csys/software/cvsroot/REcoM/pkg/recom/RECOM_PARAMS.h,v 1.19 2008/04/17 14:25:51 mlosch Exp $
C$Name:  $
C
C   model run identification: 
C
C     attenuation coefficient [m^{-1}]
C      Real*8 kappa
C     chlorophyll specific attenuation coefficients [m^{-1} (mg CHL)^{-1}]
      Real*8 a_chl
 
C-----
C (small) phytoplankton parameters
C-----
C     photosynth_growth
C     CHL-specific intial slope of P-I curve, unit depends on unit of 
C     radiation   
      Real*8 alpha             
C     Temperature dependent maximum of C-specific rate of photosynthesis [d^{-1}] 
      Real*8 P_cm
C     CO2 sensitivity of photosynthesis: not used so far!
      Real*8 k_CO2 
C     photosynth_growth

C     N_utilization
C     Half-saturation constant for nitrate uptake [mmol N m^{-3}] 
      Real*8 k_din
C     scaling factor for temperature dependent maximum of C-specific 
C     nitrogen uptake 
      Real*8 V_cm_fact         
C     N_utilization  

C     respi_degrad_exud
C     Maintenance respiration rate constant [d^{-1}]
      Real*8 res_phy
C     Cost of biosynthesis [mmol C (mmol N)^{-1}]   
      Real*8 biosynth
C     CHL degradation rate constant [d^{-1}]
      Real*8 deg_CHL
C     phytoplankton loss of organic N compounds [d^{-1}]
      Real*8 lossN
C     phytoplankton loss of carbon [d^{-1}]
      Real*8 lossC
C     excretion of zooplankzon 
      Real*8 lossN_z
      Real*8 lossC_z
C     respi_degrad_exud 

C-----
C Now the same parameters again for Diatoms
C-----
C     photosynth_growth
C     CHL-specific intial slope of P-I curve, unit depends on unit of 
C     radiation   
      Real*8 alpha_d             
C     Temperature dependent maximum of C-specific rate of photosynthesis [d^{-1}] 
      Real*8 P_cm_d
C     CO2 sensitivity of photosynthesis: not used so far!
      Real*8 k_CO2_d 
C     photosynth_growth

C     N_utilization
C     Half-saturation constant for nitrate uptake [mmol N m^{-3}] 
      Real*8 k_din_d
C     scaling factor for temperature dependent maximum of C-specific 
C     nitrogen uptake 
      Real*8 V_cm_fact_d         
C     N_utilization  

C     respi_degrad_exud
C     Maintenance respiration rate constant [d^{-1}]
      Real*8 res_phy_d
C     Cost of biosynthesis [mmol C (mmol N)^{-1}]   
      Real*8 biosynth_d
C     CHL degradation rate constant [d^{-1}]
      Real*8 deg_CHL_d
C     phytoplankton loss of organic N compounds [d^{-1}]
      Real*8 lossN_d
C     phytoplankton loss of carbon [d^{-1}]
      Real*8 lossC_d
C     respi_degrad_exud 


C     start remineralisation 
C     temperature dependent remineralisation rate of detritus  [d^{-1}]
      Real*8 reminN, reminC, reminSi
C     respiration by heterotrophs and mortality (loss to detritus)  [d^{-1}]
      Real*8 res_het, recip_res_het
      Real*8 loss_het
C     temperature dependent N degradation of extracellular organic N (EON) [d^{-1}]
      Real*8 rho_N
C     temperature dependent C degradation of extracellular organic C (EOC) [d^{-1}]
      Real*8 rho_C1
C     temperature dependent C degradation of TEP-C [d^{-1}]
      Real*8 rho_C2
C     end remineralisation 

C     start grazing&aggregation
C------------------------------------
C The following 2 Variables are only used when 2 classes of phytoplanton are around. 
C Nevertheless we define them here in any case
C     (maximum) diatom preference [dimensionless, smaller than 1]
      Real*8 pzdia 
C     half-saturation parameter for grazing preference for diatoms [(mmol N m^{-3})^2]
      Real*8 sdiasq
C------------------------------------
C     maximum grazing loss parameter [mmol N m^{-3} d^{-1}] 
      Real*8 graz_max
C     half saturation grazing loss [mmol N^{2} m^{-6}]
      Real*8 epsilon
C     grazing efficiency (fraction of grazing flux into zooplankton pool)
      Real*8 grazEff
C     maximum aggregation loss parameters [m^{3} mmol N^{-1} d^{-1}]
      Real*8 agg_PP, agg_PD
CMLC     half saturation parameter for collision and stickiness probability 
CMLC     (TEP dependend) [mmol C m^{-3}] (TEP-C concentration) 
CML      Real*8 k_TEP
C     phytoplankton sinking velocity [m/d]
      Real*8 Vphy
      Real*8 Vdia
C     sinking velocity of detritus [m/d]
      Real*8 Vdet
C------------------------------------------------------
C The following 2 variables are only used when vertically increasing 
C detritus sinking speed is being used
CTW   increaing  sinking velocity of detritus [d^{-1};m/d]
      Real*8 Vdet_a
      Real*8 Vdet_b
C-------------------------------------------------------
C     decay rate of detritus in the benthic layers [d^{-1}]
      Real*8 decayRateBenN
      Real*8 decayRateBenC
      Real*8 decayRateBenSi
      Real*8 decayRateBenCa
C     end grazing&aggregation

C     start TEP stuff  
C     TEP fraction (f_TEP-x) found in POM, dimensionless
      Real*8 f_TEP, x
C     stickiness for PCHO-PCHO 
      Real*8 agg_PCHO 
C     stickiness for TEP-PCHO 
      Real*8 agg_TEP
C     end TEP stuff
   
C     start silica parameters
C     Cost of biosynthesis [mmol C (mmol Si)^{-1}]   
      Real*8 biosynthSi
C     silica saturation constant [mmol Si m^{-3}]
      Real*8 k_Si
C     minimum Si:N ratio 
      Real*8     SiNmin
C     maximum Si:N ratio 
      Real*8     SiNmax
C     minimum Si:C ratio 
      Real*8     SiCmin
C     maximum Si:C ratio 
      Real*8     SiCmax
      Real*8     SiCuptakeRatio
C     end silica and iron related parameters
      logical  FeLimit       
C     iron to carbon ratio [micromol Fe mmol C^{-1}
      Real*8     Fe2N
      Real*8     Fe2N_benthos
C     iron to carbon ration [micromol Fe mmol C^{-1}
      Real*8     Fe2N_d
C     iron saturation constant [micromol m^{-3}]
      Real*8     k_Fe
C     iron saturation constant [micromol m^{-3}]
      Real*8     k_Fe_d
C     start iron chemistry parameters [d^{-1}] [order 0.0005-0.005 per day]
      Real*8     kScavFe
C     total free ligand [mumol m^{-3}] [order 1]
      Real*8     totalLigand
C     ligand-free iron stability constanty [m^{3}/mumol] [order 100]
      Real*8     ligandStabConst
C     end iron chemistry parameters
C     some external parameters (irrelevant to recom_sms and below
C     deviation from Si2N for initial conditions  
      Real*8     ini_Si
C     nmol Fe m^{-3} initial in upper 3 layers
      Real*8     ini_Fe

      
C     factor for initialisation (only relevant for mesocosm simulations)
      Real*8 ini  

C     start fixed parameters 
C     [m^{-1}] attenuation due to water 
      Real*8 k_w
C     slope of the linear part of the Arrhenius function [Kelvin]
      Real*8 Ae
C     Reference temperature [Kelvin]
      Real*8 recom_Tref

C-----
C small phytoplanton quota 
C-----
C     Minimum cell quota of nitrogen (N:C) [mmol N (mmol C)^{-1}]
      Real*8 NCmin
C     Maximum cell quota of nitrogen (N:C) [mmol N (mmol C)^{-1}]
      Real*8 NCmax
      Real*8 NCuptakeRatio
C     Maximum CHL a : N ratio [mg CHL (mmol N)^{-1}] = 0.3 gCHL gN^-1
      Real*8 CHL_N_max
C-----
C diatom quota 
C-----
C     Minimum cell quota of nitrogen (N:C) [mmol N (mmol C)^{-1}]
      Real*8 NCmin_d
C     Maximum cell quota of nitrogen (N:C) [mmol N (mmol C)^{-1}]
      Real*8 NCmax_d
      Real*8 NCuptakeRatio_d
C     Maximum CHL a : N ratio [mg CHL (mmol N)^{-1}] = 0.3 gCHL gN^-1
      Real*8 CHL_N_max_d

C     constant Redfield C:N ratio 
      Real*8 redfield
C     slopes for limiting functions
      Real*8 NMinSlope
      Real*8 NMaxSlope
      Real*8 SiMinSlope
      Real*8 SiMaxSlope

      Real*8 calc_prod_ratio 
      Real*8 calc_diss_guts
      Real*8 calc_diss_rate

C     lower limit for variables (sometimes it is necessary for numerical
C     stability reasons to increase this to 1e-8 or even 1e-6 )
      Real*8 tiny              

C     some model parameters  
C     ---------------------

CML      Real*8    dt             ! time step within REcoM unit 'day'
C     internal biological loop size (the model is stepped bio_step times 
C     during one physical time step
      integer bio_step
CML      integer bgc_num        ! total number of biochemical variables

C     parameters
      Real*8 c0, c1, p5, c2 
      parameter ( c0 = 0.d0, c1 = 1.d0, p5 = 0.5d0, c2 = 2.d0 )
C     seconds
      Real*8 one_day           
      parameter ( one_day = 86400. ) 
C     seconds
      Real*8 one_hour          
      parameter ( one_hour = 3600. )
C     celsius2K:: conversion of Celsius into Kelvin
      Real*8 recom_celsius2K
      parameter ( recom_celsius2K = 273.15 )

      integer unset_integer
      parameter ( unset_integer = 123456789 )
      Real*8    unset_real   
      parameter ( unset_real    = 123456.789)

      logical useReminSiT
      logical TEPaggregation
      logical EvansParslow
      logical SINKadv
      logical benthicLayer
      logical write_flag

      COMMON /RECOM_INTERNAL_PARM_L/
     &                     useReminSiT,
     &                     TEPaggregation,
     &                     EvansParslow,
     &                     SINKadv,  
     &                     benthicLayer, 
     &                     FeLimit, 
     &                     write_flag
      
      COMMON /RECOM_INTERNAL_PARM_R/
     &                     a_chl,  
     &                     alpha,
     &                     P_cm,
     &                     k_din,
     &                     V_cm_fact,
     &                     res_phy,
     &                     deg_CHL,
     &                     lossN,
     &                     lossC,
     &                     alpha_d,
     &                     P_cm_d,
     &                     k_din_d,
     &                     V_cm_fact_d,
     &                     res_phy_d,
     &                     deg_CHL_d,
     &                     lossN_d,
     &                     lossC_d,
     &                     rho_N,
     &                     rho_C1,
     &                     rho_C2,
     &                     lossN_z,
     &                     lossC_z,
     &                     decayRateBenN,
     &                     decayRateBenC,
     &                     decayRateBenSi,
     &                     decayRateBenCa,
     &                     f_TEP, 
     &                     x,
     &                     agg_PCHO, 
     &                     agg_TEP,
     &                     agg_PD,
     &                     agg_PP,
     &                     reminN,
     &                     reminC,
     &                     res_het,
     &                     recip_res_het,
     &                     loss_het,
     &                     pzdia, 
     &                     sdiasq,
     &                     graz_max,
     &                     epsilon,
     &                     grazEff,
     &                     Vphy,
     &                     Vdia,
     &                     Vdet,
     &                     Vdet_a,
     &                     Vdet_b, 
     &                     k_CO2,
     &                     ini,
     &                     biosynth,
     &                     biosynthSi,
     &                     k_w,
     &                     Ae,
     &                     recom_Tref, 
     &                     redfield,  
     &                     NCuptakeRatio, NCmax, NCmin,
     &                     CHL_N_max, 
     &                     NCuptakeRatio_d, NCmax_d, NCmin_d,
     &                     CHL_N_max_d, 
     &                     k_Si,
     &                     reminSi,
     &                     SiNmin, SiNmax,
     &                     SiCmin, SiCmax, SiCuptakeRatio,
     &                     Fe2N,
     &                     Fe2N_benthos,
     &                     Fe2N_d,
     &                     k_Fe, 
     &                     k_Fe_d, 
     &                     kScavFe,
     &                     totalLigand,
     &                     ligandStabConst,
     &                     ini_Si,
     &                     ini_Fe,
     &                     NMinSlope, NMaxSlope, SiMinSlope, SiMaxSlope,
     &                     calc_prod_ratio, 
     &                     calc_diss_guts,
     &                     calc_diss_rate,
     &                     tiny
      
      COMMON /RECOM_INTERNAL_PARM_I/
     &     bio_step




C $Header: /u/gcmpack/MITgcm/verification/global_ocean.90x40x15/code/SIZE.h,v 1.4 2003/12/10 16:25:57 adcroft Exp $
C $Name:  $

C
C     /==========================================================C     | SIZE.h Declare size of underlying computational grid.    |
C     |==========================================================|
C     | The design here support a three-dimensional model grid   |
C     | with indices I,J and K. The three-dimensional domain     |
C     | is comprised of nPx*nSx blocks of size sNx along one axis|
C     | nPy*nSy blocks of size sNy along another axis and one    |
C     | block of size Nz along the final axis.                   |
C     | Blocks have overlap regions of size OLx and OLy along the|
C     | dimensions that are subdivided.                          |
C     \==========================================================/
C     Voodoo numbers controlling data layout.
C     sNx - No. X points in sub-grid.
C     sNy - No. Y points in sub-grid.
C     OLx - Overlap extent in X.
C     OLy - Overlat extent in Y.
C     nSx - No. sub-grids in X.
C     nSy - No. sub-grids in Y.
C     nPx - No. of processes to use in X.
C     nPy - No. of processes to use in Y.
C     Nx  - No. points in X for the total domain.
C     Ny  - No. points in Y for the total domain.
C     Nr  - No. points in Z for full process domain.
      INTEGER sNx
      INTEGER sNy
      INTEGER OLx
      INTEGER OLy
      INTEGER nSx
      INTEGER nSy
      INTEGER nPx
      INTEGER nPy
      INTEGER Nx
      INTEGER Ny
      INTEGER Nr
      PARAMETER (
     &           sNx =  25,
     &           sNy =  30,
     &           OLx =   4,
     &           OLy =   4,
     &           nSx =   1,
     &           nSy =   1,
     &           nPx =   8,
     &           nPy =   8,
     &           Nx  = sNx*nSx*nPx,
     &           Ny  = sNy*nSy*nPy,
     &           Nr  =  50)

C     MAX_OLX  - Set to the maximum overlap region size of any array
C     MAX_OLY    that will be exchanged. Controls the sizing of exch
C                routine buufers.
      INTEGER MAX_OLX
      INTEGER MAX_OLY
      PARAMETER ( MAX_OLX = OLx,
     &            MAX_OLY = OLy )

C $Header: /u/gcmpack/MITgcm/eesupp/inc/EEPARAMS.h,v 1.29 2010/10/05 17:43:40 mlosch Exp $
C $Name: checkpoint62r $
CBOP
C     !ROUTINE: EEPARAMS.h
C     !INTERFACE:
C     include "EEPARAMS.h"
C
C     !DESCRIPTION:
C     *==========================================================*
C     | EEPARAMS.h                                               |
C     *==========================================================*
C     | Parameters for "execution environemnt". These are used   |
C     | by both the particular numerical model and the execution |
C     | environment support routines.                            |
C     *==========================================================*
CEOP

C     ========  EESIZE.h  ========================================

C     MAX_LEN_MBUF  - Default message buffer max. size
C     MAX_LEN_FNAM  - Default file name max. size
C     MAX_LEN_PREC  - Default rec len for reading "parameter" files

      INTEGER MAX_LEN_MBUF
      PARAMETER ( MAX_LEN_MBUF = 512 )
      INTEGER MAX_LEN_FNAM
      PARAMETER ( MAX_LEN_FNAM = 512 )
      INTEGER MAX_LEN_PREC
      PARAMETER ( MAX_LEN_PREC = 200 )

C     MAX_NO_THREADS  - Maximum number of threads allowed.
C     MAX_NO_PROCS    - Maximum number of processes allowed.
C     MAX_NO_BARRIERS - Maximum number of distinct thread "barriers"
      INTEGER MAX_NO_THREADS
      PARAMETER ( MAX_NO_THREADS =  4 )
      INTEGER MAX_NO_PROCS
      PARAMETER ( MAX_NO_PROCS   =  4096 )
      INTEGER MAX_NO_BARRIERS
      PARAMETER ( MAX_NO_BARRIERS = 1 )

C     Particularly weird and obscure voodoo numbers
C     lShare  - This wants to be the length in
C               [148]-byte words of the size of
C               the address "window" that is snooped
C               on an SMP bus. By separating elements in
C               the global sum buffer we can avoid generating
C               extraneous invalidate traffic between
C               processors. The length of this window is usually
C               a cache line i.e. small O(64 bytes).
C               The buffer arrays are usually short arrays
C               and are declared REAL ARRA(lShare[148],LBUFF).
C               Setting lShare[148] to 1 is like making these arrays
C               one dimensional.
      INTEGER cacheLineSize
      INTEGER lShare1
      INTEGER lShare4
      INTEGER lShare8
      PARAMETER ( cacheLineSize = 256 )
      PARAMETER ( lShare1 =  cacheLineSize )
      PARAMETER ( lShare4 =  cacheLineSize/4 )
      PARAMETER ( lShare8 =  cacheLineSize/8 )

      INTEGER MAX_VGS
      PARAMETER ( MAX_VGS = 8192 )

C     ========  EESIZE.h  ========================================


C     Symbolic values
C     precXXXX :: precision used for I/O
      INTEGER precFloat32
      PARAMETER ( precFloat32 = 32 )
      INTEGER precFloat64
      PARAMETER ( precFloat64 = 64 )

C     UNSET_xxx :: Used to indicate variables that have not been given a value
      Real*8  UNSET_FLOAT8
      PARAMETER ( UNSET_FLOAT8 = 1.234567D5 )
      Real*4  UNSET_FLOAT4
      PARAMETER ( UNSET_FLOAT4 = 1.234567E5 )
      Real*8     UNSET_RL
      PARAMETER ( UNSET_RL     = 1.234567D5 )
      Real*8     UNSET_RS
      PARAMETER ( UNSET_RS     = 1.234567D5 )
      INTEGER UNSET_I
      PARAMETER ( UNSET_I      = 123456789  )

C     debLevX  :: used to decide when to print debug messages
      INTEGER debLevZero
      PARAMETER ( debLevZero=0 )
      INTEGER debLevA
      PARAMETER ( debLevA=1 )
      INTEGER debLevB
      PARAMETER ( debLevB=2 )

C     SQUEEZE_RIGHT       - Flag indicating right blank space removal
C                           from text field.
C     SQUEEZE_LEFT        - Flag indicating left blank space removal
C                           from text field.
C     SQUEEZE_BOTH        - Flag indicating left and right blank
C                           space removal from text field.
C     PRINT_MAP_XY        - Flag indicating to plot map as XY slices
C     PRINT_MAP_XZ        - Flag indicating to plot map as XZ slices
C     PRINT_MAP_YZ        - Flag indicating to plot map as YZ slices
C     commentCharacter    - Variable used in column 1 of parameter
C                           files to indicate comments.
C     INDEX_I             - Variable used to select an index label
C     INDEX_J               for formatted input parameters.
C     INDEX_K
C     INDEX_NONE
      CHARACTER*(*) SQUEEZE_RIGHT
      PARAMETER ( SQUEEZE_RIGHT = 'R' )
      CHARACTER*(*) SQUEEZE_LEFT
      PARAMETER ( SQUEEZE_LEFT = 'L' )
      CHARACTER*(*) SQUEEZE_BOTH
      PARAMETER ( SQUEEZE_BOTH = 'B' )
      CHARACTER*(*) PRINT_MAP_XY
      PARAMETER ( PRINT_MAP_XY = 'XY' )
      CHARACTER*(*) PRINT_MAP_XZ
      PARAMETER ( PRINT_MAP_XZ = 'XZ' )
      CHARACTER*(*) PRINT_MAP_YZ
      PARAMETER ( PRINT_MAP_YZ = 'YZ' )
      CHARACTER*(*) commentCharacter
      PARAMETER ( commentCharacter = '#' )
      INTEGER INDEX_I
      INTEGER INDEX_J
      INTEGER INDEX_K
      INTEGER INDEX_NONE
      PARAMETER ( INDEX_I    = 1,
     &            INDEX_J    = 2,
     &            INDEX_K    = 3,
     &            INDEX_NONE = 4 )

C     EXCH_IGNORE_CORNERS - Flag to select ignoring or
C     EXCH_UPDATE_CORNERS   updating of corners during
C                           an edge exchange.
      INTEGER EXCH_IGNORE_CORNERS
      INTEGER EXCH_UPDATE_CORNERS
      PARAMETER ( EXCH_IGNORE_CORNERS = 0,
     &            EXCH_UPDATE_CORNERS = 1 )

C     FORWARD_SIMULATION
C     REVERSE_SIMULATION
C     TANGENT_SIMULATION
      INTEGER FORWARD_SIMULATION
      INTEGER REVERSE_SIMULATION
      INTEGER TANGENT_SIMULATION
      PARAMETER ( FORWARD_SIMULATION = 0,
     &            REVERSE_SIMULATION = 1,
     &            TANGENT_SIMULATION = 2 )

C--   COMMON /EEPARAMS_L/ Execution environment public logical variables.
C     eeBootError    :: Flags indicating error during multi-processing
C     eeEndError     :: initialisation and termination.
C     fatalError     :: Flag used to indicate that the model is ended with an error
C     useSingleCpuIO :: When useSingleCpuIO is set, MDS_WRITE_FIELD outputs from
C                       master MPI process only. -- NOTE: read from main parameter
C                       file "data" and not set until call to INI_PARMS.
C     printMapIncludesZeros  :: Flag that controls whether character constant
C                               map code ignores exact zero values.
C     useCubedSphereExchange :: use Cubed-Sphere topology domain.
C     useCoupler     :: use Coupler for a multi-components set-up.
C     useNEST_PARENT :: use Parent Nesting interface (pkg/nest_parent)
C     useNEST_CHILD  :: use Child  Nesting interface (pkg/nest_child)
C     useOASIS       :: use OASIS-coupler for a multi-components set-up.
      COMMON /EEPARAMS_L/
     &  eeBootError, fatalError, eeEndError,
     &  useSingleCpuIO, printMapIncludesZeros,
     &  useCubedSphereExchange, useCoupler,
     &  useNEST_PARENT, useNEST_CHILD, useOASIS,
     &  useSETRLSTK, useSIGREG
      LOGICAL eeBootError
      LOGICAL eeEndError
      LOGICAL fatalError
      LOGICAL useSingleCpuIO
      LOGICAL printMapIncludesZeros
      LOGICAL useCubedSphereExchange
      LOGICAL useCoupler
      LOGICAL useNEST_PARENT
      LOGICAL useNEST_CHILD
      LOGICAL useOASIS
      LOGICAL useSETRLSTK
      LOGICAL useSIGREG

C--   COMMON /EPARAMS_I/ Execution environment public integer variables.
C     errorMessageUnit    - Fortran IO unit for error messages
C     standardMessageUnit - Fortran IO unit for informational messages
C     maxLengthPrt1D :: maximum length for printing (to Std-Msg-Unit) 1-D array
C     scrUnit1      - Scratch file 1 unit number
C     scrUnit2      - Scratch file 2 unit number
C     eeDataUnit    - Unit # for reading "execution environment" parameter file.
C     modelDataUnit - Unit number for reading "model" parameter file.
C     numberOfProcs - Number of processes computing in parallel
C     pidIO         - Id of process to use for I/O.
C     myBxLo, myBxHi - Extents of domain in blocks in X and Y
C     myByLo, myByHi   that each threads is responsble for.
C     myProcId      - My own "process" id.
C     myPx     - My X coord on the proc. grid.
C     myPy     - My Y coord on the proc. grid.
C     myXGlobalLo - My bottom-left (south-west) x-index
C                   global domain. The x-coordinate of this
C                   point in for example m or degrees is *not*
C                   specified here. A model needs to provide a
C                   mechanism for deducing that information if it
C                   is needed.
C     myYGlobalLo - My bottom-left (south-west) y-index in
C                   global domain. The y-coordinate of this
C                   point in for example m or degrees is *not*
C                   specified here. A model needs to provide a
C                   mechanism for deducing that information if it
C                   is needed.
C     nThreads    - No. of threads
C     nTx         - No. of threads in X
C     nTy         - No. of threads in Y
C                   This assumes a simple cartesian
C                   gridding of the threads which is not required elsewhere
C                   but that makes it easier.
C     ioErrorCount - IO Error Counter. Set to zero initially and increased
C                    by one every time an IO error occurs.
      COMMON /EEPARAMS_I/
     &  errorMessageUnit, standardMessageUnit, maxLengthPrt1D,
     &  scrUnit1, scrUnit2, eeDataUnit, modelDataUnit,
     &  numberOfProcs, pidIO, myProcId,
     &  myPx, myPy, myXGlobalLo, myYGlobalLo, nThreads,
     &  myBxLo, myBxHi, myByLo, myByHi,
     &  nTx, nTy, ioErrorCount
      INTEGER errorMessageUnit
      INTEGER standardMessageUnit
      INTEGER maxLengthPrt1D
      INTEGER scrUnit1
      INTEGER scrUnit2
      INTEGER eeDataUnit
      INTEGER modelDataUnit
      INTEGER ioErrorCount(MAX_NO_THREADS)
      INTEGER myBxLo(MAX_NO_THREADS)
      INTEGER myBxHi(MAX_NO_THREADS)
      INTEGER myByLo(MAX_NO_THREADS)
      INTEGER myByHi(MAX_NO_THREADS)
      INTEGER myProcId
      INTEGER myPx
      INTEGER myPy
      INTEGER myXGlobalLo
      INTEGER myYGlobalLo
      INTEGER nThreads
      INTEGER nTx
      INTEGER nTy
      INTEGER numberOfProcs
      INTEGER pidIO

CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/model/inc/PARAMS.h,v 1.246 2010/12/24 21:48:39 jmc Exp $
C $Name: checkpoint62r $
C

CBOP
C     !ROUTINE: PARAMS.h
C     !INTERFACE:
C     #include PARAMS.h

C     !DESCRIPTION:
C     Header file defining model "parameters".  The values from the
C     model standard input file are stored into the variables held
C     here. Notes describing the parameters can also be found here.

CEOP

C     Macros for special grid options
C $Header: /u/gcmpack/MITgcm/model/inc/PARAMS_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: PARAMS_MACROS.h
C    !INTERFACE:
C    include PARAMS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | PARAMS_MACROS.h                                           
C     *==========================================================*
C     | These macros are used to substitute definitions for       
C     | PARAMS.h variables for particular configurations.         
C     | In setting these variables the following convention       
C     | applies.                                                  
C     | define phi_CONST   - Indicates the variable phi is fixed  
C     |                      in X, Y and Z.                       
C     | define phi_FX      - Indicates the variable phi only      
C     |                      varies in X (i.e.not in X or Z).     
C     | define phi_FY      - Indicates the variable phi only      
C     |                      varies in Y (i.e.not in X or Z).     
C     | define phi_FXY     - Indicates the variable phi only      
C     |                      varies in X and Y ( i.e. not Z).     
C     *==========================================================*
C     \ev
CEOP

C $Header: /u/gcmpack/MITgcm/model/inc/FCORI_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: FCORI_MACROS.h
C    !INTERFACE:
C    include FCORI_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | FCORI_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C--   Contants
C     Useful physical values
      Real*8 PI
      PARAMETER ( PI    = 3.14159265358979323844d0   )
      Real*8 deg2rad
      PARAMETER ( deg2rad = 2.d0*PI/360.d0           )

C--   COMMON /PARM_C/ Character valued parameters used by the model.
C     buoyancyRelation :: Flag used to indicate which relation to use to
C                         get buoyancy.
C     eosType         :: choose the equation of state:
C                        LINEAR, POLY3, UNESCO, JMD95Z, JMD95P, MDJWF, IDEALGAS
C     pickupSuff      :: force to start from pickup files (even if nIter0=0)
C                        and read pickup files with this suffix (max 10 Char.)
C     mdsioLocalDir   :: read-write tiled file from/to this directory name
C                        (+ 4 digits Processor-Rank) instead of current dir.
C     adTapeDir       :: read-write checkpointing tape files from/to this
C                        directory name instead of current dir. Conflicts
C                        mdsioLocalDir, so only one of the two can be set.
C                        In contrast to mdsioLocalDir, if specified adTapeDir
C                        must exist before the model starts.
C     tRefFile      :: File containing reference Potential Temperat.  tRef (1.D)
C     sRefFile      :: File containing reference salinity/spec.humid. sRef (1.D)
C     rhoRefFile    :: File containing reference density profile rhoRef (1.D)
C     delRFile      :: File containing vertical grid spacing delR  (1.D array)
C     delRcFile     :: File containing vertical grid spacing delRc (1.D array)
C     hybSigmFile   :: File containing hybrid-sigma vertical coord. coeff. (2x 1.D)
C     delXFile      :: File containing X-spacing grid definition (1.D array)
C     delYFile      :: File containing Y-spacing grid definition (1.D array)
C     horizGridFile :: File containing horizontal-grid definition
C                        (only when using curvilinear_grid)
C     bathyFile       :: File containing bathymetry. If not defined bathymetry
C                        is taken from inline function.
C     topoFile        :: File containing the topography of the surface (unit=m)
C                        (mainly used for the atmosphere = ground height).
C     hydrogThetaFile :: File containing initial hydrographic data (3-D)
C                        for potential temperature.
C     hydrogSaltFile  :: File containing initial hydrographic data (3-D)
C                        for salinity.
C     diffKrFile      :: File containing 3D specification of vertical diffusivity
C     viscAhDfile     :: File containing 3D specification of horizontal viscosity
C     viscAhZfile     :: File containing 3D specification of horizontal viscosity
C     viscA4Dfile     :: File containing 3D specification of horizontal viscosity
C     viscA4Zfile     :: File containing 3D specification of horizontal viscosity
C     zonalWindFile   :: File containing zonal wind data
C     meridWindFile   :: File containing meridional wind data
C     thetaClimFile   :: File containing surface theta climataology used
C                       in relaxation term -lambda(theta-theta*)
C     saltClimFile    :: File containing surface salt climataology used
C                       in relaxation term -lambda(salt-salt*)
C     surfQfile       :: File containing surface heat flux, excluding SW
C                        (old version, kept for backward compatibility)
C     surfQnetFile    :: File containing surface net heat flux
C     surfQswFile     :: File containing surface shortwave radiation
C     dQdTfile        :: File containing thermal relaxation coefficient
C     EmPmRfile       :: File containing surface fresh water flux
C           NOTE: for backward compatibility EmPmRfile is specified in
C                 m/s when using external_fields_load.F.  It is converted
C                 to kg/m2/s by multiplying by rhoConstFresh.
C     saltFluxFile    :: File containing surface salt flux
C     pLoadFile       :: File containing pressure loading
C     eddyPsiXFile    :: File containing zonal Eddy streamfunction data
C     eddyPsiYFile    :: File containing meridional Eddy streamfunction data
C     the_run_name    :: string identifying the name of the model "run"
      COMMON /PARM_C/
     &                buoyancyRelation, eosType,
     &                pickupSuff, mdsioLocalDir, adTapeDir,
     &                tRefFile, sRefFile, rhoRefFile,
     &                delRFile, delRcFile, hybSigmFile,
     &                delXFile, delYFile, horizGridFile,
     &                bathyFile, topoFile,
     &                viscAhDfile, viscAhZfile,
     &                viscA4Dfile, viscA4Zfile,
     &                hydrogThetaFile, hydrogSaltFile, diffKrFile,
     &                zonalWindFile, meridWindFile, thetaClimFile,
     &                saltClimFile,
     &                EmPmRfile, saltFluxFile,
     &                surfQfile, surfQnetFile, surfQswFile,
     &                lambdaThetaFile, lambdaSaltFile,
     &                uVelInitFile, vVelInitFile, pSurfInitFile,
     &                dQdTfile, ploadFile,
     &                eddyPsiXFile, eddyPsiYFile,
     &                the_run_name
      CHARACTER*(MAX_LEN_FNAM) buoyancyRelation
      CHARACTER*(6)  eosType
      CHARACTER*(10) pickupSuff
      CHARACTER*(MAX_LEN_FNAM) mdsioLocalDir
      CHARACTER*(MAX_LEN_FNAM) adTapeDir
      CHARACTER*(MAX_LEN_FNAM) tRefFile
      CHARACTER*(MAX_LEN_FNAM) sRefFile
      CHARACTER*(MAX_LEN_FNAM) rhoRefFile
      CHARACTER*(MAX_LEN_FNAM) delRFile
      CHARACTER*(MAX_LEN_FNAM) delRcFile
      CHARACTER*(MAX_LEN_FNAM) hybSigmFile
      CHARACTER*(MAX_LEN_FNAM) delXFile
      CHARACTER*(MAX_LEN_FNAM) delYFile
      CHARACTER*(MAX_LEN_FNAM) horizGridFile
      CHARACTER*(MAX_LEN_FNAM) bathyFile, topoFile
      CHARACTER*(MAX_LEN_FNAM) hydrogThetaFile, hydrogSaltFile
      CHARACTER*(MAX_LEN_FNAM) diffKrFile
      CHARACTER*(MAX_LEN_FNAM) viscAhDfile
      CHARACTER*(MAX_LEN_FNAM) viscAhZfile
      CHARACTER*(MAX_LEN_FNAM) viscA4Dfile
      CHARACTER*(MAX_LEN_FNAM) viscA4Zfile
      CHARACTER*(MAX_LEN_FNAM) zonalWindFile
      CHARACTER*(MAX_LEN_FNAM) meridWindFile
      CHARACTER*(MAX_LEN_FNAM) thetaClimFile
      CHARACTER*(MAX_LEN_FNAM) saltClimFile
      CHARACTER*(MAX_LEN_FNAM) surfQfile
      CHARACTER*(MAX_LEN_FNAM) surfQnetFile
      CHARACTER*(MAX_LEN_FNAM) surfQswFile
      CHARACTER*(MAX_LEN_FNAM) EmPmRfile
      CHARACTER*(MAX_LEN_FNAM) saltFluxFile
      CHARACTER*(MAX_LEN_FNAM) uVelInitFile
      CHARACTER*(MAX_LEN_FNAM) vVelInitFile
      CHARACTER*(MAX_LEN_FNAM) pSurfInitFile
      CHARACTER*(MAX_LEN_FNAM) dQdTfile
      CHARACTER*(MAX_LEN_FNAM) ploadFile
      CHARACTER*(MAX_LEN_FNAM) eddyPsiXFile
      CHARACTER*(MAX_LEN_FNAM) eddyPsiYFile
      CHARACTER*(MAX_LEN_FNAM) lambdaThetaFile
      CHARACTER*(MAX_LEN_FNAM) lambdaSaltFile
      CHARACTER*(MAX_LEN_PREC/2) the_run_name

C--   COMMON /PARM_I/ Integer valued parameters used by the model.
C     cg2dMaxIters        :: Maximum number of iterations in the
C                           two-dimensional con. grad solver.
C     cg2dChkResFreq      :: Frequency with which to check residual
C                           in con. grad solver.
C     cg2dPreCondFreq     :: Frequency for updating cg2d preconditioner
C                            (non-linear free-surf.)
C     cg3dMaxIters        :: Maximum number of iterations in the
C                           three-dimensional con. grad solver.
C     cg3dChkResFreq      :: Frequency with which to check residual
C                           in con. grad solver.
C     nIter0              :: Start time-step number of for this run
C     nTimeSteps          :: Number of timesteps to execute
C     writeStatePrec      :: Precision used for writing model state.
C     writeBinaryPrec     :: Precision used for writing binary files
C     readBinaryPrec      :: Precision used for reading binary files
C     selectCoriMap       :: select setting of Coriolis parameter map:
C                           =0 f-Plane (Constant Coriolis, = f0)
C                           =1 Beta-Plane Coriolis (= f0 + beta.y)
C                           =2 Spherical Coriolis (= 2.omega.sin(phi))
C                           =3 Read Coriolis 2-d fields from files.
C     selectSigmaCoord    :: option related to sigma vertical coordinate
C     nonlinFreeSurf      :: option related to non-linear free surface
C                           =0 Linear free surface ; >0 Non-linear
C     select_rStar        :: option related to r* vertical coordinate
C                           =0 (default) use r coord. ; > 0 use r*
C     selectNHfreeSurf    :: option for Non-Hydrostatic (free-)Surface formulation:
C                           =0 (default) hydrostatic surf. ; > 0 add NH effects.
C     selectAddFluid      :: option to add mass source/sink of fluid in the interior
C                            (3-D generalisation of oceanic real-fresh water flux)
C                           =0 off ; =1 add fluid ; =-1 virtual flux (no mass added)
C     momForcingOutAB     :: =1: take momentum forcing contribution
C                           out of (=0: in) Adams-Bashforth time stepping.
C     tracForcingOutAB    :: =1: take tracer (Temp,Salt,pTracers) forcing contribution
C                           out of (=0: in) Adams-Bashforth time stepping.
C     tempAdvScheme       :: Temp. Horiz.Advection scheme selector
C     tempVertAdvScheme   :: Temp. Vert. Advection scheme selector
C     saltAdvScheme       :: Salt. Horiz.advection scheme selector
C     saltVertAdvScheme   :: Salt. Vert. Advection scheme selector
C     selectKEscheme      :: Kinetic Energy scheme selector (Vector Inv.)
C     selectVortScheme    :: Scheme selector for Vorticity term (Vector Inv.)
C     monitorSelect       :: select group of variables to monitor
C                            =1 : dynvars ; =2 : + vort ; =3 : + surface
C-    debugLevel          :: controls printing of algorithm intermediate results
C                            and statistics ; higher -> more writing

      COMMON /PARM_I/
     &        cg2dMaxIters,
     &        cg2dChkResFreq, cg2dPreCondFreq,
     &        cg3dMaxIters,
     &        cg3dChkResFreq,
     &        nIter0, nTimeSteps, nEndIter,
     &        writeStatePrec,
     &        writeBinaryPrec, readBinaryPrec,
     &        selectCoriMap,
     &        selectSigmaCoord,
     &        nonlinFreeSurf, select_rStar,
     &        selectNHfreeSurf,
     &        selectAddFluid,
     &        momForcingOutAB, tracForcingOutAB,
     &        tempAdvScheme, tempVertAdvScheme,
     &        saltAdvScheme, saltVertAdvScheme,
     &        selectKEscheme, selectVortScheme,
     &        monitorSelect, debugLevel
      INTEGER cg2dMaxIters
      INTEGER cg2dChkResFreq
      INTEGER cg2dPreCondFreq
      INTEGER cg3dMaxIters
      INTEGER cg3dChkResFreq
      INTEGER nIter0
      INTEGER nTimeSteps
      INTEGER nEndIter
      INTEGER writeStatePrec
      INTEGER writeBinaryPrec
      INTEGER readBinaryPrec
      INTEGER selectCoriMap
      INTEGER selectSigmaCoord
      INTEGER nonlinFreeSurf
      INTEGER select_rStar
      INTEGER selectNHfreeSurf
      INTEGER selectAddFluid
      INTEGER momForcingOutAB, tracForcingOutAB
      INTEGER tempAdvScheme, tempVertAdvScheme
      INTEGER saltAdvScheme, saltVertAdvScheme
      INTEGER selectKEscheme
      INTEGER selectVortScheme
      INTEGER monitorSelect
      INTEGER debugLevel

C--   COMMON /PARM_L/ Logical valued parameters used by the model.
C- Coordinate + Grid params:
C     fluidIsAir       :: Set to indicate that the fluid major constituent
C                        is air
C     fluidIsWater     :: Set to indicate that the fluid major constituent
C                        is water
C     usingPCoords     :: Set to indicate that we are working in a pressure
C                        type coordinate (p or p*).
C     usingZCoords     :: Set to indicate that we are working in a height
C                        type coordinate (z or z*)
C     useDynP_inEos_Zc :: use the dynamical pressure in EOS (with Z-coord.)
C                         this requires specific code for restart & exchange
C     usingCartesianGrid :: If TRUE grid generation will be in a cartesian
C                          coordinate frame.
C     usingSphericalPolarGrid :: If TRUE grid generation will be in a
C                               spherical polar frame.
C     rotateGrid      :: rotate grid coordinates to geographical coordinates
C                        according to Euler angles phiEuler, thetaEuler, psiEuler
C     usingCurvilinearGrid :: If TRUE, use a curvilinear grid (to be provided)
C     usingCylindricalGrid :: If TRUE grid generation will be Cylindrical
C     deepAtmosphere :: deep model (drop the shallow-atmosphere approximation)
C     setInterFDr    :: set Interface depth (put cell-Center at the middle)
C     setCenterDr    :: set cell-Center depth (put Interface at the middle)
C- Momentum params:
C     no_slip_sides  :: Impose "no-slip" at lateral boundaries.
C     no_slip_bottom :: Impose "no-slip" at bottom boundary.
C     useFullLeith   :: Set to true to use full Leith viscosity(may be unstable
C                       on irregular grids)
C     useStrainTensionVisc:: Set to true to use Strain-Tension viscous terms
C     useAreaViscLength :: Set to true to use old scaling for viscous lengths,
C                          e.g., L2=Raz.  May be preferable for cube sphere.
C     momViscosity  :: Flag which turns momentum friction terms on and off.
C     momAdvection  :: Flag which turns advection of momentum on and off.
C     momForcing    :: Flag which turns external forcing of momentum on
C                      and off.
C     momPressureForcing :: Flag which turns pressure term in momentum equation
C                          on and off.
C     metricTerms   :: Flag which turns metric terms on or off.
C     useNHMTerms   :: If TRUE use non-hydrostatic metric terms.
C     useCoriolis   :: Flag which turns the coriolis terms on and off.
C     use3dCoriolis :: Turns the 3-D coriolis terms (in Omega.cos Phi) on - off
C     useCDscheme   :: use CD-scheme to calculate Coriolis terms.
C     vectorInvariantMomentum :: use Vector-Invariant form (mom_vecinv package)
C                                (default = F = use mom_fluxform package)
C     useJamartWetPoints :: Use wet-point method for Coriolis (Jamart & Ozer 1986)
C     useJamartMomAdv :: Use wet-point method for V.I. non-linear term
C     upwindVorticity :: bias interpolation of vorticity in the Coriolis term
C     highOrderVorticity :: use 3rd/4th order interp. of vorticity (V.I., advection)
C     useAbsVorticity :: work with f+zeta in Coriolis terms
C     upwindShear        :: use 1rst order upwind interp. (V.I., vertical advection)
C     momStepping    :: Turns momentum equation time-stepping off
C- Temp. & Salt params:
C     tempStepping   :: Turns temperature equation time-stepping off
C     saltStepping   :: Turns salinity equation time-stepping off
C     tempAdvection  :: Flag which turns advection of temperature on and off.
C     tempIsActiveTr :: Pot.Temp. is a dynamically active tracer
C     tempForcing    :: Flag which turns external forcing of temperature on
C                       and off.
C     saltAdvection  :: Flag which turns advection of salinity on and off.
C     saltIsActiveTr :: Salinity  is a dynamically active tracer
C     saltForcing    :: Flag which turns external forcing of salinity on
C                       and off.
C     maskIniTemp    :: apply mask to initial Pot.Temp.
C     maskIniSalt    :: apply mask to initial salinity
C     checkIniTemp   :: check for points with identically zero initial Pot.Temp.
C     checkIniSalt   :: check for points with identically zero initial salinity
C     useRealFreshWaterFlux :: if True (=Natural BCS), treats P+R-E flux
C                         as a real Fresh Water (=> changes the Sea Level)
C                         if F, converts P+R-E to salt flux (no SL effect)
C- Pressure solver related parameters (PARM02)
C     useSRCGSolver  :: Set to true to use conjugate gradient
C                       solver with single reduction (only one call of
C                       s/r mpi_allreduce), default is false
C- Time-stepping params:
C     rigidLid            :: Set to true to use rigid lid
C     implicitFreeSurface :: Set to true to use implicit free surface
C     exactConserv        :: Set to true to conserve exactly the total Volume
C     linFSConserveTr     :: Set to true to correct source/sink of tracer
C                            at the surface due to Linear Free Surface
C     uniformLin_PhiSurf  :: Set to true to use a uniform Bo_surf in the
C                            linear relation Phi_surf = Bo_surf*eta
C     quasiHydrostatic :: Using non-hydrostatic terms in hydrostatic algorithm
C     nonHydrostatic   :: Using non-hydrostatic algorithm
C     use3Dsolver      :: set to true to use 3-D pressure solver
C     implicitIntGravWave :: treat Internal Gravity Wave implicitly
C     staggerTimeStep   :: enable a Stagger time stepping U,V (& W) then T,S
C     implicitDiffusion :: Turns implicit vertical diffusion on
C     implicitViscosity :: Turns implicit vertical viscosity on
C     tempImplVertAdv :: Turns on implicit vertical advection for Temperature
C     saltImplVertAdv :: Turns on implicit vertical advection for Salinity
C     momImplVertAdv  :: Turns on implicit vertical advection for Momentum
C     multiDimAdvection :: Flag that enable multi-dimension advection
C     useMultiDimAdvec  :: True if multi-dim advection is used at least once
C     momDissip_In_AB   :: if False, put Dissipation tendency contribution
C                          out off Adams-Bashforth time stepping.
C     doAB_onGtGs       :: if the Adams-Bashforth time stepping is used, always
C                          apply AB on tracer tendencies (rather than on Tracer)
C- Other forcing params -
C     balanceEmPmR    :: substract global mean of EmPmR at every time step
C     balanceQnet     :: substract global mean of Qnet at every time step
C     balancePrintMean:: print substracted global means to STDOUT
C     doThetaClimRelax :: Set true if relaxation to temperature
C                        climatology is required.
C     doSaltClimRelax  :: Set true if relaxation to salinity
C                        climatology is required.
C     allowFreezing  :: Allows surface water to freeze and form ice
C     useOldFreezing :: use the old version (before checkpoint52a_pre, 2003-11-12)
C     periodicExternalForcing :: Set true if forcing is time-dependant
C- I/O parameters -
C     globalFiles    :: Selects between "global" and "tiled" files.
C                       On some platforms with MPI, option globalFiles is either
C                       slow or does not work. Use useSingleCpuIO instead.
C     useSingleCpuIO :: moved to EEPARAMS.h
C     pickupStrictlyMatch :: check and stop if pickup-file do not stricly match
C     startFromPickupAB2 :: with AB-3 code, start from an AB-2 pickup
C     usePickupBeforeC54 :: start from old-pickup files, generated with code from
C                           before checkpoint-54a, Jul 06, 2004.
C     pickup_write_mdsio :: use mdsio to write pickups
C     pickup_read_mdsio  :: use mdsio to read  pickups
C     pickup_write_immed :: echo the pickup immediately (for conversion)
C     writePickupAtEnd   :: write pickup at the last timestep
C     timeave_mdsio      :: use mdsio for timeave output
C     snapshot_mdsio     :: use mdsio for "snapshot" (dumpfreq/diagfreq) output
C     monitor_stdio      :: use stdio for monitor output
C     dumpInitAndLast :: dumps model state to files at Initial (nIter0)
C                        & Last iteration, in addition multiple of dumpFreq iter.
C     debugMode       :: controls printing of debug msg (sequence of S/R calls).
C     printDomain     :: controls printing of domain fields (bathy, hFac ...).

      COMMON /PARM_L/
     & fluidIsAir, fluidIsWater,
     & usingPCoords, usingZCoords, useDynP_inEos_Zc,
     & usingCartesianGrid, usingSphericalPolarGrid, rotateGrid,
     & usingCurvilinearGrid, usingCylindricalGrid,
     & deepAtmosphere, setInterFDr, setCenterDr,
     & no_slip_sides, no_slip_bottom,
     & useFullLeith, useStrainTensionVisc, useAreaViscLength,
     & momViscosity, momAdvection, momForcing,
     & momPressureForcing, metricTerms, useNHMTerms,
     & useCoriolis, use3dCoriolis,
     & useCDscheme, vectorInvariantMomentum,
     & useEnergyConservingCoriolis, useJamartWetPoints, useJamartMomAdv,
     & upwindVorticity, highOrderVorticity,
     & useAbsVorticity, upwindShear,
     & momStepping, tempStepping, saltStepping,
     & tempAdvection, tempIsActiveTr, tempForcing,
     & saltAdvection, saltIsActiveTr, saltForcing,
     & maskIniTemp, maskIniSalt, checkIniTemp, checkIniSalt,
     & useRealFreshWaterFlux, useSRCGSolver,
     & rigidLid, implicitFreeSurface, exactConserv, linFSConserveTr,
     & uniformLin_PhiSurf,
     & quasiHydrostatic, nonHydrostatic,
     & use3Dsolver, implicitIntGravWave, staggerTimeStep,
     & implicitDiffusion, implicitViscosity,
     & tempImplVertAdv, saltImplVertAdv, momImplVertAdv,
     & multiDimAdvection, useMultiDimAdvec,
     & momDissip_In_AB, doAB_onGtGs,
     & balanceEmPmR, balanceQnet, balancePrintMean,
     & doThetaClimRelax, doSaltClimRelax,
     & allowFreezing, useOldFreezing,
     & periodicExternalForcing,
     & globalFiles,
     & pickupStrictlyMatch, usePickupBeforeC54, startFromPickupAB2,
     & pickup_read_mdsio, pickup_write_mdsio, pickup_write_immed,
     & writePickupAtEnd,
     & timeave_mdsio, snapshot_mdsio, monitor_stdio,
     & outputTypesInclusive, dumpInitAndLast,
     & debugMode, printDomain,
     & inAdMode, inAdTrue, inAdFalse, inAdExact

      LOGICAL fluidIsAir
      LOGICAL fluidIsWater
      LOGICAL usingPCoords
      LOGICAL usingZCoords
      LOGICAL useDynP_inEos_Zc
      LOGICAL usingCartesianGrid
      LOGICAL usingSphericalPolarGrid, rotateGrid
      LOGICAL usingCylindricalGrid
      LOGICAL usingCurvilinearGrid
      LOGICAL deepAtmosphere
      LOGICAL setInterFDr
      LOGICAL setCenterDr
      LOGICAL useNHMTerms
      LOGICAL no_slip_sides
      LOGICAL no_slip_bottom
      LOGICAL useFullLeith
      LOGICAL useStrainTensionVisc
      LOGICAL useAreaViscLength
      LOGICAL momViscosity
      LOGICAL momAdvection
      LOGICAL momForcing
      LOGICAL momPressureForcing
      LOGICAL useCoriolis
      LOGICAL vectorInvariantMomentum
      LOGICAL tempAdvection
      LOGICAL tempIsActiveTr
      LOGICAL tempForcing
      LOGICAL saltAdvection
      LOGICAL saltIsActiveTr
      LOGICAL saltForcing
      LOGICAL maskIniTemp
      LOGICAL maskIniSalt
      LOGICAL checkIniTemp
      LOGICAL checkIniSalt
      LOGICAL useRealFreshWaterFlux
      LOGICAL useSRCGSolver
      LOGICAL rigidLid
      LOGICAL implicitFreeSurface
      LOGICAL exactConserv
      LOGICAL linFSConserveTr
      LOGICAL uniformLin_PhiSurf
      LOGICAL quasiHydrostatic
      LOGICAL nonHydrostatic
      LOGICAL use3Dsolver
      LOGICAL implicitIntGravWave
      LOGICAL staggerTimeStep
      LOGICAL momStepping
      LOGICAL tempStepping
      LOGICAL saltStepping
      LOGICAL metricTerms
      LOGICAL use3dCoriolis
      LOGICAL useCDscheme
      LOGICAL useEnergyConservingCoriolis
      LOGICAL useJamartWetPoints
      LOGICAL useJamartMomAdv
      LOGICAL upwindVorticity
      LOGICAL highOrderVorticity
      LOGICAL useAbsVorticity
      LOGICAL upwindShear
      LOGICAL implicitDiffusion
      LOGICAL implicitViscosity
      LOGICAL tempImplVertAdv
      LOGICAL saltImplVertAdv
      LOGICAL momImplVertAdv
      LOGICAL multiDimAdvection
      LOGICAL useMultiDimAdvec
      LOGICAL momDissip_In_AB
      LOGICAL doAB_onGtGs
      LOGICAL balanceEmPmR
      LOGICAL balanceQnet
      LOGICAL balancePrintMean
      LOGICAL doThetaClimRelax
      LOGICAL doSaltClimRelax
      LOGICAL allowFreezing
      LOGICAL useOldFreezing
      LOGICAL periodicExternalForcing
      LOGICAL globalFiles
      LOGICAL pickupStrictlyMatch
      LOGICAL usePickupBeforeC54
      LOGICAL startFromPickupAB2
      LOGICAL pickup_read_mdsio, pickup_write_mdsio
      LOGICAL pickup_write_immed, writePickupAtEnd
      LOGICAL timeave_mdsio, snapshot_mdsio, monitor_stdio
      LOGICAL outputTypesInclusive
      LOGICAL dumpInitAndLast
      LOGICAL debugMode, printDomain
      LOGICAL inAdMode, inAdTrue, inAdFalse, inAdExact

C--   COMMON /PARM_R/ "Real" valued parameters used by the model.
C     cg2dTargetResidual
C          :: Target residual for cg2d solver; no unit (RHS normalisation)
C     cg2dTargetResWunit
C          :: Target residual for cg2d solver; W unit (No RHS normalisation)
C     cg3dTargetResidual
C               :: Target residual for cg3d solver.
C     cg2dpcOffDFac :: Averaging weight for preconditioner off-diagonal.
C     Note. 20th May 1998
C           I made a weird discovery! In the model paper we argue
C           for the form of the preconditioner used here ( see
C           A Finite-volume, Incompressible Navier-Stokes Model
C           ...., Marshall et. al ). The algebra gives a simple
C           0.5 factor for the averaging of ac and aCw to get a
C           symmettric pre-conditioner. By using a factor of 0.51
C           i.e. scaling the off-diagonal terms in the
C           preconditioner down slightly I managed to get the
C           number of iterations for convergence in a test case to
C           drop form 192 -> 134! Need to investigate this further!
C           For now I have introduced a parameter cg2dpcOffDFac which
C           defaults to 0.51 but can be set at runtime.
C     delR      :: Vertical grid spacing ( units of r ).
C     delRc     :: Vertical grid spacing between cell centers (r unit).
C     delX      :: Separation between cell faces (m) or (deg), depending
C     delY        on input flags.
C     gravity   :: Accel. due to gravity ( m/s^2 )
C     recip_gravity and its inverse
C     gBaro     :: Accel. due to gravity used in barotropic equation ( m/s^2 )
C     rhoNil    :: Reference density for the linear equation of state
C     rhoConst  :: Vertically constant reference density
C     rhoFacC   :: normalized (by rhoConst) reference density at cell-Center
C     rhoFacF   :: normalized (by rhoConst) reference density at cell-interFace
C     rhoConstFresh :: Constant reference density for fresh water (rain)
C     rho1Ref   :: reference vertical profile for density
C     tRef      :: reference vertical profile for potential temperature
C     sRef      :: reference vertical profile for salinity/specific humidity
C     phiRef    :: reference potential (pressure/rho, geopotential) profile
C     dBdrRef   :: vertical gradient of reference boyancy  [(m/s/r)^2)]:
C               :: z-coord: = N^2_ref = Brunt-Vaissala frequency [s^-2]
C               :: p-coord: = -(d.alpha/dp)_ref          [(m^2.s/kg)^2]
C     rVel2wUnit :: units conversion factor (Non-Hydrostatic code),
C                :: from r-coordinate vertical velocity to vertical velocity [m/s].
C                :: z-coord: = 1 ; p-coord: wSpeed [m/s] = rVel [Pa/s] * rVel2wUnit
C     wUnit2rVel :: units conversion factor (Non-Hydrostatic code),
C                :: from vertical velocity [m/s] to r-coordinate vertical velocity.
C                :: z-coord: = 1 ; p-coord: rVel [Pa/s] = wSpeed [m/s] * wUnit2rVel
C     mass2rUnit :: units conversion factor (surface forcing),
C                :: from mass per unit area [kg/m2] to vertical r-coordinate unit.
C                :: z-coord: = 1/rhoConst ( [kg/m2] / rho = [m] ) ;
C                :: p-coord: = gravity    ( [kg/m2] *  g = [Pa] ) ;
C     rUnit2mass :: units conversion factor (surface forcing),
C                :: from vertical r-coordinate unit to mass per unit area [kg/m2].
C                :: z-coord: = rhoConst  ( [m] * rho = [kg/m2] ) ;
C                :: p-coord: = 1/gravity ( [Pa] /  g = [kg/m2] ) ;
C     xgOrigin   :: Origin of the X-axis (Cartesian Grid) / Longitude of Western
C                :: most cell face (Lat-Lon grid) (Note: this is an "inert"
C                :: parameter but it makes geographical references simple.)
C     ygOrigin   :: Origin of the Y-axis (Cartesian Grid) / Latitude of Southern
C                :: most face (Lat-Lon grid).
C     rSphere    :: Radius of sphere for a spherical polar grid ( m ).
C     recip_rSphere  :: Reciprocal radius of sphere ( m ).
C     f0         :: Reference coriolis parameter ( 1/s )
C                   ( Southern edge f for beta plane )
C     beta       :: df/dy ( s^-1.m^-1 )
C     fPrime     :: Second Coriolis parameter ( 1/s ), related to Y-component
C                   of rotation (reference value = 2.Omega.Cos(Phi))
C     omega      :: Angular velocity ( rad/s )
C     rotationPeriod :: Rotation period (s) (= 2.pi/omega)
C     viscArNr   :: vertical profile of Eddy viscosity coeff.
C                   for vertical mixing of momentum ( units of r^2/s )
C     viscAh     :: Eddy viscosity coeff. for mixing of
C                   momentum laterally ( m^2/s )
C     viscAhW    :: Eddy viscosity coeff. for mixing of vertical
C                   momentum laterally, no effect for hydrostatic
C                   model, defaults to viscAh if unset ( m^2/s )
C                   Not used if variable horiz. viscosity is used.
C     viscA4     :: Biharmonic viscosity coeff. for mixing of
C                   momentum laterally ( m^4/s )
C     viscA4W    :: Biharmonic viscosity coeff. for mixing of vertical
C                   momentum laterally, no effect for hydrostatic
C                   model, defaults to viscA4 if unset ( m^2/s )
C                   Not used if variable horiz. viscosity is used.
C     viscAhD    :: Eddy viscosity coeff. for mixing of momentum laterally
C                   (act on Divergence part) ( m^2/s )
C     viscAhZ    :: Eddy viscosity coeff. for mixing of momentum laterally
C                   (act on Vorticity  part) ( m^2/s )
C     viscA4D    :: Biharmonic viscosity coeff. for mixing of momentum laterally
C                   (act on Divergence part) ( m^4/s )
C     viscA4Z    :: Biharmonic viscosity coeff. for mixing of momentum laterally
C                   (act on Vorticity  part) ( m^4/s )
C     viscC2leith  :: Leith non-dimensional viscosity factor (grad(vort))
C     viscC2leithD :: Modified Leith non-dimensional visc. factor (grad(div))
C     viscC4leith  :: Leith non-dimensional viscosity factor (grad(vort))
C     viscC4leithD :: Modified Leith non-dimensional viscosity factor (grad(div))
C     viscC2smag   :: Smagorinsky non-dimensional viscosity factor (harmonic)
C     viscC4smag   :: Smagorinsky non-dimensional viscosity factor (biharmonic)
C     viscAhMax    :: Maximum eddy viscosity coeff. for mixing of
C                    momentum laterally ( m^2/s )
C     viscAhReMax  :: Maximum gridscale Reynolds number for eddy viscosity
C                     coeff. for mixing of momentum laterally (non-dim)
C     viscAhGrid   :: non-dimensional grid-size dependent viscosity
C     viscAhGridMax:: maximum and minimum harmonic viscosity coefficients ...
C     viscAhGridMin::  in terms of non-dimensional grid-size dependent visc.
C     viscA4Max    :: Maximum biharmonic viscosity coeff. for mixing of
C                     momentum laterally ( m^4/s )
C     viscA4ReMax  :: Maximum Gridscale Reynolds number for
C                     biharmonic viscosity coeff. momentum laterally (non-dim)
C     viscA4Grid   :: non-dimensional grid-size dependent bi-harmonic viscosity
C     viscA4GridMax:: maximum and minimum biharmonic viscosity coefficients ...
C     viscA4GridMin::  in terms of non-dimensional grid-size dependent viscosity
C     diffKhT   :: Laplacian diffusion coeff. for mixing of
C                 heat laterally ( m^2/s )
C     diffKrNrT :: vertical profile of Laplacian diffusion coeff.
C                 for mixing of heat vertically ( units of r^2/s )
C     diffK4T   :: Biharmonic diffusion coeff. for mixing of
C                 heat laterally ( m^4/s )
C     diffKhS  ::  Laplacian diffusion coeff. for mixing of
C                 salt laterally ( m^2/s )
C     diffKrNrS :: vertical profile of Laplacian diffusion coeff.
C                 for mixing of salt vertically ( units of r^2/s ),
C     diffK4S   :: Biharmonic diffusion coeff. for mixing of
C                 salt laterally ( m^4/s )
C     diffKrBL79surf :: T/S surface diffusivity (m^2/s) Bryan and Lewis, 1979
C     diffKrBL79deep :: T/S deep diffusivity (m^2/s) Bryan and Lewis, 1979
C     diffKrBL79scl  :: depth scale for arctan fn (m) Bryan and Lewis, 1979
C     diffKrBL79Ho   :: depth offset for arctan fn (m) Bryan and Lewis, 1979
C     BL79LatVary    :: polarwise of this latitude diffKrBL79 is applied with
C                       gradual transition to diffKrBLEQ towards Equator
C     diffKrBLEQsurf :: same as diffKrBL79surf but at Equator
C     diffKrBLEQdeep :: same as diffKrBL79deep but at Equator
C     diffKrBLEQscl  :: same as diffKrBL79scl but at Equator
C     diffKrBLEQHo   :: same as diffKrBL79Ho but at Equator
C     deltaT    :: Default timestep ( s )
C     deltaTClock  :: Timestep used as model "clock". This determines the
C                    IO frequencies and is used in tagging output. It can
C                    be totally different to the dynamical time. Typically
C                    it will be the deep-water timestep for accelerated runs.
C                    Frequency of checkpointing and dumping of the model state
C                    are referenced to this clock. ( s )
C     deltaTMom    :: Timestep for momemtum equations ( s )
C     dTtracerLev  :: Timestep for tracer equations ( s ), function of level k
C     deltaTfreesurf :: Timestep for free-surface equation ( s )
C     freesurfFac  :: Parameter to turn implicit free surface term on or off
C                    freesurfac = 1. uses implicit free surface
C                    freesurfac = 0. uses rigid lid
C     abEps        :: Adams-Bashforth-2 stabilizing weight
C     alph_AB      :: Adams-Bashforth-3 primary factor
C     beta_AB      :: Adams-Bashforth-3 secondary factor
C     implicSurfPress :: parameter of the Crank-Nickelson time stepping :
C                     Implicit part of Surface Pressure Gradient ( 0-1 )
C     implicDiv2Dflow :: parameter of the Crank-Nickelson time stepping :
C                     Implicit part of barotropic flow Divergence ( 0-1 )
C     implicitNHPress :: parameter of the Crank-Nickelson time stepping :
C                     Implicit part of Non-Hydrostatic Pressure Gradient ( 0-1 )
C     hFacMin      :: Minimum fraction size of a cell (affects hFacC etc...)
C     hFacMinDz    :: Minimum dimensional size of a cell (affects hFacC etc..., m)
C     hFacMinDp    :: Minimum dimensional size of a cell (affects hFacC etc..., Pa)
C     hFacMinDr    :: Minimum dimensional size of a cell (-> hFacC etc..., r units)
C     hFacInf      :: Threshold (inf and sup) for fraction size of surface cell
C     hFacSup          that control vanishing and creating levels
C     tauCD         :: CD scheme coupling timescale ( s )
C     rCD           :: CD scheme normalised coupling parameter (= 1 - deltaT/tauCD)
C     epsAB_CD      :: Adams-Bashforth-2 stabilizing weight used in CD scheme
C     baseTime      :: model base time (time origin) = time @ iteration zero
C     startTime     :: Starting time for this integration ( s ).
C     endTime       :: Ending time for this integration ( s ).
C     chkPtFreq     :: Frequency of rolling check pointing ( s ).
C     pChkPtFreq    :: Frequency of permanent check pointing ( s ).
C     dumpFreq      :: Frequency with which model state is written to
C                     post-processing files ( s ).
C     diagFreq      :: Frequency with which model writes diagnostic output
C                     of intermediate quantities.
C     afFacMom      :: Advection of momentum term tracer parameter
C     vfFacMom      :: Momentum viscosity tracer parameter
C     pfFacMom      :: Momentum pressure forcing tracer parameter
C     cfFacMom      :: Coriolis term tracer parameter
C     foFacMom      :: Momentum forcing tracer parameter
C     mtFacMom      :: Metric terms tracer parameter
C     cosPower      :: Power of cosine of latitude to multiply viscosity
C     cAdjFreq      :: Frequency of convective adjustment
C
C     taveFreq      :: Frequency with which time-averaged model state
C                      is written to post-processing files ( s ).
C     tave_lastIter :: (for state variable only) fraction of the last time
C                      step (of each taveFreq period) put in the time average.
C                      (fraction for 1rst iter = 1 - tave_lastIter)
C     tauThetaClimRelax :: Relaxation to climatology time scale ( s ).
C     tauSaltClimRelax :: Relaxation to climatology time scale ( s ).
C     latBandClimRelax :: latitude band where Relaxation to Clim. is applied,
C                         i.e. where |yC| <= latBandClimRelax
C     externForcingPeriod :: Is the period of which forcing varies (eg. 1 month)
C     externForcingCycle :: Is the repeat time of the forcing (eg. 1 year)
C                          (note: externForcingCycle must be an integer
C                           number times externForcingPeriod)
C     convertFW2Salt :: salinity, used to convert Fresh-Water Flux to Salt Flux
C                       (use model surface (local) value if set to -1)
C     temp_EvPrRn :: temperature of Rain & Evap.
C     salt_EvPrRn :: salinity of Rain & Evap.
C     temp_addMass :: temperature of addMass array
C     salt_addMass :: salinity of addMass array
C        (notes: a) tracer content of Rain/Evap only used if both
C                     NonLin_FrSurf & useRealFreshWater are set.
C                b) use model surface (local) value if set to UNSET_RL)
C     hMixCriteria:: criteria for mixed-layer diagnostic
C     dRhoSmall   :: parameter for mixed-layer diagnostic
C     hMixSmooth  :: Smoothing parameter for mixed-layer diag (default=0=no smoothing)
C     ivdc_kappa  :: implicit vertical diffusivity for convection [m^2/s]
C     Ro_SeaLevel :: standard position of Sea-Level in "R" coordinate, used as
C                    starting value (k=1) for vertical coordinate (rf(1)=Ro_SeaLevel)
C     rSigmaBnd   :: vertical position (in r-unit) of r/sigma transition (Hybrid-Sigma)
C     sideDragFactor     :: side-drag scaling factor (used only if no_slip_sides)
C                           (default=2: full drag ; =1: gives half-slip BC)
C     bottomDragLinear    :: Linear    bottom-drag coefficient (units of [r]/s)
C     bottomDragQuadratic :: Quadratic bottom-drag coefficient (units of [r]/m)
C               (if using zcoordinate, units becomes linear: m/s, quadratic: [-])
C     smoothAbsFuncRange :: 1/2 of interval around zero, for which FORTRAN ABS
C                           is to be replace by a smoother function
C                           (affects myabs, mymin, mymax)
C     nh_Am2        :: scales the non-hydrostatic terms and changes internal scales
C                      (i.e. allows convection at different Rayleigh numbers)
C     phiEuler      :: Euler angle, rotation about original z-axis
C     thetaEuler    :: Euler angle, rotation about new x-axis
C     psiEuler      :: Euler angle, rotation about new z-axis
      COMMON /PARM_R/ cg2dTargetResidual, cg2dTargetResWunit,
     & cg2dpcOffDFac, cg3dTargetResidual,
     & delR, delRc, delX, delY,
     & deltaT, deltaTmom, dTtracerLev, deltaTfreesurf, deltaTClock,
     & abEps, alph_AB, beta_AB,
     & xgOrigin, ygOrigin, rSphere, recip_rSphere,
     & f0, beta, fPrime, omega, rotationPeriod,
     & viscFacAdj, viscAh, viscAhW, viscAhMax,
     & viscAhGrid, viscAhGridMax, viscAhGridMin,
     & viscC2leith, viscC2leithD,
     & viscC2smag, viscC4smag,
     & viscAhD, viscAhZ, viscA4D, viscA4Z,
     & viscA4, viscA4W, viscA4Max,
     & viscA4Grid, viscA4GridMax, viscA4GridMin,
     & viscAhReMax, viscA4ReMax,
     & viscC4leith, viscC4leithD, viscArNr,
     & diffKhT, diffK4T, diffKrNrT,
     & diffKhS, diffK4S, diffKrNrS,
     & diffKrBL79surf, diffKrBL79deep, diffKrBL79scl, diffKrBL79Ho,
     & BL79LatVary,
     & diffKrBLEQsurf, diffKrBLEQdeep, diffKrBLEQscl, diffKrBLEQHo,
     & tauCD, rCD, epsAB_CD,
     & freeSurfFac, implicSurfPress, implicDiv2Dflow, implicitNHPress,
     & hFacMin, hFacMinDz, hFacInf, hFacSup,
     & gravity, recip_gravity, gBaro,
     & rhonil, recip_rhonil, rhoConst, recip_rhoConst,
     & rhoFacC, recip_rhoFacC, rhoFacF, recip_rhoFacF,
     & rhoConstFresh, rho1Ref, tRef, sRef, phiRef, dBdrRef,
     & rVel2wUnit, wUnit2rVel, mass2rUnit, rUnit2mass,
     & baseTime, startTime, endTime,
     & chkPtFreq, pChkPtFreq, dumpFreq, adjDumpFreq,
     & diagFreq, taveFreq, tave_lastIter, monitorFreq, adjMonitorFreq,
     & afFacMom, vfFacMom, pfFacMom, cfFacMom, foFacMom, mtFacMom,
     & cosPower, cAdjFreq,
     & tauThetaClimRelax, tauSaltClimRelax, latBandClimRelax,
     & externForcingCycle, externForcingPeriod,
     & convertFW2Salt, temp_EvPrRn, salt_EvPrRn,
     & temp_addMass, salt_addMass, hFacMinDr, hFacMinDp,
     & ivdc_kappa, hMixCriteria, dRhoSmall, hMixSmooth,
     & Ro_SeaLevel, rSigmaBnd,
     & sideDragFactor, bottomDragLinear, bottomDragQuadratic, nh_Am2,
     & smoothAbsFuncRange,
     & tCylIn, tCylOut,
     & phiEuler, thetaEuler, psiEuler

      Real*8 cg2dTargetResidual
      Real*8 cg2dTargetResWunit
      Real*8 cg3dTargetResidual
      Real*8 cg2dpcOffDFac
      Real*8 delR(Nr)
      Real*8 delRc(Nr+1)
      Real*8 delX(Nx)
      Real*8 delY(Ny)
      Real*8 deltaT
      Real*8 deltaTClock
      Real*8 deltaTmom
      Real*8 dTtracerLev(Nr)
      Real*8 deltaTfreesurf
      Real*8 abEps, alph_AB, beta_AB
      Real*8 xgOrigin
      Real*8 ygOrigin
      Real*8 rSphere
      Real*8 recip_rSphere
      Real*8 f0
      Real*8 beta
      Real*8 fPrime
      Real*8 omega
      Real*8 rotationPeriod
      Real*8 freeSurfFac
      Real*8 implicSurfPress
      Real*8 implicDiv2Dflow
      Real*8 implicitNHPress
      Real*8 hFacMin
      Real*8 hFacMinDz
      Real*8 hFacMinDp
      Real*8 hFacMinDr
      Real*8 hFacInf
      Real*8 hFacSup
      Real*8 viscArNr(Nr)
      Real*8 viscFacAdj
      Real*8 viscAh
      Real*8 viscAhW
      Real*8 viscAhD
      Real*8 viscAhZ
      Real*8 viscAhMax
      Real*8 viscAhReMax
      Real*8 viscAhGrid, viscAhGridMax, viscAhGridMin
      Real*8 viscC2leith
      Real*8 viscC2leithD
      Real*8 viscC2smag
      Real*8 viscA4
      Real*8 viscA4W
      Real*8 viscA4D
      Real*8 viscA4Z
      Real*8 viscA4Max
      Real*8 viscA4ReMax
      Real*8 viscA4Grid, viscA4GridMax, viscA4GridMin
      Real*8 viscC4leith
      Real*8 viscC4leithD
      Real*8 viscC4smag
      Real*8 diffKhT
      Real*8 diffKrNrT(Nr)
      Real*8 diffK4T
      Real*8 diffKhS
      Real*8 diffKrNrS(Nr)
      Real*8 diffK4S
      Real*8 diffKrBL79surf
      Real*8 diffKrBL79deep
      Real*8 diffKrBL79scl
      Real*8 diffKrBL79Ho
      Real*8 BL79LatVary
      Real*8 diffKrBLEQsurf
      Real*8 diffKrBLEQdeep
      Real*8 diffKrBLEQscl
      Real*8 diffKrBLEQHo
      Real*8 tauCD, rCD, epsAB_CD
      Real*8 gravity
      Real*8 recip_gravity
      Real*8 gBaro
      Real*8 rhonil,        recip_rhonil
      Real*8 rhoConst,      recip_rhoConst
      Real*8 rhoFacC(Nr),   recip_rhoFacC(Nr)
      Real*8 rhoFacF(Nr+1), recip_rhoFacF(Nr+1)
      Real*8 rhoConstFresh
      Real*8 rho1Ref(Nr)
      Real*8 tRef(Nr)
      Real*8 sRef(Nr)
      Real*8 phiRef(2*Nr+1)
      Real*8 dBdrRef(Nr)
      Real*8 rVel2wUnit(Nr+1), wUnit2rVel(Nr+1)
      Real*8 mass2rUnit, rUnit2mass
      Real*8 baseTime
      Real*8 startTime
      Real*8 endTime
      Real*8 chkPtFreq
      Real*8 pChkPtFreq
      Real*8 dumpFreq
      Real*8 adjDumpFreq
      Real*8 diagFreq
      Real*8 taveFreq
      Real*8 tave_lastIter
      Real*8 monitorFreq
      Real*8 adjMonitorFreq
      Real*8 afFacMom
      Real*8 vfFacMom
      Real*8 pfFacMom
      Real*8 cfFacMom
      Real*8 foFacMom
      Real*8 mtFacMom
      Real*8 cosPower
      Real*8 cAdjFreq
      Real*8 tauThetaClimRelax
      Real*8 tauSaltClimRelax
      Real*8 latBandClimRelax
      Real*8 externForcingCycle
      Real*8 externForcingPeriod
      Real*8 convertFW2Salt
      Real*8 temp_EvPrRn
      Real*8 salt_EvPrRn
      Real*8 temp_addMass
      Real*8 salt_addMass
      Real*8 ivdc_kappa
      Real*8 hMixCriteria
      Real*8 dRhoSmall
      Real*8 hMixSmooth
      Real*8 Ro_SeaLevel
      Real*8 rSigmaBnd
      Real*8 sideDragFactor
      Real*8 bottomDragLinear
      Real*8 bottomDragQuadratic
      Real*8 smoothAbsFuncRange
      Real*8 nh_Am2
      Real*8 tCylIn
      Real*8 tCylOut
      Real*8 phiEuler, thetaEuler, psiEuler

C--   COMMON /PARM_A/ Thermodynamics constants ?
      COMMON /PARM_A/ HeatCapacity_Cp,recip_Cp
      Real*8 HeatCapacity_Cp
      Real*8 recip_Cp

C--   COMMON /PARM_ATM/ Atmospheric physical parameters (Ideal Gas EOS, ...)
C     celsius2K :: convert centigrade (Celsius) degree to Kelvin
C     atm_Po    :: standard reference pressure
C     atm_Cp    :: specific heat (Cp) of the (dry) air at constant pressure
C     atm_Rd    :: gas constant for dry air
C     atm_kappa :: kappa = R/Cp (R: constant of Ideal Gas EOS)
C     atm_Rq    :: water vapour specific volume anomaly relative to dry air
C                  (e.g. typical value = (29/18 -1) 10^-3 with q [g/kg])
C     integr_GeoPot :: option to select the way we integrate the geopotential
C                     (still a subject of discussions ...)
C     selectFindRoSurf :: select the way surf. ref. pressure (=Ro_surf) is
C             derived from the orography. Implemented: 0,1 (see INI_P_GROUND)
      COMMON /PARM_ATM/
     &            celsius2K,
     &            atm_Cp, atm_Rd, atm_kappa, atm_Rq, atm_Po,
     &            integr_GeoPot, selectFindRoSurf
      Real*8 celsius2K
      Real*8 atm_Po, atm_Cp, atm_Rd, atm_kappa, atm_Rq
      INTEGER integr_GeoPot, selectFindRoSurf

C Logical flags for selecting packages
      LOGICAL useGAD
      LOGICAL useOBCS
      LOGICAL useSHAP_FILT
      LOGICAL useZONAL_FILT
      LOGICAL useOPPS
      LOGICAL usePP81
      LOGICAL useMY82
      LOGICAL useGGL90
      LOGICAL useKPP
      LOGICAL useGMRedi
      LOGICAL useDOWN_SLOPE
      LOGICAL useCAL
      LOGICAL useEXF
      LOGICAL useBulkForce
      LOGICAL useEBM
      LOGICAL useCheapAML
      LOGICAL useGrdchk
      LOGICAL useSMOOTH
      LOGICAL useECCO
      LOGICAL useSBO
      LOGICAL useFLT
      LOGICAL usePTRACERS
      LOGICAL useGCHEM
      LOGICAL useRBCS
      LOGICAL useOffLine
      LOGICAL useMATRIX
      LOGICAL useSEAICE
      LOGICAL useSALT_PLUME
      LOGICAL useShelfIce
      LOGICAL useICEFRONT
      LOGICAL useThSIce
      LOGICAL useATM2d
      LOGICAL useAIM
      LOGICAL useLand
      LOGICAL useFizhi
      LOGICAL useGridAlt
      LOGICAL useDiagnostics
      LOGICAL useREGRID
      LOGICAL useLayers
      LOGICAL useMNC
      LOGICAL useRunClock
      LOGICAL useEMBED_FILES
      LOGICAL useMYPACKAGE
      COMMON /PARM_PACKAGES/
     &        useGAD, useOBCS, useSHAP_FILT, useZONAL_FILT,
     &        useOPPS, usePP81, useMY82, useGGL90, useKPP,
     &        useGMRedi, useDOWN_SLOPE,
     &        useCAL, useEXF, useBulkForce, useEBM, useCheapAML,
     &        useGrdchk, useSMOOTH, useECCO, useSBO, useFLT,
     &        usePTRACERS, useGCHEM, useRBCS, useOffLine, useMATRIX,
     &        useSEAICE, useSALT_PLUME, useShelfIce,
     &        useICEFRONT, useThSIce,
     &        useATM2D, useAIM, useLand, useFizhi, useGridAlt,
     &        useDiagnostics, useREGRID, useLayers, useMNC,
     &        useRunClock, useEMBED_FILES,
     &        useMYPACKAGE

CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /csys/software/cvsroot/REcoM/MITgcm/recom/RECOM.h,v 1.13 2008/04/17 14:25:53 mlosch Exp $
C $Name:  $


CBOP
C    !ROUTINE: RECOM.h
C    !INTERFACE:
C #include RECOM.h
 
C    !DESCRIPTION:
C Contains fields and parameters for biogeochemical model REcoM

C     C2K :: conversion of Celsius into Kelvin
      Real*8     C2K
      PARAMETER ( C2K = 273.15 )
C     some time parameter
C     secondsPerHour :: 60*60 seconds
C     secondsPerDay  :: 60*60*24 seconds
C     noonTime :: the 12th hour of the day in seconds
      Real*8     recom_secondsPerHour, recom_secondsPerDay
      Real*8     noonTime
      PARAMETER ( recom_secondsPerHour =  3600. )
      PARAMETER ( recom_secondsPerDay  = 86400. )
      PARAMETER ( noonTime       = 12.*recom_secondsPerHour )
C     index of refraction for Water
      Real*8     nWater
      PARAMETER ( nWater          = 1.33 )
C----------------------------------
C number of 2-dimensional and 3-dimensional REcoM diagnostics 
C (counting only those that need to be transferred between recom_forcing
C and recom_sms, because only those need to get an extra array)
C----------------------------------
      INTEGER     nDiagsREcoM3D, nDiagsREcoM2D
      PARAMETER ( nDiagsREcoM3D   = 4
     &  + 4
     &  + 28
     & )
      PARAMETER (nDiagsREcoM2D = 9
     &  + 4
     & )

C     brockReedInsolation :: switch to compute insolation from atronomical
C                    formulas according to Brock(1981) and Reed(1977),
C                    instead of shortwave heating (the default).
C     diurnalInsolation   :: switch to compute a diurnal cycle of insolation
C                     defaults in .false.
C     computeHalos :: for 2D to 3D runs this must be true (default), because
C                     gchem_forcing is called after the blocking exchanges
C                     (need to convince Steph to change that!)
      LOGICAL brockReedInsolation
      LOGICAL diurnalInsolation
      LOGICAL computeHalos
      COMMON /RECOM_PARM_L/
     &     brockReedInsolation, diurnalInsolation, computeHalos
C     recom_tiny :: lower bound of all passive tracers (passed from
C                   REcoM_para_read)
C     The following parameters are only needed if
C     brockReedInsolation=.true. 
C     solarConstan - solar constant
C     albedo       - planetary albedo
C     parFrac      - photosynthetically reactive fraction of light
C     cloudCover   - could also be read in as a field, but ...
C     daysPerYear  - number of days in a model year, default = 360
C     fracTEP      - TEP (transparent exopolymeric particles) 
C                    fraction of EOM (extra-celluar matter)
C     constantIronSolubility - solubility of iron in water.  
C                    Multiply with iron dust decomposition to get the 
C                    dissolved iron available for bgc-processes.
      Real*8 recom_tiny 
      Real*8 solarConstant, parFrac, cloudCover
      Real*8 daysPerYear
      Real*8 fracTEP
      Real*8 constantIronSolubility
C     resuspension parameters 
      Real*8 recom_sizeFraction
      Real*8 recom_porosity
C     recomCritShearStress (in m^2/s^2) is really the minimum speed squared
C     that is required to resuspend material
      Real*8 recomCritShearStress
C     recomShearStressMax (in m^2/s^2) puts a cap on the resuspension flux
      Real*8 recomShearStressMax
      Real*8 recom_FeErosionRate 
C     currently not used
      Real*8 recomDragQuadratic
C     recom_windFile   :: file name of wind speeds
C     recom_pCO2File   :: file name of atmospheric pCO2
C     recom_ironFile   :: file name of aeolian iron flux
C     recom_silicaFile :: file name of surface silica
C     recom_CaCO3File  :: file name of initial benthic layer CaCO3 

      COMMON /RECOM_FILENAMES/
     &        recom_windFile, recom_pCO2File, recom_iceFile,
     &        recom_CaCO3File,
     &        recom_ironFile, recom_silicaFile

      CHARACTER*(MAX_LEN_FNAM) recom_windFile
      CHARACTER*(MAX_LEN_FNAM) recom_pCO2File
      CHARACTER*(MAX_LEN_FNAM) recom_iceFile
      CHARACTER*(MAX_LEN_FNAM) recom_ironFile
      CHARACTER*(MAX_LEN_FNAM) recom_silicaFile
      CHARACTER*(MAX_LEN_FNAM) recom_CaCO3File

      COMMON /RECOM_PARM_R/ 
     &     recom_tiny,
     &     solarConstant, parFrac, cloudCover,
     &     daysPerYear, fracTEP,
     &     constantIronSolubility,
     &     recom_sizeFraction, recom_porosity,
     &     recomCritShearStress, recom_FeErosionRate,
     &     recomShearStressMax, recomDragQuadratic
      NAMELIST /RECOM_PARM01/
     &     brockReedInsolation, 
     &     diurnalInsolation,
     &     computeHalos,
     &     recom_tiny,
     &     solarConstant, parFrac, cloudCover,
     &     daysPerYear, fracTEP,
     &     constantIronSolubility,
     &     recom_sizeFraction, recom_porosity,
     &     recomCritShearStress, recom_FeErosionRate,
     &     recomShearStressMax, recomDragQuadratic,
     &     recom_windFile, recom_pCO2File,
     &     recom_CaCO3File,
     &     recom_ironFile, recom_silicaFile

C     windSpeed     :: scalar wind speed at 10m above the surface
C     atmospCO2     :: atmopheric CO2
C     dicFlux       :: flux of dissolved inorganic surface flux
C     hPlus         :: variable for hPlus
C     feDustDeposit :: iron dust deposition at the surface, in mumol/m^2/s
C     recomC        :: specific sum of tracers (total carbon)
C     recomN        :: specific sum of tracers (total nitrate)
C     recomSi       :: specific sum of tracers (total silica)
C     benthicLayer  :: benthic layer that absorbs sediments;
C                      so far only C, N, and Si
      Real*8  windSpeed     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  atmospCO2     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  dicFlux       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  feDustDeposit (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  recomC        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  recomN        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
C     unfortunately, recomSi must always be defined, because it is
C     part of a formal parameter list
      Real*8  recomSi       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  hPlus         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  benthicLayerC (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  benthicLayerN (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
CCV#ifdef ALLOW_RECOM_SILICATE
      Real*8  benthicLayerSi(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
CCV#endif 
      Real*8  benthicLayerCaCO3(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

CTW increased sinking speed
      Real*8 Vdetfast(Nr)

      COMMON /RECOM_FFIELDS/ 
     &     windSpeed, atmospCO2, dicFlux, feDustDeposit,
     &     recomC, recomN, recomSi
     &     , hPlus
     &     , benthicLayerC, benthicLayerN
CCV#ifdef ALLOW_RECOM_SILICATE
     &     , benthicLayerSi
CCV#endif 
CTW vertically increasing sinking speed
     &     , Vdetfast
     &     , benthicLayerCaCO3

C     Auxilary fields for loading forcing fields
C     windspeed?     :: wind speed at 10m above surface
C     atmosp?        :: atmospheric CO2
C     feDustDeposit? :: iron dust deposition at the surface
      Real*8 windspeed0  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 windspeed1  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 atmosp0     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 atmosp1     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
CCV#ifdef ALLOW_RECOM_FEINPUT
      Real*8 feDustDeposit0 (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 feDustDeposit1 (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
CCV#endif 
      COMMON /RECOM_FFIELDS_AUX/
     &     windspeed0, windspeed1
     &     , atmosp0, atmosp1
CCV#ifdef ALLOW_RECOM_FEINPUT
     &     , feDustDeposit0, feDustDeposit1
CCV#endif 

      COMMON /TAVE_RECOM/
     &       WCtave,  CDiffRtave
     &     , WNtave,  NDiffRtave
     &     , WSitave, SiDiffRtave
      Real*8  WCtave     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  CDiffRtave (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  WNtave     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  NDiffRtave (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  WSitave    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  SiDiffRtave(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)


C--------------------------------------------------------------------------
C   relative tracer indices
C--------------------------------------------------------------------------

      integer nvars_base, nvars_calc, nvars_iron_photo, nvars_iron_lig, 
     &        nvars_iron_lig2, nvars_iron_coll, nvars_iron_lith
      integer idin, idic, ialk, iphyn, iphyc, ipchl, idetn,  
     &        idetc, ihetn, ihetc, idon, idoc, 
     &        idian, idiac, idchl, idiasi, idetsi, isi, ife
      integer iphycalc, idetcalc

      parameter (nvars_base=19)
      parameter (idin=1, idic=2, ialk=3, iphyn=4, iphyc=5, ipchl=6,
     &  idetn=7, idetc=8, ihetn=9, ihetc=10, idon=11, idoc=12,
     &  idian=13, idiac=14, idchl=15, idiasi=16, idetsi=17, isi=18,
     &  ife=19)

      parameter (nvars_calc=2)
      parameter (iphycalc=nvars_base+1,idetcalc=nvars_base+2)

      parameter (nvars_iron_photo=0)

      parameter (nvars_iron_lig=0)
      parameter (nvars_iron_lig2=0)

      parameter (nvars_iron_coll=0)

      parameter (nvars_iron_lith=0)

CEOP
C $Header: /u/gcmpack/MITgcm/pkg/cal/cal.h,v 1.5 2007/10/08 23:55:46 jmc Exp $
C $Name: checkpoint62r $

c     ==================================================================
c     HEADER calendar
c     ==================================================================
c
c     o This header file contains variables that are used by the
c       calendar tool. The calendar tool can be used in the ECCO
c       SEALION release of the MITgcmUV.
c
c     started: Christian Eckert eckert@mit.edu  30-Jun-1999
c
c     changed: Christian Eckert eckert@mit.edu  17-Dec-1999
c              - restructured the original version in order to have a
c                better interface to the MITgcmUV.
c
c     ==================================================================
c     HEADER calendar
c     ==================================================================
c
c     - The calendar version:
c
      character*(5) calendarversion
      parameter(    calendarversion = '0.2.0' )

c     - Parameters of the numerical model:
c
c     modelstart       - start time of the numerical model.
c     modelstartdate   - start date of the numerical model.
c     modelend         - end   time of the numerical model.
c     modelenddate     - end   date of the numerical model.
c     modelstep        - timestep of the numerical model.
c     modelintsteps    - number of timestep that are to be performed.
c     modeliter0       - the numerical models initial timestep number.
c     modeliterend     - the models last timestep number.
c     modelstepsperday - number of model time steps per calendar day.
c
c
c     - Parameters used by the calendar:
c
c     refdate          - first day of the Gregorian Calendar.
c     nmonthyear       - number months in a year.
c     ndaymonth        - days per month depending on the year being a
c                        leap year or not. If the Gregorian calendar is
c                        not used a 360 days year with 30 days months is
c                        used instead.
c     ndaysnoleap      - number of days in a usual year.
c     ndaysleap        - number of days in a leap year.
c     nmaxdaymonth     - maximum number of days in a years month.
c     hoursperday      - number of hours   in a calendars day.
c     minutesperday    - number of minutes in a calendars day.
c     minutesperhour   - number of minutes in a calendars hour.
c     secondsperday    - number of seconds in a calendars day.
c     secondsperhour   - number of seconds in a calendars hour.
c     secondsperminute - number of seconds in a calendars minute.


      common /cal_rl/
     &                modelstart,
     &                modelend,
     &                modelstep

      Real*8 modelstart
      Real*8 modelend
      Real*8 modelstep

      common /cal_i/
     &               refdate,
     &               nmonthyear,
     &               ndaymonth,
     &               ndaysnoleap,
     &               ndaysleap,
     &               nmaxdaymonth,
     &               hoursperday,
     &               minutesperday,
     &               minutesperhour,
     &               secondsperday,
     &               secondsperhour,
     &               secondsperminute,
     &               modelstartdate,
     &               modelenddate,
     &               modeliter0,
     &               modeliterend,
     &               modelintsteps,
     &               modelstepsperday,
     &               startdate_1,
     &               startdate_2

      integer refdate(4)
      integer nmonthyear
      integer ndaymonth(12,2)
      integer ndaysnoleap
      integer ndaysleap
      integer nmaxdaymonth
      integer hoursperday
      integer minutesperday
      integer minutesperhour
      integer secondsperday
      integer secondsperhour
      integer secondsperminute

      integer modelstartdate(4)
      integer modelenddate(4)
      integer modeliter0
      integer modeliterend
      integer modelintsteps
      integer modelstepsperday

      integer startdate_1
      integer startdate_2


C   calendarDumps :: When set, approximate months (30-31 days) and years (360-372 days)
C                    for parameters chkPtFreq, pChkPtFreq, taveFreq, SEAICE_taveFreq,
C                    KPP_taveFreq, and freq in pkg/diagnostics are converted to exact
C                    calendar months and years.  Requires pkg/cal.

      common /cal_l/
     &               calendarDumps,
     &               usingNoCalendar,
     &               usingModelCalendar,
     &               usingJulianCalendar,
     &               usingGregorianCalendar

      logical calendarDumps
      logical usingNoCalendar
      logical usingModelCalendar
      logical usingJulianCalendar
      logical usingGregorianCalendar


c     dayofweek   - Week day number one is the week day of refdate.
c                   For the Gregorian calendar this is Friday, 15-Oct-1582.
c
c     monthofyear - Both available calendars are assumed to have twelve
c                   months.

      common /calendar_ch/
     &                     dayofweek,
     &                     monthofyear

      character*(3) dayofweek(7)
      character*(3) monthofyear(12)



C $Header: /u/gcmpack/MITgcm/pkg/gchem/GCHEM.h,v 1.13 2009/06/30 16:43:00 jahn Exp $
C $Name:  $


CBOP
C    !ROUTINE: GCHEM.h
C    !INTERFACE:

C    !DESCRIPTION:
C Contains tracer parameters and input files for chemical tracers.
C These can be read in from data.gchem
C
C--   COMMON /GCHEM_PARM_L/ Logical valued parameters used by GCHEM pkg.
C     useDIC   :: flag to turn on/off DIC pkg
C     useCFC   :: flag to turn on/off CFC pkg
C     useDARWIN :: flag to turn on/off darwin pkg
C     useREcoM :: flag to turn on/off REcoM pkg
C     useBIMAP :: flag to turn on/off BIMAP pkg
C     useFGM   :: flag to turn on/off FGM pkg
C
C--   COMMON /GCHEM_PARAMS/
C  nsubtime    :: number of chemistry timesteps per deltaTtracer
C                 (default 1)
C  Filename*   :: various spare filenames
C  gchem_int*  :: place holder to read in a integer number, set at run time
C  gchem_rl*   :: place holder to read in a real number, set at run time
C  gchem_ForcingPeriod :: periodic forcing parameter specific for gchem (seconds)
C  gchem_ForcingCycle  :: periodic forcing parameter specific for gchem (seconds)

CEOP

      COMMON /GCHEM_PARM_L/
     &              useDIC,
     &              useCFC,
     &              useDARWIN
     &     ,useREcoM, useBIMAP, useFGM

      LOGICAL useDIC, useCFC, useDARWIN
      LOGICAL useREcoM, useBIMAP, useFGM

      COMMON /GCHEM_PARAMS/
     &                   Filename1,
     &                   Filename2,
     &                   Filename3,
     &                   Filename4,
     &                   Filename5,
     &                   nsubtime,
     &           gchem_int1, gchem_int2, gchem_int3,
     &           gchem_int4, gchem_int5,
     &           gchem_rl1, gchem_rl2, gchem_rl3,
     &           gchem_rl4, gchem_rl5,
     &           gchem_ForcingPeriod, gchem_ForcingCycle

      INTEGER nsubtime
      CHARACTER*(MAX_LEN_FNAM) Filename1
      CHARACTER*(MAX_LEN_FNAM) Filename2
      CHARACTER*(MAX_LEN_FNAM) Filename3
      CHARACTER*(MAX_LEN_FNAM) Filename4
      CHARACTER*(MAX_LEN_FNAM) Filename5
      INTEGER gchem_int1
      INTEGER gchem_int2
      INTEGER gchem_int3
      INTEGER gchem_int4
      INTEGER gchem_int5
      Real*8     gchem_rl1
      Real*8     gchem_rl2
      Real*8     gchem_rl3
      Real*8     gchem_rl4
      Real*8     gchem_rl5
      Real*8     gchem_ForcingPeriod
      Real*8     gchem_ForcingCycle

C $Header: /u/gcmpack/MITgcm/pkg/exf/EXF_CONSTANTS.h,v 1.5 2008/11/17 23:08:29 jmc Exp $
C $Name: checkpoint62r $
c
c
c     ==================================================================
c     HEADER exf_constants
c     ==================================================================
c
c     o Header file for constants.
c       These include  - numbers (e.g. 1, 2, 1/2, ...)
c                      - physical constants (e.g. gravitational const.)
c                      - empirical parameters
c                      - control parameters (e.g. max. no of iteration)
c
c     started: Patrick Heimbach heimbach@mit.edu  06-May-2000
c     mods for pkg/seaice: menemenlis@jpl.nasa.gov 20-Dec-2002
c
c     ==================================================================
c     HEADER exf_constants
c     ==================================================================

c     1. numbers

c     exf_half   0.5
c     exf_one    1.0
c     exf_two    2.0

      Real*8 exf_half
      Real*8 exf_one
      Real*8 exf_two

      PARAMETER(
     &              exf_half =  0.5 D 0 ,
     &              exf_one  =  1.0 D 0 ,
     &              exf_two  =  2.0 D 0
     &         )

c     real       exf_undef
c     PARAMETER( exf_undef = -9000. )

c     2. physical constants

c     stefanBoltzmann :: Stefan-Boltzmann constant [J*K^-4*m^-2*s^-1]
c                        sigma = (2*pi^5*k^4)/(15*h^3*c^2)
c     karman          :: von Karman constant
      Real*8    stefanBoltzmann
      Real*8    karman
      PARAMETER ( stefanBoltzmann = 5.670 D -8 )
      PARAMETER ( karman = 0.4 D 0 )

c     3. empirical parameters

c     To invert the relationship ustar = ustar(umagn) the following
c     parameterization is used:
c
c      ustar**2 = umagn**2 * CDN(umagn)
c
c                  / cquadrag_1 * umagn**2 + cquadrag_2; 0 < u < 11 m/s
c      CDN(umagn) =
c                  \ clindrag_1 * umagn + clindrag_2   ; u > 11 m/s
c
c      clindrag_[n] - n = 1, 2 coefficients used to evaluate
c                     LINEAR relationship of Large and Pond 1981
c      cquadrag_[n] - n = 1, 2 coefficients used to evaluate
c                     quadratic relationship
c      u11          - u = 11 m/s wind speed
c      ustofu11     - ustar = 0.3818 m/s, corresponding to u = 11 m/s

      Real*8 clindrag_1, clindrag_2
      Real*8 cquadrag_1, cquadrag_2
      Real*8 u11
      Real*8 ustofu11

      PARAMETER (
     &            ustofu11    =         0.381800 D 0 ,
     &            u11         =        11.       D 0 ,
     &            clindrag_1  =         0.000065 D 0 ,
     &            clindrag_2  =         0.000490 D 0 ,
     &            cquadrag_1  = clindrag_1/u11/2 ,
     &            cquadrag_2  = clindrag_1*u11/2 + clindrag_2
     &          )

c     4. control parameters

c     niter_bulk   - Number of iterations to be performed for the
c                    evaluation of the bulk surface fluxes. The ncom
c                    model uses 2 hardwired interation steps (loop
c                    unrolled).
c
      INTEGER     niter_bulk
      PARAMETER ( niter_bulk = 2 )

C     5. other constants or parameters

C     COMMON /EXF_PARAM_R_2/
C     cen2kel      :: conversion of deg. Centigrade to Kelvin
C     gravity_mks  :: gravitational acceleration [m/s^2]
C     atmrho       :: mean atmospheric density [kg/m^3]
C     atmcp        :: mean atmospheric specific heat [J/kg/K]
C     flamb        :: latent heat of evaporation [J/kg]
C     flami        :: latent heat of melting of pure ice [J/kg]
C     cvapor_[]    :: Coeff to calculate Saturation Specific Humidity
C                     see e.g. Gill (1982) p.41 Eq. (3.1.15)
C     humid_fac    :: constant entering the evaluation of the virtual
C                     temperature
C     gamma_blk    :: adiabatic lapse rate
C     saltsat      :: reduction of saturation vapor pressure over salt water
C     sstExtrapol  :: extrapolation coeff from 1rst 2 levels up to surface
C  snow_emissivity :: longwave  snow  emissivity [-] (with pkg thsice/seaice)
C-- to evaluate turbulent transfert coefficients:
C     cdrag_[n]    :: n = 1,2,3 coefficients used to evaluate
C                     drag coefficient
C     cstanton_[n] :: n = 1,2   coefficients used to evaluate
C                     the Stanton number (stable/unstable cond.)
C     cdalton      :: coefficient used to evaluate the Dalton number
C     zolmin       :: minimum stability parameter
C     psim_fac     :: coef used in turbulent fluxes calculation [-]
C     zref         :: reference height
C     hu           :: height of mean wind
C     ht           :: height of mean temperature
C     hq           :: height of mean rel. humidity
C     umin         :: minimum absolute wind speed used to evaluate
C                     drag coefficient [m/s]
C     exf_iceCd    :: drag coefficient over sea-ice (fixed)
C     exf_iceCe    :: transfert coeff. over sea-ice, for Evaporation (fixed)
C     exf_iceCh    :: transfert coeff. over sea-ice, for Sens.Heating (fixed)
C-- radiation:
C     exf_albedo   :: Sea-water albedo
C ocean_emissivity :: longwave ocean-surface emissivity [-]
C   ice_emissivity :: longwave seaice emissivity [-] (with pkg thsice/seaice)
C  snow_emissivity :: longwave  snow  emissivity [-] (with pkg thsice/seaice)

      Real*8    cen2kel
      Real*8    gravity_mks
      Real*8    atmrho
      Real*8    atmcp
      Real*8    flamb, flami
      Real*8    cvapor_fac,     cvapor_exp
      Real*8    cvapor_fac_ice, cvapor_exp_ice
      Real*8    humid_fac
      Real*8    gamma_blk
      Real*8    saltsat
      Real*8    sstExtrapol
      Real*8    cdrag_1,    cdrag_2,     cdrag_3
      Real*8    cstanton_1, cstanton_2
      Real*8    cdalton
      Real*8    zolmin
      Real*8    psim_fac
      Real*8    zref
      Real*8    hu
      Real*8    ht
      Real*8    hq
      Real*8    umin
      Real*8    exf_iceCd
      Real*8    exf_iceCe
      Real*8    exf_iceCh
      Real*8    exf_albedo
      Real*8    ocean_emissivity
      Real*8    ice_emissivity
      Real*8    snow_emissivity

      COMMON /EXF_PARAM_R_2/
     &       cen2kel,
     &       gravity_mks,
     &       atmrho,
     &       atmcp,
     &       flamb,
     &       flami,
     &       cvapor_fac,     cvapor_exp,
     &       cvapor_fac_ice, cvapor_exp_ice,
     &       humid_fac,
     &       gamma_blk,
     &       saltsat,
     &       sstExtrapol,
     &       cdrag_1,    cdrag_2,    cdrag_3,
     &       cstanton_1, cstanton_2,
     &       cdalton,
     &       zolmin,
     &       psim_fac,
     &       zref,
     &       hu,
     &       ht,
     &       hq,
     &       umin,
     &       exf_iceCd,  exf_iceCe,  exf_iceCh,
     &       exf_albedo,
     &       ocean_emissivity,
     &       ice_emissivity,
     &       snow_emissivity

C $Header: /u/gcmpack/MITgcm/pkg/exf/EXF_PARAM.h,v 1.22 2010/11/23 18:55:54 jmc Exp $
C $Name: checkpoint62r $
c
c
c     ==================================================================
c     HEADER exf_param
c     ==================================================================
c
c     o Header file for the surface flux data. Used by the external
c       forcing package.
c
c     started: Christian Eckert eckert@mit.edu  30-Jun-1999
c
c     changed: Christian Eckert eckert@mit.edu  14-Jan-2000
c              - Restructured the original version in order to have a
c                better interface to the MITgcmUV.
c
c              Christian Eckert eckert@mit.edu  12-Feb-2000
c              - Changed some variables names (package prefix: exf_)
c
c              Patrick Heimbach, heimbach@mit.edu  04-May-2000
c              - included exf_iprec, exf_yftype to enable easy
c                switch between 32bit/64 bit data format
c
c              Patrick Heimbach, heimbach@mit.edu  01-May-2001
c              - added obcs parameters
c
c     mods for pkg/seaice: menemenlis@jpl.nasa.gov 20-Dec-2002
c
c     ==================================================================
c     HEADER exf_param
c     ==================================================================

c     Year in seconds
      Real*8     year2sec

c     Repeat period for forcing fields (s)
c     For example, for yearly repeat period: repeatPeriod=31556925.
c     Note: this option is not yet coded for sub-daily
c           forcing and for leap years but this limitation can be
c           circumvented by using a 4-year (1461-day) repeatPeriod
      Real*8     repeatPeriod

c     Monitor Frequency (s)
      Real*8     exf_monFreq

c     Drag coefficient scaling factor
      Real*8     exf_scal_BulkCdn

c     Maximum absolute windstress, used to reset unreastically high
c     data values
      Real*8     windstressmax

c     Description of contents of surface boundary condition files
c     Note: fieldperiod=0 means input file is one time-constant field
c           fieldperiod=-12 means input file contains 12 monthly means

      integer hfluxstartdate1
      integer hfluxstartdate2
      Real*8     hfluxstartdate
      Real*8     hfluxperiod
      Real*8     hfluxconst
      Real*8     hflux_exfremo_intercept
      Real*8     hflux_exfremo_slope
      character*1 hfluxmask
      parameter(  hfluxmask = 's' )

      integer atempstartdate1
      integer atempstartdate2
      Real*8     atempstartdate
      Real*8     atempperiod
      Real*8     atempconst
      Real*8     atemp_exfremo_intercept
      Real*8     atemp_exfremo_slope
      character*1 atempmask
      parameter(  atempmask = 's' )

      integer aqhstartdate1
      integer aqhstartdate2
      Real*8     aqhstartdate
      Real*8     aqhperiod
      Real*8     aqhconst
      Real*8     aqh_exfremo_intercept
      Real*8     aqh_exfremo_slope
      character*1 aqhmask
      parameter(  aqhmask = 's' )

      integer sfluxstartdate1
      integer sfluxstartdate2
      Real*8     sfluxstartdate
      Real*8     sfluxperiod
      Real*8     sfluxconst
      Real*8     sflux_exfremo_intercept
      Real*8     sflux_exfremo_slope
      character*1 sfluxmask
      parameter(  sfluxmask = 's' )

      integer evapstartdate1
      integer evapstartdate2
      Real*8     evapstartdate
      Real*8     evapperiod
      Real*8     evapconst
      Real*8     evap_exfremo_intercept
      Real*8     evap_exfremo_slope
      character*1 evapmask
      parameter(  evapmask = 's' )

      integer precipstartdate1
      integer precipstartdate2
      Real*8     precipstartdate
      Real*8     precipperiod
      Real*8     precipconst
      Real*8     precip_exfremo_intercept
      Real*8     precip_exfremo_slope
      character*1 precipmask
      parameter(  precipmask = 's' )

      integer snowprecipstartdate1
      integer snowprecipstartdate2
      Real*8     snowprecipstartdate
      Real*8     snowprecipperiod
      Real*8     snowprecipconst
      Real*8     snowprecip_exfremo_intercept
      Real*8     snowprecip_exfremo_slope
      character*1 snowprecipmask
      parameter(  snowprecipmask = 's' )

      integer runoffstartdate1
      integer runoffstartdate2
      Real*8     runoffstartdate
      Real*8     runoffperiod
      Real*8     runoffconst
      Real*8     runoff_exfremo_intercept
      Real*8     runoff_exfremo_slope
      character*1 runoffmask
      parameter(  runoffmask = 's' )

      integer ustressstartdate1
      integer ustressstartdate2
      Real*8     ustressstartdate
      Real*8     ustressperiod
      Real*8     ustressconst
      Real*8     ustress_exfremo_intercept
      Real*8     ustress_exfremo_slope
      character*1 ustressmask
      parameter(  ustressmask = 'u' )

      integer vstressstartdate1
      integer vstressstartdate2
      Real*8     vstressstartdate
      Real*8     vstressperiod
      Real*8     vstressconst
      Real*8     vstress_exfremo_intercept
      Real*8     vstress_exfremo_slope
      character*1 vstressmask
      parameter(  vstressmask = 'v' )

      integer uwindstartdate1
      integer uwindstartdate2
      Real*8     uwindstartdate
      Real*8     uwindperiod
      Real*8     uwindconst
      Real*8     uwind_exfremo_intercept
      Real*8     uwind_exfremo_slope
      character*1 uwindmask
      parameter(  uwindmask = 's' )

      integer vwindstartdate1
      integer vwindstartdate2
      Real*8     vwindstartdate
      Real*8     vwindperiod
      Real*8     vwindconst
      Real*8     vwind_exfremo_intercept
      Real*8     vwind_exfremo_slope
      character*1 vwindmask
      parameter(  vwindmask = 's' )

      integer wspeedstartdate1
      integer wspeedstartdate2
      Real*8     wspeedstartdate
      Real*8     wspeedperiod
      Real*8     wspeedconst
      Real*8     wspeed_exfremo_intercept
      Real*8     wspeed_exfremo_slope
      character*1 wspeedmask
      parameter(  wspeedmask = 's' )

      integer swfluxstartdate1
      integer swfluxstartdate2
      Real*8     swfluxstartdate
      Real*8     swfluxperiod
      Real*8     swfluxconst
      Real*8     swflux_exfremo_intercept
      Real*8     swflux_exfremo_slope
      character*1 swfluxmask
      parameter(  swfluxmask = 's' )

      integer lwfluxstartdate1
      integer lwfluxstartdate2
      Real*8     lwfluxstartdate
      Real*8     lwfluxperiod
      Real*8     lwfluxconst
      Real*8     lwflux_exfremo_intercept
      Real*8     lwflux_exfremo_slope
      character*1 lwfluxmask
      parameter(  lwfluxmask = 's' )

      integer swdownstartdate1
      integer swdownstartdate2
      Real*8     swdownstartdate
      Real*8     swdownperiod
      Real*8     swdownconst
      Real*8     swdown_exfremo_intercept
      Real*8     swdown_exfremo_slope
      character*1 swdownmask
      parameter(  swdownmask = 's' )

      integer lwdownstartdate1
      integer lwdownstartdate2
      Real*8     lwdownstartdate
      Real*8     lwdownperiod
      Real*8     lwdownconst
      Real*8     lwdown_exfremo_intercept
      Real*8     lwdown_exfremo_slope
      character*1 lwdownmask
      parameter(  lwdownmask = 's' )

      integer apressurestartdate1
      integer apressurestartdate2
      Real*8     apressurestartdate
      Real*8     apressureperiod
      Real*8     apressureconst
      Real*8     apressure_exfremo_intercept
      Real*8     apressure_exfremo_slope
      character*1 apressuremask
      parameter(  apressuremask = 's' )

      integer areamaskstartdate1
      integer areamaskstartdate2
      Real*8     areamaskstartdate
      Real*8     areamaskperiod
      Real*8     areamaskTauRelax
      Real*8     areamaskconst
      Real*8     areamask_exfremo_intercept
      Real*8     areamask_exfremo_slope
      character*1 areamaskmask
      parameter(  areamaskmask = 's' )

c     Calendar data.
      integer climsststartdate1
      integer climsststartdate2
      Real*8     climsststartdate
      Real*8     climsstperiod
      Real*8     climsstTauRelax
      Real*8     climsstconst
      Real*8     climsst_exfremo_intercept
      Real*8     climsst_exfremo_slope
      character*1 climsstmask
      parameter(  climsstmask = 's' )

      integer climsssstartdate1
      integer climsssstartdate2
      Real*8     climsssstartdate
      Real*8     climsssperiod
      Real*8     climsssTauRelax
      Real*8     climsssconst
      Real*8     climsss_exfremo_intercept
      Real*8     climsss_exfremo_slope
      character*1 climsssmask
      parameter(  climsssmask = 's' )

      integer climustrstartdate1
      integer climustrstartdate2
      Real*8     climustrstartdate
      Real*8     climustrperiod
      Real*8     climustrTauRelax
      Real*8     climustrconst
      Real*8     climustr_exfremo_intercept
      Real*8     climustr_exfremo_slope
      character*1 climustrmask
      parameter(  climustrmask = 'u' )

      integer climvstrstartdate1
      integer climvstrstartdate2
      Real*8     climvstrstartdate
      Real*8     climvstrperiod
      Real*8     climvstrTauRelax
      Real*8     climvstrconst
      Real*8     climvstr_exfremo_intercept
      Real*8     climvstr_exfremo_slope
      character*1 climvstrmask
      parameter(  climvstrmask = 'v' )

c     freezing temperature is the minimum temperature allowed, used
c     to reset climatological temperatures fields where they have
c     values below climtempfreeze
      Real*8 climtempfreeze

c     the following variables are used in conjunction
c     with pkg/icefront to specify sub-glacial runoff
      integer sgrunoffstartdate1
      integer sgrunoffstartdate2
      Real*8     sgrunoffstartdate
      Real*8     sgrunoffperiod
      Real*8     sgrunoffconst
      Real*8     sgrunoff_exfremo_intercept
      Real*8     sgrunoff_exfremo_slope
      Real*8     exf_inscal_sgrunoff
      character*1 sgrunoffmask
      parameter(  sgrunoffmask = 's' )

c     the following variables are used in conjunction with pkg/obcs
c     to describe S/T/U/V open boundary condition files
      integer obcsNstartdate1
      integer obcsNstartdate2
      integer obcsSstartdate1
      integer obcsSstartdate2
      integer obcsEstartdate1
      integer obcsEstartdate2
      integer obcsWstartdate1
      integer obcsWstartdate2
      Real*8     obcsNstartdate
      Real*8     obcsNperiod
      Real*8     obcsSstartdate
      Real*8     obcsSperiod
      Real*8     obcsEstartdate
      Real*8     obcsEperiod
      Real*8     obcsWstartdate
      Real*8     obcsWperiod

c     the following variables are used in conjunction with pkg/obcs
c     and pkg/seaice to describe area, heff, hsnow, hsalt, uice,
c     and vice open boundary condition files
      integer siobNstartdate1
      integer siobNstartdate2
      integer siobSstartdate1
      integer siobSstartdate2
      integer siobEstartdate1
      integer siobEstartdate2
      integer siobWstartdate1
      integer siobWstartdate2
      Real*8     siobNstartdate
      Real*8     siobNperiod
      Real*8     siobSstartdate
      Real*8     siobSperiod
      Real*8     siobEstartdate
      Real*8     siobEperiod
      Real*8     siobWstartdate
      Real*8     siobWperiod

c     File names.
      character*(128) hfluxfile
      character*(128) atempfile
      character*(128) aqhfile
      character*(128) evapfile
      character*(128) precipfile
      character*(128) snowprecipfile
      character*(128) sfluxfile
      character*(128) runofffile
      character*(128) ustressfile
      character*(128) vstressfile
      character*(128) uwindfile
      character*(128) vwindfile
      character*(128) wspeedfile
      character*(128) swfluxfile
      character*(128) lwfluxfile
      character*(128) swdownfile
      character*(128) lwdownfile
      character*(128) apressurefile
      character*(128) areamaskfile
      character*(128) climsstfile
      character*(128) climsssfile
      character*(128) climustrfile
      character*(128) climvstrfile

C     exf_verbose        :: print more messages to STDOUT (e.g., when read new rec)
C     useExfCheckRange   :: check range of input/output field values
C     useExfYearlyFields :: when set, automatically add extension
C                           _YEAR to input file names; the yearly files need
C                           to contain all the records that pertain to
C                           a particular year, including day 1, hour zero
C     twoDigitYear       :: when set, use 2-digit year extension YR
C                           instead of _YEAR for useExfYearlyFields
C     readStressOnAgrid  :: read wind-streess located on model-grid, A-grid position
C     readStressOnCgrid  :: read wind-streess located on model-grid, C-grid position
C     stressIsOnCgrid    :: ustress & vstress are positioned on Arakawa C-grid
C     useStabilityFct_overIce :: over sea-ice, compute turbulent transfert
C                                coeff. function of stability (like over
C                                open ocean) rather than using fixed Coeff.
C     useRelativeWind    :: Subtract U/VVEL or U/VICE from U/VWIND before computing U/VSTRESS
C     noNegativeEvap     :: prevent negative evaporation (= sea-surface condensation)
C     useExfZenAlbedo    :: ocean albedo (direct part) may vary with zenith angle (see select_ZenAlbedo)
C     select_ZenAlbedo   :: switch to different methods to compute albedo (direct part)
C                        :: 0 just use exf_albedo
C                        :: 1 use daily mean albedo from exf_zenithangle_table.F
C                        :: 2 use daily mean albedo computed as in pkg/aim_v23
C                        :: 3 use daily variable albedo
C     useExfZenIncoming  :: compute incoming solar radiation along with zenith angle

      logical exf_verbose
      logical useExfCheckRange
      logical useExfYearlyFields, twoDigitYear
      logical readStressOnAgrid
      logical readStressOnCgrid
      logical stressIsOnCgrid
      logical useStabilityFct_overIce
      logical useRelativeWind
      logical noNegativeEvap

      logical useExfZenAlbedo
      integer select_ZenAlbedo
      logical useExfZenIncoming

      common /exf_param_l/
     &       exf_verbose, useExfCheckRange,
     &       useExfYearlyFields, twoDigitYear,
     &       useExfZenAlbedo, useExfZenIncoming,
     &       readStressOnAgrid, readStressOnCgrid,
     &       stressIsOnCgrid, useStabilityFct_overIce,
     &       useRelativeWind, noNegativeEvap
      common /exf_param_i/
     &       select_ZenAlbedo,
     &       hfluxstartdate1,   hfluxstartdate2,
     &       atempstartdate1,   atempstartdate2,
     &       aqhstartdate1,     aqhstartdate2,
     &       sfluxstartdate1,   sfluxstartdate2,
     &       evapstartdate1,    evapstartdate2,
     &       runoffstartdate1,  runoffstartdate2,
     &       sgrunoffstartdate1,sgrunoffstartdate2,
     &       precipstartdate1,  precipstartdate2,
     &       snowprecipstartdate1, snowprecipstartdate2,
     &       ustressstartdate1, ustressstartdate2,
     &       vstressstartdate1, vstressstartdate2,
     &       uwindstartdate1,   uwindstartdate2,
     &       vwindstartdate1,   vwindstartdate2,
     &       wspeedstartdate1,  wspeedstartdate2,
     &       swfluxstartdate1,  swfluxstartdate2,
     &       lwfluxstartdate1,  lwfluxstartdate2,
     &       swdownstartdate1,  swdownstartdate2,
     &       lwdownstartdate1,  lwdownstartdate2,
     &       obcsNstartdate1,   obcsNstartdate2,
     &       obcsSstartdate1,   obcsSstartdate2,
     &       obcsEstartdate1,   obcsEstartdate2,
     &       obcsWstartdate1,   obcsWstartdate2,
     &       siobNstartdate1,   siobNstartdate2,
     &       siobSstartdate1,   siobSstartdate2,
     &       siobEstartdate1,   siobEstartdate2,
     &       siobWstartdate1,   siobWstartdate2,
     &       apressurestartdate1,apressurestartdate2,
     &       areamaskstartdate1,areamaskstartdate2

      common /exf_param_r/
     &       year2sec,          windstressmax,
     &       repeatPeriod,      exf_monFreq,
     &       exf_scal_BulkCdn,
     &       hfluxperiod,       hfluxstartdate,
     &       atempperiod,       atempstartdate,
     &       aqhperiod,         aqhstartdate,
     &       sfluxperiod,       sfluxstartdate,
     &       evapperiod,        evapstartdate,
     &       precipperiod,      precipstartdate,
     &       snowprecipperiod,  snowprecipstartdate,
     &       runoffperiod,      runoffstartdate,
     &       sgrunoffperiod,    sgrunoffstartdate,
     &       ustressperiod,     ustressstartdate,
     &       vstressperiod,     vstressstartdate,
     &       uwindperiod,       uwindstartdate,
     &       vwindperiod,       vwindstartdate,
     &       wspeedperiod,      wspeedstartdate,
     &       swfluxperiod,      swfluxstartdate,
     &       lwfluxperiod,      lwfluxstartdate,
     &       swdownperiod,      swdownstartdate,
     &       lwdownperiod,      lwdownstartdate,
     &       obcsNperiod,       obcsNstartdate,
     &       obcsSperiod,       obcsSstartdate,
     &       obcsEperiod,       obcsEstartdate,
     &       obcsWperiod,       obcsWstartdate,
     &       siobNperiod,       siobNstartdate,
     &       siobSperiod,       siobSstartdate,
     &       siobEperiod,       siobEstartdate,
     &       siobWperiod,       siobWstartdate,
     &       apressureperiod,   apressurestartdate,
     &       areamaskperiod,   areamaskstartdate,
     &       hfluxconst,
     &       atempconst,
     &       aqhconst,
     &       sfluxconst,
     &       evapconst,
     &       precipconst,
     &       snowprecipconst,
     &       runoffconst,
     &       sgrunoffconst,
     &       ustressconst,
     &       vstressconst,
     &       uwindconst,
     &       vwindconst,
     &       wspeedconst,
     &       swfluxconst,
     &       lwfluxconst,
     &       swdownconst,
     &       lwdownconst,
     &       apressureconst,
     &       areamaskTauRelax,
     &       areamaskconst

      common /exf_param_trend_removal/
     &       hflux_exfremo_intercept,
     &       atemp_exfremo_intercept,
     &       aqh_exfremo_intercept,
     &       sflux_exfremo_intercept,
     &       evap_exfremo_intercept,
     &       precip_exfremo_intercept,
     &       snowprecip_exfremo_intercept,
     &       runoff_exfremo_intercept,
     &       sgrunoff_exfremo_intercept,
     &       ustress_exfremo_intercept,
     &       vstress_exfremo_intercept,
     &       uwind_exfremo_intercept,
     &       vwind_exfremo_intercept,
     &       wspeed_exfremo_intercept,
     &       swflux_exfremo_intercept,
     &       lwflux_exfremo_intercept,
     &       swdown_exfremo_intercept,
     &       lwdown_exfremo_intercept,
     &       apressure_exfremo_intercept,
     &       areamask_exfremo_intercept,
     &       hflux_exfremo_slope,
     &       atemp_exfremo_slope,
     &       aqh_exfremo_slope,
     &       sflux_exfremo_slope,
     &       evap_exfremo_slope,
     &       precip_exfremo_slope,
     &       snowprecip_exfremo_slope,
     &       runoff_exfremo_slope,
     &       sgrunoff_exfremo_slope,
     &       ustress_exfremo_slope,
     &       vstress_exfremo_slope,
     &       uwind_exfremo_slope,
     &       vwind_exfremo_slope,
     &       wspeed_exfremo_slope,
     &       swflux_exfremo_slope,
     &       lwflux_exfremo_slope,
     &       swdown_exfremo_slope,
     &       lwdown_exfremo_slope,
     &       apressure_exfremo_slope,
     &       areamask_exfremo_slope

      common /exf_param_c/
     &       hfluxfile,
     &       atempfile,
     &       aqhfile,
     &       sfluxfile,
     &       evapfile,
     &       precipfile,
     &       snowprecipfile,
     &       runofffile,
     &       ustressfile,
     &       vstressfile,
     &       uwindfile,
     &       vwindfile,
     &       wspeedfile,
     &       swfluxfile,
     &       lwfluxfile,
     &       swdownfile,
     &       lwdownfile,
     &       apressurefile,
     &       areamaskfile

      common /exf_clim_i/
     &       climsststartdate1,  climsststartdate2,
     &       climsssstartdate1,  climsssstartdate2,
     &       climustrstartdate1,  climustrstartdate2,
     &       climvstrstartdate1,  climvstrstartdate2

      common /exf_clim_c/
     &       climsstfile,
     &       climsssfile,
     &       climustrfile,
     &       climvstrfile

      common /exf_clim_r/
     &       climtempfreeze,
     &       climsstperiod,      climsststartdate,
     &       climsssperiod,      climsssstartdate,
     &       climustrperiod,     climustrstartdate,
     &       climvstrperiod,     climvstrstartdate,
     &       climsstTauRelax,    climsssTauRelax,
     &       climustrTauRelax,   climvstrTauRelax,
     &       climsstconst,       climsssconst,
     &       climustrconst,      climvstrconst,
     &       climsst_exfremo_intercept, climsst_exfremo_slope,
     &       climsss_exfremo_intercept, climsss_exfremo_slope,
     &       climustr_exfremo_intercept, climustr_exfremo_slope,
     &       climvstr_exfremo_intercept, climvstr_exfremo_slope,
     &       exf_inscal_climsst, exf_inscal_climsss,
     &       exf_inscal_climustr, exf_inscal_climvstr

c     file precision and field type

      common /exf_param_type/
     &       exf_iprec,
     &       exf_iprec_obcs,
     &       exf_yftype

      integer exf_iprec
      integer exf_iprec_obcs
      character*(2) exf_yftype

c     exf_inscal_*      input scaling factors
c     exf_offset_atemp  input air temperature offset
c                       (for conversion from C to K, if needed)
c     exf_outscale_*    output scaling factors

      Real*8     exf_inscal_hflux
      Real*8     exf_inscal_sflux
      Real*8     exf_inscal_ustress
      Real*8     exf_inscal_vstress
      Real*8     exf_inscal_uwind
      Real*8     exf_inscal_vwind
      Real*8     exf_inscal_wspeed
      Real*8     exf_inscal_swflux
      Real*8     exf_inscal_lwflux
      Real*8     exf_inscal_precip
      Real*8     exf_inscal_snowprecip
      Real*8     exf_inscal_sst
      Real*8     exf_inscal_sss
      Real*8     exf_inscal_atemp
      Real*8     exf_offset_atemp
      Real*8     exf_inscal_aqh
      Real*8     exf_inscal_evap
      Real*8     exf_inscal_apressure
      Real*8     exf_inscal_runoff
      Real*8     exf_inscal_swdown
      Real*8     exf_inscal_lwdown
      Real*8     exf_inscal_climsst
      Real*8     exf_inscal_climsss
      Real*8     exf_inscal_climustr
      Real*8     exf_inscal_climvstr

      Real*8     exf_outscal_hflux
      Real*8     exf_outscal_sflux
      Real*8     exf_outscal_ustress
      Real*8     exf_outscal_vstress
      Real*8     exf_outscal_swflux
      Real*8     exf_outscal_sst
      Real*8     exf_outscal_sss
      Real*8     exf_outscal_apressure

      common /exf_param_scal/
     &                      exf_inscal_hflux
     &                    , exf_inscal_sflux
     &                    , exf_inscal_ustress
     &                    , exf_inscal_vstress
     &                    , exf_inscal_uwind
     &                    , exf_inscal_vwind
     &                    , exf_inscal_wspeed
     &                    , exf_inscal_swflux
     &                    , exf_inscal_lwflux
     &                    , exf_inscal_precip
     &                    , exf_inscal_snowprecip
     &                    , exf_inscal_sst
     &                    , exf_inscal_sss
     &                    , exf_inscal_atemp
     &                    , exf_offset_atemp
     &                    , exf_inscal_aqh
     &                    , exf_inscal_evap
     &                    , exf_inscal_apressure
     &                    , exf_inscal_runoff
     &                    , exf_inscal_sgrunoff
     &                    , exf_inscal_swdown
     &                    , exf_inscal_lwdown
     &                    , exf_outscal_hflux
     &                    , exf_outscal_sflux
     &                    , exf_outscal_ustress
     &                    , exf_outscal_vstress
     &                    , exf_outscal_swflux
     &                    , exf_outscal_sst
     &                    , exf_outscal_sss
     &                    , exf_outscal_apressure

C  To read input data without dynamical allocation ( undef),
C  buffer size currently set to 65000 (allows to read-in a 1x1 global data set)
C  Increase to 140000 to accommodate for ECMWF-INTERIM
      INTEGER    exf_interp_bufferSize
      PARAMETER( exf_interp_bufferSize = 140000 )
c for lat interpolation, arraysize currently set to 2176 max data values
       integer MAX_LAT_INC
       parameter(MAX_LAT_INC = 2176)
      Real*8 ustress_lon0, ustress_lon_inc
      Real*8 ustress_lat0, ustress_lat_inc(MAX_LAT_INC)
      INTEGER ustress_nlon, ustress_nlat
      Real*8 vstress_lon0, vstress_lon_inc
      Real*8 vstress_lat0, vstress_lat_inc(MAX_LAT_INC)
      INTEGER vstress_nlon, vstress_nlat
      Real*8 hflux_lon0, hflux_lon_inc
      Real*8 hflux_lat0, hflux_lat_inc(MAX_LAT_INC)
      INTEGER hflux_nlon, hflux_nlat
      Real*8 sflux_lon0, sflux_lon_inc
      Real*8 sflux_lat0, sflux_lat_inc(MAX_LAT_INC)
      INTEGER sflux_nlon, sflux_nlat
      Real*8 swflux_lon0, swflux_lon_inc
      Real*8 swflux_lat0, swflux_lat_inc(MAX_LAT_INC)
      INTEGER swflux_nlon, swflux_nlat
      Real*8 runoff_lon0, runoff_lon_inc
      Real*8 runoff_lat0, runoff_lat_inc(MAX_LAT_INC)
      INTEGER runoff_nlon, runoff_nlat
      Real*8 atemp_lon0, atemp_lon_inc
      Real*8 atemp_lat0, atemp_lat_inc(MAX_LAT_INC)
      INTEGER atemp_nlon, atemp_nlat
      Real*8 aqh_lon0, aqh_lon_inc
      Real*8 aqh_lat0, aqh_lat_inc(MAX_LAT_INC)
      INTEGER aqh_nlon, aqh_nlat
      Real*8 evap_lon0, evap_lon_inc
      Real*8 evap_lat0, evap_lat_inc(MAX_LAT_INC)
      INTEGER evap_nlon, evap_nlat
      Real*8 precip_lon0, precip_lon_inc
      Real*8 precip_lat0, precip_lat_inc(MAX_LAT_INC)
      INTEGER precip_nlon, precip_nlat
      Real*8 snowprecip_lon0, snowprecip_lon_inc
      Real*8 snowprecip_lat0, snowprecip_lat_inc(MAX_LAT_INC)
      INTEGER snowprecip_nlon, snowprecip_nlat
      Real*8 uwind_lon0, uwind_lon_inc
      Real*8 uwind_lat0, uwind_lat_inc(MAX_LAT_INC)
      INTEGER uwind_nlon, uwind_nlat
      Real*8 vwind_lon0, vwind_lon_inc
      Real*8 vwind_lat0, vwind_lat_inc(MAX_LAT_INC)
      INTEGER vwind_nlon, vwind_nlat
      Real*8 wspeed_lon0, wspeed_lon_inc
      Real*8 wspeed_lat0, wspeed_lat_inc(MAX_LAT_INC)
      INTEGER wspeed_nlon, wspeed_nlat
      Real*8 lwflux_lon0, lwflux_lon_inc
      Real*8 lwflux_lat0, lwflux_lat_inc(MAX_LAT_INC)
      INTEGER lwflux_nlon, lwflux_nlat
      Real*8 swdown_lon0, swdown_lon_inc
      Real*8 swdown_lat0, swdown_lat_inc(MAX_LAT_INC)
      INTEGER swdown_nlon, swdown_nlat
      Real*8 lwdown_lon0, lwdown_lon_inc
      Real*8 lwdown_lat0, lwdown_lat_inc(MAX_LAT_INC)
      INTEGER lwdown_nlon, lwdown_nlat
      Real*8 apressure_lon0,apressure_lon_inc
      Real*8 apressure_lat0,apressure_lat_inc(MAX_LAT_INC)
      INTEGER apressure_nlon,apressure_nlat
      Real*8 areamask_lon0,areamask_lon_inc
      Real*8 areamask_lat0,areamask_lat_inc(MAX_LAT_INC)
      INTEGER areamask_nlon,areamask_nlat

      common /exf_interpolation/
     & ustress_lon0, ustress_lon_inc,
     & ustress_lat0, ustress_lat_inc,
     & ustress_nlon, ustress_nlat,
     & vstress_lon0, vstress_lon_inc,
     & vstress_lat0, vstress_lat_inc,
     & vstress_nlon, vstress_nlat,
     & hflux_lon0, hflux_lon_inc,
     & hflux_lat0, hflux_lat_inc,
     & hflux_nlon, hflux_nlat,
     & sflux_lon0, sflux_lon_inc,
     & sflux_lat0, sflux_lat_inc,
     & sflux_nlon, sflux_nlat,
     & swflux_lon0, swflux_lon_inc,
     & swflux_lat0, swflux_lat_inc,
     & swflux_nlon, swflux_nlat,
     & runoff_lon0, runoff_lon_inc,
     & runoff_lat0, runoff_lat_inc,
     & runoff_nlon, runoff_nlat,
     & atemp_lon0, atemp_lon_inc,
     & atemp_lat0, atemp_lat_inc,
     & atemp_nlon, atemp_nlat,
     & aqh_lon0, aqh_lon_inc,
     & aqh_lat0, aqh_lat_inc,
     & aqh_nlon, aqh_nlat,
     & evap_lon0, evap_lon_inc,
     & evap_lat0, evap_lat_inc,
     & evap_nlon, evap_nlat,
     & precip_lon0, precip_lon_inc,
     & precip_lat0, precip_lat_inc,
     & precip_nlon, precip_nlat,
     & snowprecip_lon0, snowprecip_lon_inc,
     & snowprecip_lat0, snowprecip_lat_inc,
     & snowprecip_nlon, snowprecip_nlat,
     & uwind_lon0, uwind_lon_inc,
     & uwind_lat0, uwind_lat_inc,
     & uwind_nlon, uwind_nlat,
     & vwind_lon0, vwind_lon_inc,
     & vwind_lat0, vwind_lat_inc,
     & vwind_nlon, vwind_nlat,
     & wspeed_lon0, wspeed_lon_inc,
     & wspeed_lat0, wspeed_lat_inc,
     & wspeed_nlon, wspeed_nlat,
     & lwflux_lon0, lwflux_lon_inc,
     & lwflux_lat0, lwflux_lat_inc,
     & lwflux_nlon, lwflux_nlat,
     & swdown_lon0, swdown_lon_inc,
     & swdown_lat0, swdown_lat_inc,
     & swdown_nlon, swdown_nlat,
     & lwdown_lon0, lwdown_lon_inc,
     & lwdown_lat0, lwdown_lat_inc,
     & lwdown_nlon, lwdown_nlat,
     & apressure_lon0,apressure_lon_inc,
     & apressure_lat0,apressure_lat_inc,
     & apressure_nlon,apressure_nlat,
     & areamask_lon0,areamask_lon_inc,
     & areamask_lat0,areamask_lat_inc,
     & areamask_nlon,areamask_nlat

      Real*8 climsst_lon0, climsst_lon_inc
      Real*8 climsst_lat0, climsst_lat_inc(MAX_LAT_INC)
      INTEGER climsst_nlon, climsst_nlat
      Real*8 climsss_lon0, climsss_lon_inc
      Real*8 climsss_lat0, climsss_lat_inc(MAX_LAT_INC)
      INTEGER climsss_nlon, climsss_nlat
      Real*8 climustr_lon0, climustr_lon_inc
      Real*8 climustr_lat0, climustr_lat_inc(MAX_LAT_INC)
      INTEGER climustr_nlon, climustr_nlat
      Real*8 climvstr_lon0, climvstr_lon_inc
      Real*8 climvstr_lat0, climvstr_lat_inc(MAX_LAT_INC)
      INTEGER climvstr_nlon, climvstr_nlat

      common /exf_clim_interpolation/
     & climsst_lon0, climsst_lon_inc,
     & climsst_lat0, climsst_lat_inc,
     & climsst_nlon, climsst_nlat,
     & climsss_lon0, climsss_lon_inc,
     & climsss_lat0, climsss_lat_inc,
     & climsss_nlon, climsss_nlat,
     & climustr_lon0, climustr_lon_inc,
     & climustr_lat0, climustr_lat_inc,
     & climustr_nlon, climustr_nlat,
     & climvstr_lon0, climvstr_lon_inc,
     & climvstr_lat0, climvstr_lat_inc,
     & climvstr_nlon, climvstr_nlat

C $Header: /csys/software/cvsroot/REcoM/MITgcm/recom/RECOM_EXF.h,v 1.4 2008/04/17 14:25:52 mlosch Exp $
C $Name:  $


      NAMELIST /RECOM_PARM02/
     &     pco2startdate1, pco2startdate2, pco2period,
     &     pco2repeatperiod,
     &     feduststartdate1, feduststartdate2, fedustperiod,
     &     fedustrepeatperiod
     &     ,pco2_lon0, pco2_lon_inc, pco2_lat0, pco2_lat_inc,
     &     fedust_lon0, fedust_lon_inc, fedust_lat0, fedust_lat_inc,
     &     pco2_nlon, pco2_nlat, fedust_nlon, fedust_nlat

      INTEGER pco2startdate1
      INTEGER pco2startdate2
      Real*8     pco2startdate
      Real*8     pco2period
      Real*8     pco2repeatperiod

      INTEGER feduststartdate1
      INTEGER feduststartdate2
      Real*8     feduststartdate
      Real*8     fedustperiod
      Real*8     fedustrepeatperiod

      COMMON /RECOM_EXF_PARMS_I/
     &     pco2startdate1, pco2startdate2,
     &     feduststartdate1, feduststartdate2
      COMMON /RECOM_EXF_PARMS_R/
     &     pco2startdate, pco2period, pco2repeatperiod,
     &     feduststartdate, fedustperiod, fedustrepeatperiod

      Real*8 pco2_lon0, pco2_lon_inc
      Real*8 pco2_lat0, pco2_lat_inc(MAX_LAT_INC)
      INTEGER pco2_nlon, pco2_nlat
      Real*8 fedust_lon0, fedust_lon_inc
      Real*8 fedust_lat0, fedust_lat_inc(MAX_LAT_INC)
      INTEGER fedust_nlon, fedust_nlat
      COMMON /RECOM_INTERPOLATION/
     & pco2_lon0, pco2_lon_inc,
     & pco2_lat0, pco2_lat_inc,
     & pco2_nlon, pco2_nlat,
     & fedust_lon0, fedust_lon_inc,
     & fedust_lat0, fedust_lat_inc,
     & fedust_nlon, fedust_nlat


      integer myThid

C     local variables
      integer iUnit, i
      integer date_array(4), difftime(4)
      character*128 record

C     definition of namelist
      namelist /REcoM_parameters/ 
     &     a_chl, k_w, 
     &     Ae, redfield, recom_Tref,
     & 
     &     alpha, P_cm, k_din, V_cm_fact, res_phy,
     &     deg_CHL, lossN, lossC, biosynth, 
     &     NCuptakeRatio, NCmax, NCmin, CHL_N_max,k_Fe, 
     &     Fe2N,
     &     Fe2N_benthos,
     &
     &     alpha_d, P_cm_d, k_din_d, V_cm_fact_d, res_phy_d,
     &     deg_CHL_d, lossN_d, lossC_d, biosynth_d, biosynthSi,
     &     NCuptakeRatio_d, NCmax_d, NCmin_d, chl_N_max_d,
     &     Fe2N_d, k_Fe_d, SiCuptakeRatio, 
     &     k_Si, SiNmin, SiNmax, SiCmin, SiCmax,
     &  
     &     lossN_z, lossC_z,
     &
     &     reminN, reminC, reminSi, 
     &     Vphy, Vdet, Vdia,
     &     Vdet_a, Vdet_b,
     &     f_TEP, x, agg_PCHO, agg_TEP, agg_PD, agg_PP,
     &     rho_N, rho_C1, rho_C2,
     &     decayRateBenN, decayRateBenC, decayRateBenSi,
     &     decayRateBenCa,
     &     res_het, loss_het, 
     &     pzdia, sdiasq, graz_max, epsilon, grazEff,
     &     TEPaggregation, EvansParslow, SINKadv,  
     &     write_flag, useReminSiT, FeLimit,
     & 
     &     kScavFe, totalLigand, ligandStabConst,
     &     NMinSlope, NMaxSlope, SiMinSlope, SiMaxSlope,
     &     ini, ini_Si, ini_Fe, k_CO2,  
     &     bio_step,
     &     calc_prod_ratio, 
     &     calc_diss_guts,
     &     calc_diss_rate,
     &     tiny


C     some initialisation
      record = ' '

C     set the defaults
      a_chl          = 0.03
      k_w            = 0.04
      Ae             = 4500.0
      recom_Tref     = 288.15
      redfield       = 6.625

      alpha          = 0.29           
      P_cm           = 4.10
      k_din          = 0.55               
      V_cm_fact      = 1.0
      res_phy        = 0.01                     
      deg_CHL        = 0.01           
      lossN          = 0.05             
      lossC          = 0.10             
      biosynth       = 2.33
      NCuptakeRatio  = 0.171
      NCmax          = 0.171
      NCmin          = 0.043
      CHL_N_max      = 4.9
      Fe2N           = 0.005 * 6.625
      Fe2N_benthos   = 0.68 / 64.0 * 6.625
      k_Fe           = 2.0
      NMinSlope      = 50.d0
      NMaxSlope      = 1000.d0

      alpha_d        = 0.29           
      P_cm_d         = 4.10
      k_din_d        = 0.55               
      V_cm_fact_d    = 1.0
      res_phy_d      = 0.01                     
      deg_CHL_d      = 0.01           
      lossN_d        = 0.05             
      lossC_d        = 0.10             
      biosynth_d     = 2.
      NCuptakeRatio_d= 0.171
      NCmax_d        = 0.171
      NCmin_d        = 0.043
      CHL_N_max_d    = 4.9
      Fe2N_d         = 0.005 * 6.625
      k_Fe_d         = 2.0
      biosynthSi     = 0.
      k_Si           = 4.
      SiNmin         = 0.3
      SiNmax         = 15.0
      SiCmin         = 0.0408
      SiCmax         = 0.8
      SiCuptakeRatio = 0.204
      SiMinSlope     = 1000.d0
      SiMaxSlope     = 1000.d0

      lossN_z        = 0.10
      lossC_z        = 0.10

      reminN         = 0.1
      reminC         = 0.1
      reminSi        = 0.02
      Vphy           = 0.
      Vdia           = 0.
      Vdet           = 10.
      Vdet_a         = 0.0288
      Vdet_b         = 20.
      rho_N          = 0.1              
      rho_C1         = 0.1 
      rho_C2         = 0.1                  
      f_TEP          = 0.0
      x              = 0.0
      agg_PCHO       = 0.0
      agg_TEP        = 0.0
      agg_PD         = 0.22
      agg_PP         = 0.02
      decayRateBenN  = -1.   ! why negative?
      decayRateBenC  = -1.
      decayRateBenSi = -1.
      decayRateBenCa = 0.005
      res_het        = 1.0
      loss_het       = 1.0
      pzdia          = 0.7 
      sdiasq         = 0.0
      graz_max       = 2.0
      epsilon        = 0.01
      grazEff        = 1.0

      useReminSiT    =.false.
      TEPaggregation =.false.
      EvansParslow   =.false.
      SINKadv        =.false.
      write_flag     =.false.
      benthicLayer   =.false.
      FeLimit  =.false.

      kScavFe         = 1.0D-3
      totalLigand     = 1.
      ligandStabConst = 100.

CCV: The parameters ini, ini_si and ini_si do not seem to be used anywhere. Throw them out?
      ini            = 1.
      ini_Si   = 0.5
      ini_Fe   = 0.5

CCV: k_co2 is not used anywhere. Throw it out or keep if for implementing CO2-sensitivity of 
CCV  some processes?
      k_CO2          = 1.5

      bio_step       = unset_integer
C      bgc_num        = error
C ratio of inorganic (calcite) to organic carbon production in small phytoplankton
C [dimensionless]
      calc_prod_ratio = 0.1
C fraction of calcite being dissolved during passage through zooplankton [dimensionless]
      calc_diss_guts  = 0.0
C dissolution rate of CaCO3 in the water column (assumed independent from undersaturation, 
C following OCMIP-2 recipes). The value here is estimated from a 3500 m e-folding scale
C and 20 m/day sinking speed of detritus. [1/second]
      calc_diss_rate  = 20.0/(3500.0*86400.0)


C     This value sets the minimum value a recom variable can have.
C     The default may be too small for some highly variable cases and may
C     lead (and has lead) to numerical instabilities in DIC
      tiny     = 2.23D-16

C     use the MITgcm standard for processing namelist files. This
C     requires the use of "#" as comment character.
      CALL OPEN_COPY_DATA_FILE(
     I     'data.recom', 'RECOM_READPARMS',
     O     iUnit,
     I     myThid )
      READ(UNIT=iUnit,NML=REcoM_parameters)
      CLOSE(iUnit)

C     determine, if there is a benthic layer
      if ( decayRateBenC .ge. 0. 
     &     .and. decayRateBenN .ge. 0. 
     &     .and. decayRateBenSi .ge. 0. )
     &     benthicLayer = .true.

C     set additional parameters
      recip_res_het = 0.
      if ( res_het .ne. 0 ) recip_res_het = 1./res_het
C     check time-step parameter compatiblity
      if (bio_step .eq. unset_integer) then 
       write(*,*) 'S/R REcoM_para_read: bio_step is set equal 1'//
     &      '==> internal biological timestep identical to the '//
     &      '    external one '
       bio_step=1
      else
       write(*,*)'S/R REcoM_para_read: bio_step is set equal',
     &      bio_step 
      endif

C     diagnostic
      if ( write_flag ) then
       write(*,*) 'S/R recom_readparms: a_chl         = ', a_chl
       write(*,*) 'S/R recom_readparms: alpha         = ', alpha
       write(*,*) 'S/R recom_readparms: P_cm          = ', P_cm
       write(*,*) 'S/R recom_readparms: k_din         = ', k_din      
       write(*,*) 'S/R recom_readparms: V_cm_fact     = ', V_cm_fact
       write(*,*) 'S/R recom_readparms: res_phy       = ', res_phy      
       write(*,*) 'S/R recom_readparms: deg_CHL       = ', deg_CHL
       write(*,*) 'S/R recom_readparms: lossN         = ', lossN
       write(*,*) 'S/R recom_readparms: lossC         = ', lossC  
       write(*,*) 'S/R recom_readparms: rho_N         = ', rho_N  
       write(*,*) 'S/R recom_readparms: rho_C1        = ', rho_C1
       write(*,*) 'S/R recom_readparms: rho_C2        = ', rho_C2     
       write(*,*) 'S/R recom_readparms: f_TEP         = ', f_TEP
       write(*,*) 'S/R recom_readparms: x             = ', x
       write(*,*) 'S/R recom_readparms: agg_PCHO      = ', agg_PCHO
       write(*,*) 'S/R recom_readparms: agg_TEP       = ', agg_TEP
       write(*,*) 'S/R recom_readparms: agg_PD        = ', agg_PD
       write(*,*) 'S/R recom_readparms: agg_PP        = ', agg_PP
       write(*,*) 'S/R recom_readparms: reminN        = ', reminN
       write(*,*) 'S/R recom_readparms: reminC        = ', reminC
       write(*,*) 'S/R recom_readparms: decayRateBenN = ',decayRateBenN
       write(*,*) 'S/R recom_readparms: decayRateBenC = ',decayRateBenC
       write(*,*) 'S/R recom_readparms: decayRateBenSi= ',
     &      decayRateBenSi
       write(*,*) 'S/R recom_readparms: decayRateBenCa= ',
     &      decayRateBenCa
       write(*,*) 'S/R recom_readparms: res_het       = ', res_het
       write(*,*) 'S/R recom_readparms: loss_het      = ', loss_het
       write(*,*) 'S/R recom_readparms: lossN_z       = ', lossN_z
       write(*,*) 'S/R recom_readparms: lossC_z       = ', lossC_z
       write(*,*) 'S/R recom_readparms: pzdia         = ', pzdia
       write(*,*) 'S/R recom_readparms: sdiasq        = ', sdiasq
       write(*,*) 'S/R recom_readparms: graz_max      = ', graz_max
       write(*,*) 'S/R recom_readparms: epsilon       = ', epsilon
       write(*,*) 'S/R recom_readparms: grazEff       = ', grazEff
       write(*,*) 'S/R recom_readparms: Vphy          = ', Vphy
       write(*,*) 'S/R recom_readparms: Vdia          = ', Vdia
       write(*,*) 'S/R recom_readparms: Vdet          = ', Vdet
       write(*,*) 'S/R recom_readparms: Vdet_a        = ', Vdet_a
       write(*,*) 'S/R recom_readparms: Vdet_b        = ', Vdet_b
       write(*,*) 'S/R recom_readparms: k_CO2         = ', k_CO2
       write(*,*) 'S/R recom_readparms: ini           = ', ini
       write(*,*) 'S/R recom_readparms: biosynth      = ', biosynth
       write(*,*) 'S/R recom_readparms: biosynthSi    = ', biosynthSi
       write(*,*) 'S/R recom_readparms: redfield      = ', redfield
       write(*,*) 'S/R recom_readparms: NCuptakeRatio = ', NCuptakeRatio
       write(*,*) 'S/R recom_readparms: NCmax         = ', NCmax
       write(*,*) 'S/R recom_readparms: NCmin         = ', NCmin
       write(*,*) 'S/R recom_readparms: CHL_N_max     = ', CHL_N_max
       write(*,*) 'S/R recom_readparms: k_w           = ', k_w
       write(*,*) 'S/R recom_readparms: Ae            = ', Ae
       write(*,*) 'S/R recom_readparms: recom_Tref    = ', recom_Tref
       write(*,*) 'S/R recom_readparms: bio_step      = ', bio_step
       write(*,*) 'S/R recom_readparms' 
       write(*,*) 'S/R recom_readparms: useReminSiT   = ', useReminSiT 
       write(*,*) 'S/R recom_readparms: TEPaggregation = ', 
     &      TEPaggregation
       write(*,*) 'S/R recom_readparms: EvansParslow  = ', EvansParslow
       write(*,*) 'S/R recom_readparms: benthicLayer  = ', benthicLayer
       write(*,*) 'S/R recom_readparms' 
       write(*,*) 'S/R recom_readparms: k_Si          = ', k_Si
       write(*,*) 'S/R recom_readparms: reminSi       = ', reminSi
       write(*,*) 'S/R recom_readparms: SiNmin        = ', SiNmin
       write(*,*) 'S/R recom_readparms: SiNmax        = ', SiNmax
       write(*,*) 'S/R recom_readparms: SiCmin        = ', SiCmin
       write(*,*) 'S/R recom_readparms: SiCmax        = ', SiCmax
       write(*,*) 'S/R recom_readparms: SiCuptakeRatio= ', 
     &      SiCuptakeRatio
       write(*,*) 'S/R recom_readparms' 
       write(*,*) 'S/R recom_readparms: FeLimit       = ', FeLimit
       write(*,*) 'S/R recom_readparms: Fe2N          = ', Fe2N
       write(*,*) 'S/R recom_readparms: Fe2N_benthos = ', Fe2N_benthos
       write(*,*) 'S/R recom_readparms: k_Fe          = ', k_Fe
       write(*,*) 'S/R recom_readparms: kScavFe       = ', kScavFe
       write(*,*) 'S/R recom_readparms: totalLigand   = ', totalLigand
       write(*,*) 'S/R recom_readparms: ligandStabConst = ', 
     &      ligandStabConst
       write(*,*) 'S/R recom_readparms: NMinSlope     = ', NMinSlope
       write(*,*) 'S/R recom_readparms: NMaxSlope     = ', NMaxSlope
       write(*,*) 'S/R recom_readparms: SiMinSlope    = ', SiMinSlope
       write(*,*) 'S/R recom_readparms: SiMaxSlope    = ', SiMaxSlope
       write(*,*) 'S/R recom_readparms: ini_Si        = ', ini_Si
       write(*,*) 'S/R recom_readparms: ini_Fe        = ', ini_Fe
       write(*,*) 'S/R recom_readparms: calc_prod_ratio = ',
     &       calc_prod_ratio
       write(*,*) 'S/R recom_readparms: calc_diss_guts = ',        
     &       calc_diss_guts
       write(*,*) 'S/R recom_readparms: calc_diss_rate = ',
     &       calc_diss_rate

      end if           

C     set defaults for parameters in RECOM.h
      recom_tiny             = tiny !0.d0
      brockReedInsolation    = .false.
      diurnalInsolation      = .false.
C     this one must always be true if runs are more than 1D and
C     gchem_forcing is called after do_blocking_exchanges, otherwise it
C     can be false.
      computeHalos           = .false.
      solarConstant          = 1353.d0
      parFrac                = 0.45d0
      cloudCover             = 0.5d0
      daysPerYear            = 360.d0
      fracTEP                = f_tep !0.d0
      constantIronSolubility = 0.01 
C     resuspension parameters (should really be run time parameters)
      recomDragQuadratic   = 0.01
      recom_sizeFraction   = 0.4
      recom_porosity       = 0.4
      recomCritShearStress = 1.D-2
C     some large number
      recomShearStressMax  = 1. D+23
C     typical values for recom_FeErosionRate  = 1.D-2 to -4
C     zero turns off resuspension
      recom_FeErosionRate  = 0.D-3
C
      recom_windFile   = ' '
      recom_pCO2File = ' '
      recom_ironFile   = ' '
      recom_silicaFile = ' '
      recom_CaCO3File = ' '
      pCO2startdate1 = 0
      pCO2startdate2 = 0
      pCO2startdate  = 0.d0
      pCO2period     = 0.d0
      pCO2repeatperiod = 0.d0
C
      feduststartdate1 = 0 
      feduststartdate2 = 0
      feduststartdate  = 0.d0
      fedustperiod     = 0.d0
CML      fedustrepeatperiod = 0.d0
      pCO2_lon0      = xgOrigin + delX(1) / 2 
      pCO2_lat0      = ygOrigin + delY(1) / 2
      pCO2_nlon      = Nx
      pCO2_nlat      = Ny
      pCO2_lon_inc   = delX(1)
      fedust_lon0    = xgOrigin + delX(1) / 2 
      fedust_lat0    = ygOrigin + delY(1) / 2
      fedust_nlon    = Nx
      fedust_nlat    = Ny
      fedust_lon_inc = delX(1)
      DO i=1,MAX_LAT_INC
       IF (i.LT.Ny) THEN
        pCO2_lat_inc(i)   = (delY(i) + delY(i)) / 2.
        fedust_lat_inc(i) = (delY(i) + delY(i)) / 2.
       ELSE
        pCO2_lat_inc(i)   = 0.
        fedust_lat_inc(i) = 0.
       ENDIF
      ENDDO

      CALL OPEN_COPY_DATA_FILE( 
     I     'data.recom', 'RECOM_READPARMS',
     O     iUnit,
     I     myThid )
      READ(UNIT=iUnit,NML=RECOM_PARM01)
      IF ( useEXF ) READ(UNIT=iUnit,NML=RECOM_PARM02)
C Close the open data file
      CLOSE(iUnit)


      IF ( recom_pCO2file .NE. ' ' .and. pCO2period .gt. 0. ) THEN
       call cal_FullDate  ( pCO2startdate1,   pCO2startdate2,
     &      date_array, mythid )
       call cal_TimePassed(modelstartdate,date_array,difftime,mythid)
       call cal_ToSeconds ( difftime, pCO2startdate,   mythid )
       pCO2startdate    = modelstart  + pCO2startdate
      ENDIF
      IF ( recom_ironfile .NE. ' ' .and. fedustperiod .gt. 0. ) THEN
       call cal_FullDate  ( feduststartdate1, feduststartdate2,
     &      date_array, mythid )
       call cal_TimePassed(modelstartdate,date_array,difftime,mythid)
       call cal_ToSeconds ( difftime, feduststartdate, mythid )
       feduststartdate    = modelstart  + feduststartdate
      ENDIF

      RETURN
      END

