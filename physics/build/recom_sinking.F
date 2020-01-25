












C$Header: /csys/software/cvsroot/REcoM/pkg/recom/recom_sinking.F,v 1.11 2007/10/01 14:49:15 mlosch Exp $
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

      subroutine recom_sinking(
     I     dt, recipDz, recipDzC, recip_hFacC, maskC, ws, c,
     O     sink, 
     O     export,
     O     export3d,
     I     n_max, iMin, iMax, jMin, jMax, bi, bj )
C---------------------------------------------------------------------     
C     this code is adopted from the MITgcm routine: 
C     |==========================================================|
C     | SUBROUTINE GAD_DST3_ADV_R                                |
C     | o Compute Vertical advective Flux of Tracer using        |
C     |   3rd Order DST Scheme with flux limiting               |
C     |==========================================================|
C
C     Author: Martin Losch, July, 2003

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

 
C     time increment [day] 
      Real*8     dt       
C     array boundaries
      integer n_max, iMin, iMax, jMin, jMax, bi, bj
C     
C     reciprocal of thickness of grid boxes [1/m] 
      Real*8 recipDz(n_max)
C     recipDzC :: reciprocal of the distance between cell centers 
C	          (i.e., tracer points)
      Real*8 recipDzC(n_max)
      Real*8 recip_hFacC(1-Olx:sNx+Olx,1-Oly:sNy+Oly,n_max,nSx,nSy)
      Real*8 maskC      (1-Olx:sNx+Olx,1-Oly:sNy+Oly,n_max,nSx,nSy)
C      sinking velocity [m/d]
      Real*8 ws(1-Olx:sNx+Olx,1-Oly:sNy+Oly,n_max) 
C     concentration [mmol m^{-3}]
      Real*8 c   (1-Olx:sNx+Olx,1-Oly:sNy+Oly,n_max,nSx,nSy)
C---- sink due to sinking [mmolm^{-3}d^{-1}]
      Real*8 sink(1-Olx:sNx+Olx,1-Oly:sNy+Oly,n_max)
C----               
C     loop counters and field indices
      integer i, j, k, km2, km1, kp1
C     abbreviations and flux limiters
      Real*8     Rjp, Rj, Rjm, wLoc, wP, wM, cfl
      Real*8     thetaP, thetaM, psiP, psiM, d0, d1
      Real*8     oneSixth
      parameter ( oneSixth = 1./6. )
C     vertical flux (positive upwards) through kth vertical cell interface
      Real*8     wFlux(1-Olx:sNx+Olx,1-Oly:sNy+Oly) !(1:n_max)
C     auxillary variable      
      Real*8     wFluxkp1(1-Olx:sNx+Olx,1-Oly:sNy+Oly) 
C     auxilliary variable for export diagnostics
      Real*8     export(1-Olx:sNx+Olx,1-Oly:sNy+Oly)
      Real*8 export3d(1-Olx:sNx+Olx,1-Oly:sNy+Oly,n_max) 
      integer kexp
      kexp = 7

C---------------------------------------------------------------------
C     some initializations
      do k = 1, n_max
       do j = jMin, jMax
        do i = iMin, iMax
         sink(i,j,k)    = 0.
        enddo
       enddo
      enddo
      do j = jMin, jMax
       do i = iMin, iMax
        wFlux   (i,j) = 0.
        wFluxkp1(i,j) = 0.
       end do
      end do

C     run the k-loop from bottom to top
      do k=n_max,2,-1
C     take care of loop boundaries by defining new field indices
       km2=MAX(1,k-2)
       km1=MAX(1,k-1)
       kp1=MIN(n_max,k+1)
       do j = jMin, jMax
        do i = iMin, iMax
C     use the "right" sign: downward velocity wLoc is negative, if sinking
C     (i.e., downward) velocity ws is positive 
         wLoc = -ws(i,j,k)*maskC(i,j,k,bi,bj)*maskC(i,j,km1,bi,bj)
C     some abbreviations
         wP = wLoc+abs(wLoc)
         wM = wLoc-abs(wLoc)
C     more abbreviations (tracer differences)
         Rjp=(c(i,j,k,  bi,bj)-c(i,j,kp1,bi,bj))*maskC(i,j,kp1,bi,bj)
         Rj =(c(i,j,km1,bi,bj)-c(i,j,k,  bi,bj))
     &        *maskC(i,j,k,bi,bj)*maskC(i,j,km1,bi,bj)
         Rjm=(c(i,j,km2,bi,bj)-c(i,j,km1,bi,bj))*maskC(i,j,km1,bi,bj)
C     compute Courant number cfl 
         cfl=abs(wLoc*dt*recipDzC(k))
C     DST3 parameters
         d0=(2.d0-cfl)*(1.d0-cfl)*oneSixth
         d1=(1.d0-cfl*cfl)*oneSixth
C     compute flux limiters psiP, and psiM
         thetaP=Rjm/(1.D-20+Rj)
c$$$       thetaP=0.
c$$$       IF (Rj.NE.0.) thetaP=Rjm/Rj
         psiP=d0+d1*thetaP
         psiP=MAX(0.d0, MIN( MIN(1.d0,psiP), 
     &        (1.d0-cfl)/(1.D-20+cfl)*thetaP))
         thetaM=Rjp/(1.D-20+Rj)
c$$$       thetaM=0.
c$$$       IF (Rj.NE.0.) thetaM=Rjp/Rj
         psiM=d0+d1*thetaM
         psiM=MAX(0.d0, MIN( MIN(1.d0,psiM),
     &      (1.d0-cfl)/(1.D-20+cfl)*thetaM))
C     compute flux at interface between cell k and (k-1)
         wflux(i,j)= 
     &        ( 0.5*wP*( c(i,j,k,  bi,bj) + psiM*Rj )
     &        + 0.5*wM*( c(i,j,km1,bi,bj) - psiP*Rj ) )
C     sink due to sinking for layer/cell k
C     minus sign because this has been moved to the right hand side
         sink(i,j,k) = -(wflux(i,j)-wFluxkp1(i,j))
     &        *recipDz(k)*recip_hFacC(i,j,k,bi,bj)*dt
C     store flux at level kp1 for the next cycle
         wfluxkp1(i,j) = wflux(i,j)       !(k)
        end do
       end do
C vertical flux at the upper edge of layer KEXP is written to diagnostic field
       if (k.eq.kexp) then
          do j = jMin, jMax
             do i = iMin, iMax
                export(i,j) = wflux(i,j)
             end do
          end do
       endif
C 
       do j = jMin, jMax
          do i = iMin, iMax
             export3d(i,j,k) = wflux(i,j)
          end do
       end do
      end do
C     surface flux is zero (no flux from above the surface)
      k=1
      do j = jMin, jMax
       do i = iMin, iMax
        wflux(i,j) = 0.
        sink(i,j,k) = -(wflux(i,j)-wFluxkp1(i,j))
     &       *recipDz(k)*recip_hFacC(i,j,k,bi,bj)*dt
       end do
      end do

      return
      end
