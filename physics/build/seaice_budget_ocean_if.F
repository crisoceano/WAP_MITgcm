












C $Header: /u/gcmpack/MITgcm/pkg/seaice/seaice_budget_ocean_if.F,v 1.4 2010/11/19 16:21:08 mlosch Exp $
C $Name: checkpoint62r $

C $Header: /u/gcmpack/MITgcm/pkg/seaice/SEAICE_OPTIONS.h,v 1.38 2010/03/01 23:46:13 dimitri Exp $
C $Name:  $

C     /==========================================================C     | SEAICE_OPTIONS.h                                         |
C     | o CPP options file for sea ice package.                  |
C     |==========================================================|
C     | Use this file for selecting options within the sea ice   |
C     | package.                                                 |
C     \==========================================================/







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



C--   Write "text-plots" of certain fields in STDOUT for debugging.

C--   Allow sea-ice dynamic code.
C     This option is provided to allow use of TAMC
C     on the thermodynamics component of the code only.
C     Sea-ice dynamics can also be turned off at runtime
C     using variable SEAICEuseDYNAMICS.

C--   By default, the sea-ice package uses its own integrated bulk
C     formulae to compute fluxes (fu, fv, EmPmR, Qnet, and Qsw) over
C     open-ocean.  When this flag is set, these variables are computed
C     in a separate external package, for example, pkg/exf, and then
C     modified for sea-ice effects by pkg/seaice.

C--   By default, the sea-ice package uses 2-category thermodynamics.
C     When this flag is set, an 8-category calculation of ice
C     thermodynamics is carried out in groatb.F
C     Note the pickup_seaice.* generated by this option differ
C     from those generated with the default 2-category model.
C     Therefore it is not possible to switch between the two
C     in the middle of an integration.

C--   By default the freezing point of water is set to the value of 
C     the parameter SEAICE_freeze (=-1.96 by default). To use a
C     simple linear dependence of the freezing point on salinity, 
C     set the following flag (pressure is assumed to have no effect,
C     which is a good assumption for the top 20 meters). With this
C     option defined the parameter SEAICE_freeze has no effect.

C--   Allow SEAICEuseFlooding, which converts snow to ice if submerged.
C--   Added in 29/01/2015 - c62r should have this setting

C--   By default sea ice is fresh.  Set following flag for salty ice.

C--   Track sea ice age.

C--   By default the seaice model is discretized on a B-Grid (for 
C     historical reasons). Define the following flag to use a new
C     (not thoroughly) test version on a C-grid

C--   Only for the C-grid version it is possible to 
C     enable EVP code by defining the following flag
C--   When set use SEAICE_zetaMin and SEAICE_evpDampC to limit
C--   viscosities from below and above in seaice_evp
C--   not necessary, and not recommended
C     allow the truncated ellipse rheology (runtime flag SEAICEuseTEM)

C--   When set use MAX_HEFF to cap sea ice thickness in seaice_growth
C--   When set use SEAICE_clipVelocties = .true., to clip U/VICE at 40cm/s,
C--   not recommended


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***

CStartOfInterface
      SUBROUTINE SEAICE_BUDGET_OCEAN_IF(
     I     UG,
     U     TSURF,
     O     netHeatFlux, SWHeatFlux,
     I     bi, bj, myThid )
C     /================================================================C     | SUBROUTINE seaice_budget_ocean_if                              |
C     | o Calculate surface heat fluxes over open ocean                |
C     |   see Hibler, MWR, 108, 1943-1973, 1980                        |
C     |   If  is defined this routine simply     |
C     |   simply copies the global fields to the seaice-local fields.  |
C     |================================================================|
C     \================================================================/
      IMPLICIT NONE

C     === Global variables ===
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
C $Header: /u/gcmpack/MITgcm/model/inc/FFIELDS.h,v 1.39 2010/08/12 21:42:30 jmc Exp $
C $Name: checkpoint62r $
CBOP
C     !ROUTINE: FFIELDS.h
C     !INTERFACE:
C     include "FFIELDS.h"
C     !DESCRIPTION:
C     \bv
C     *==========================================================*
C     | FFIELDS.h
C     | o Model forcing fields
C     *==========================================================*
C     | More flexible surface forcing configurations are
C     | available via pkg/exf and pkg/seaice
C     *==========================================================*
C     \ev
CEOP
C
C     fu    :: Zonal surface wind stress in N/m^2
C              > 0 for increase in uVel, which is west to
C                  east for cartesian and spherical polar grids
C              Typical range: -0.5 < fu < 0.5
C              Southwest C-grid U point
C
C     fv    :: Meridional surface wind stress in N/m^2
C              > 0 for increase in vVel, which is south to
C                  north for cartesian and spherical polar grids
C              Typical range: -0.5 < fv < 0.5
C              Southwest C-grid V point
C
C     EmPmR :: Net upward freshwater flux in kg/m2/s
C              EmPmR = Evaporation - precipitation - runoff
C              > 0 for increase in salt (ocean salinity)
C              Typical range: -1e-4 < EmPmR < 1e-4
C              Southwest C-grid tracer point
C           NOTE: for backward compatibility EmPmRfile is specified in
C                 m/s when using external_fields_load.F.  It is converted
C                 to kg/m2/s by multiplying by rhoConstFresh.
C
C  saltFlux :: Net upward salt flux in psu.kg/m^2/s
C              flux of Salt taken out of the ocean per time unit (second).
C              Note: a) only used when salty sea-ice forms or melts.
C                    b) units: when salinity (unit= psu) is expressed
C                       in g/kg, saltFlux unit becomes g/m^2/s.
C              > 0 for decrease in SSS.
C              Southwest C-grid tracer point
C
C     Qnet  :: Net upward surface heat flux (including shortwave) in W/m^2
C              Qnet = latent + sensible + net longwave + net shortwave
C              > 0 for decrease in theta (ocean cooling)
C              Typical range: -250 < Qnet < 600
C              Southwest C-grid tracer point
C
C     Qsw   :: Net upward shortwave radiation in W/m^2
C              Qsw = - ( downward - ice and snow absorption - reflected )
C              > 0 for decrease in theta (ocean cooling)
C              Typical range: -350 < Qsw < 0
C              Southwest C-grid tracer point
C
C     dQdT  :: Thermal relaxation coefficient in W/m^2/degrees
C              Southwest C-grid tracer point
C
C     SST   :: Sea surface temperature in degrees C for relaxation
C              Southwest C-grid tracer point
C
C     SSS   :: Sea surface salinity in psu for relaxation
C              Southwest C-grid tracer point
C
C     lambdaThetaClimRelax :: Inverse time scale for relaxation ( 1/s ).
C
C     lambdaSaltClimRelax :: Inverse time scale for relaxation ( 1/s ).

C     pLoad :: for the ocean:      atmospheric pressure at z=eta
C                Units are           Pa=N/m^2
C              for the atmosphere: geopotential of the orography
C                Units are           meters (converted)
C  sIceLoad :: sea-ice loading, expressed in Mass of ice+snow / area unit
C                Units are           kg/m^2
C              Note: only used with Sea-Ice & RealFreshWater formulation
C     eddyPsiX -Zonal Eddy Streamfunction in m^2/s used in taueddy_external_forcing.F
C     eddyPsiY -Meridional Streamfunction in m^2/s used in taueddy_external_forcing.F
C     EfluxY - y-component of Eliassen-Palm flux vector
C     EfluxP - p-component of Eliassen-Palm flux vector
      INTEGER M
      PARAMETER (M=7)
      INTEGER MM
      PARAMETER (MM=8)

      COMMON /FFIELDS_fu/ fu
      COMMON /FFIELDS_fv/ fv
      COMMON /FFIELDS_Qnet/ Qnet
      COMMON /FFIELDS_Qsw/ Qsw
C      COMMON /FFIELDS_QSWM/ QSWM
C      COMMON /FFIELDS_AREAM/ AREAM
      COMMON /FFIELDS_dQdT/ dQdT
      COMMON /FFIELDS_EmPmR/ EmPmR
      COMMON /FFIELDS_saltFlux/ saltFlux
      COMMON /FFIELDS_SST/ SST
      COMMON /FFIELDS_SSS/ SSS
      COMMON /FFIELDS_lambdaThetaClimRelax/ lambdaThetaClimRelax
      COMMON /FFIELDS_lambdaSaltClimRelax/ lambdaSaltClimRelax
      COMMON /FFIELDS_pLoad/ pLoad
      COMMON /FFIELDS_sIceLoad/ sIceLoad

      Real*8  fu       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  fv       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  Qnet     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  Qsw      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C      Real*8  QSWM     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,MM,nSx,nSy)
C      Real*8  AREAM    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,M,nSx,nSy)
      Real*8  dQdT     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  EmPmR    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  saltFlux (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  SST      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  SSS      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  lambdaThetaClimRelax(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  lambdaSaltClimRelax(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  pLoad    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  sIceLoad (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)



C     taux[0,1]     :: Temp. for zonal wind stress
C     tauy[0,1]     :: Temp. for merid. wind stress
C     Qnet[0,1]     :: Temp. for heat flux
C     EmPmR[0,1]    :: Temp. for fresh water flux
C     saltFlux[0,1] :: Temp. for isurface salt flux
C     SST[0,1]      :: Temp. for theta climatalogy
C     SSS[0,1]      :: Temp. for theta climatalogy
C     Qsw[0,1]      :: Temp. for short wave component of heat flux
C     pLoad[0,1]    :: Temp. for atmospheric pressure at z=eta
C     [0,1]         :: End points for interpolation
C     Above use static heap storage to allow exchange.

      COMMON /TDFIELDS/
     &                 taux0, tauy0, Qnet0, EmPmR0, SST0, SSS0,
     &                 taux1, tauy1, Qnet1, EmPmR1, SST1, SSS1,
     &                 saltFlux0, saltFlux1
     &               , Qsw0, Qsw1
     &               , pLoad0, pLoad1

      Real*8  taux0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  tauy0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  Qnet0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  EmPmR0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  saltFlux0(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  SST0     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  SSS0     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  taux1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  tauy1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  Qnet1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  EmPmR1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  saltFlux1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  SST1     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  SSS1     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  pLoad0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  pLoad1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  Qsw1     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  Qsw0     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C     surfaceForcingU     units are  r_unit.m/s^2 (=m^2/s^2 if r=z)
C                -> usage in gU:     gU = gU + surfaceForcingU/drF [m/s^2]
C     surfaceForcingV     units are  r_unit.m/s^2 (=m^2/s^-2 if r=z)
C                -> usage in gU:     gV = gV + surfaceForcingV/drF [m/s^2]
C
C     surfaceForcingS     units are  r_unit.psu/s (=psu.m/s if r=z)
C            - EmPmR * S_surf plus salinity relaxation*drF(1)
C                -> usage in gS:     gS = gS + surfaceForcingS/drF [psu/s]
C
C     surfaceForcingT     units are  r_unit.Kelvin/s (=Kelvin.m/s if r=z)
C            - Qnet (+Qsw) plus temp. relaxation*drF(1)
C                -> calculate        -lambda*(T(model)-T(clim))
C            Qnet assumed to be net heat flux including ShortWave rad.
C                -> usage in gT:     gT = gT + surfaceforcingT/drF [K/s]
C     surfaceForcingTice
C            - equivalent Temperature flux in the top level that corresponds
C              to the melting or freezing of sea-ice.
C              Note that the surface level temperature is modified
C              directly by the sea-ice model in order to maintain
C              water temperature under sea-ice at the freezing
C              point.  But we need to keep track of the
C              equivalent amount of heat that this surface-level
C              temperature change implies because it is used by
C              the KPP package (kpp_calc.F and kpp_transport_t.F).
C              Units are r_unit.K/s (=Kelvin.m/s if r=z) (>0 for ocean warming).

      COMMON /SURFACE_FORCING/
     &                         surfaceForcingU,
     &                         surfaceForcingV,
     &                         surfaceForcingT,
     &                         surfaceForcingS,
     &                         surfaceForcingTice
      Real*8  surfaceForcingU   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  surfaceForcingV   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  surfaceForcingT   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  surfaceForcingS   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  surfaceForcingTice(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C $Header: /u/gcmpack/MITgcm/pkg/seaice/SEAICE.h,v 1.54 2010/11/25 16:43:14 mlosch Exp $
C $Name: checkpoint62r $

CBOP
C !ROUTINE: SEAICE.h

C !DESCRIPTION: \bv
C     /==========================================================C     | SEAICE.h                                                 |
C     | o Basic header for sea ice model.                        |
C     |   Contains most sea ice field declarations.              |
C     \==========================================================/
C
C     UICE  - zonal ice velocity in m/s at South-West B-grid
C             (or C-grid #ifdef ) U point
C             >0 from West to East
C     UICEC - average of UICE(1) between last two time steps
C     VICE  - meridional ice velocity in m/s at South-West B-grid
C             (or C-grid #ifdef ) V point
C             >0 from South to North
C             note: the South-West B-grid U and V points are on
C                the lower, left-hand corner of each grid cell
C     VICEC - average of VICE(1) between last two time steps
C     AREA  - fractional ice-covered area in m^2/m^2
C             at center of grid, i.e., tracer point
C             0 is no cover, 1 is 100% cover
C     HEFF  - effective ice thickness in m
C             at center of grid, i.e., tracer point
C             note: for non-zero AREA, actual ice
C                thickness is HEFF / AREA
C     HSNOW - effective snow thickness in m
C             at center of grid, i.e., tracer point
C             note: for non-zero AREA, actual snow
C                thickness is HSNOW / AREA
C     HSALT - effective sea ice salinity in g/m^2
C             at center of grid, i.e., tracer point
C     ICEAGE- effective sea ice age in s
C             at center of grid, i.e., tracer point
C             note: for non-zero AREA, actual ice
C                age is ICEAGE / AREA
C \ev
CEOP
      INTEGER MULTDIM
      PARAMETER (MULTDIM=7)

C--   Grid variables for seaice
      COMMON/ARRAY/HEFFM
      Real*8 HEFFM      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON/ARRAYC/ seaiceMaskU, seaiceMaskV
      Real*8 seaiceMaskU(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 seaiceMaskV(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C     k1/2AtZ :: coefficients at C and Z points
C     k1/2AtC    for metric terms in U/V ice equations.
      COMMON/ARRAYCMETRIC/  k1AtC, k1AtZ, k2AtC, k2AtZ
      Real*8 k1AtC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 k1AtZ      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 k2AtC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 k2AtZ      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C--   Dynamical variables
      COMMON/SEAICE_DYNVARS_1/AREA,HEFF,HSNOW,UICE,VICE,QSWO,QSWM
C      COMMON/SEAICE_DYNVARS_1/AREA,HEFF,HSNOW,UICE,VICE
      Real*8 AREA       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 HEFF       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 HSNOW      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 UICE       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 VICE       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 QSWO       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 QSWM   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,1:MULTDIM+1,nSx,nSy)
      COMMON/SEAICE_DYNVARS_2/AREANM1,HEFFNM1,UICENM1,VICENM1
      Real*8 HEFFNM1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 AREANM1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 UICENM1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 VICENM1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C End of modifiation

      COMMON/SEAICE_DYNVARS_3/
     &     ETA,ZETA,PRESS, e11, e22, e12, 
     &     DRAGS,DRAGA,FORCEX,FORCEY,UICEC,VICEC
      Real*8 ETA        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 ZETA       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C     ice strength/pressure term
      Real*8 PRESS      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C     strain rate tensor
      Real*8 e11        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 e22        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 e12        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C
      Real*8 DRAGS      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 DRAGA      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 FORCEX     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 FORCEY     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 UICEC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 VICEC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON/SEAICE_DYNVARS_CGRID/
     &     seaiceMassC, seaiceMassU, seaiceMassV
      Real*8 seaiceMassC(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 seaiceMassU(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 seaiceMassV(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON/SEAICE_DYNVARS_4/
     &     DWATN, PRESS0, FORCEX0, FORCEY0, ZMAX, ZMIN
      Real*8 DWATN      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 PRESS0     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 FORCEX0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 FORCEY0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 ZMAX       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 ZMIN       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)



      COMMON/OFL/YNEG
      COMMON/RIV/RIVER
      Real*8 YNEG       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 RIVER      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C     saltWtrIce contains m of salty ice melted (<0) or created (>0)
C     frWtrIce contains m of freshwater ice melted (<0) or created (>0)
C              that is, ice due to precipitation or snow
C     frWtrAtm contains freshwater flux from the atmosphere
      COMMON/ICEFLUX/ saltWtrIce, frWtrIce
      Real*8 saltWtrIce (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 frWtrIce   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C      INTEGER MULTDIM
C      PARAMETER (MULTDIM=7)
      COMMON/MULTICATEGORY/TICES
      Real*8 TICES      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,MULTDIM,nSx,nSy)
C      Real*8 QSWM       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,MULTDIM,nSx,nSy)


C
C     additional fields needed by the EVP solver
C
C     seaice_sigma1  - sigma11+sigma22, defined at C-points
C     seaice_sigma2  - sigma11-sigma22, defined at C-points
C     seaice_sigma12 - off-diagonal term, defined at Z-points
      COMMON /SEAICE_EVP_FIELDS/
     &     seaice_sigma1, seaice_sigma2, seaice_sigma12
      Real*8 seaice_sigma1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 seaice_sigma2    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 seaice_sigma12   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C     stressDivergenceX/Y - divergence of stress tensor
      COMMON /SEAICE_STRESSDIV/
     &     stressDivergenceX, stressDivergenceY
      Real*8 stressDivergenceX(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 stressDivergenceY(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON/MIX/TMIX,TICE,AREAMT
      Real*8 TMIX       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 TICE       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 AREAMT     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON/WIND_STRESS_ICE/TAUX,TAUY
C     TAUX   - zonal      wind stress over ice at U point
C     TAUY   - meridional wind stress over ice at V point
      Real*8 TAUX       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 TAUY       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)



cif(
      Real*8 SWFRACB
      COMMON /SEAICE_SW_R/
     &       SWFRACB
cif)


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/pkg/seaice/SEAICE_PARAMS.h,v 1.69 2011/01/12 00:06:24 gforget Exp $
C $Name: checkpoint62r $

C     /==========================================================C     | SEAICE_PARAMS.h                                          |
C     | o Basic parameter header for sea ice model.              |
C     \==========================================================/

C--   COMMON /SEAICE_PARM_L/ Logical parameters of sea ice model.
C
C     SEAICEwriteState  - If true, write sea ice state to file;
C                         default is false.
C     SEAICEuseDYNAMICS - If false, do not use dynamics;
C                         default is to use dynamics.
C     SEAICEuseTEM      - to use truncated ellipse method (see Geiger et al.
C                         1998) set this parameter to true, default is false
C     SEAICEuseEVP      - If false, use Zhangs LSR solver for VP equations
C                         if true use elastic viscous plastic solver  
C     SEAICEuseFREEDRIFT - If True use free drift velocity instead of EVP or LSR
C     SEAICEuseEVPpickup - Set to false in order to start EVP solver with
C                          non-EVP pickup files.  Default is true.
C                          Applied only if SEAICEuseEVP=.TRUE.
C     SEAICEuseFluxForm :: use flux form for advection and diffusion
C                          of seaice
C     SEAICEuseMetricTerms :: use metric terms for dynamics solver
C                          (default = .true. )
C     SEAICEuseFlooding :: turn on scheme to convert submerged snow into ice
C     SEAICEadvHeff     :: turn on advection of effective thickness 
C                          (default = .true.)
C     SEAICEadvArea     :: turn on advection of fraction area
C                          (default = .true.)
C     SEAICEadvSnow     :: turn on advection of snow (does not work with
C                          non-default Leap-frog scheme for advection)
C     SEAICEadvSalt     :: turn on advection of salt (does not work with
C                          non-default Leap-frog scheme for advection)
C     SEAICEadvAge      :: turn on advection of ice age (does not work with
C                          non-default Leap-frog scheme for advection)
C     useHB87stressCoupling :: use an intergral over ice and ocean surface
C                          layer to define surface stresses on ocean
C                          following Hibler and Bryan (1987, JPO)
C     usePW79thermodynamics :: use "0-layer" thermodynamics as described in
C                           Parkinson and Washington (1979) and Hibler (1979)
C     SEAICErestoreUnderIce :: restore surface T/S also underneath ice
C                          ( default is false )
C     SEAICE_no_slip    :: apply no slip boundary conditions to seaice velocity
C     SEAICE_clipVelocities :: clip velocities to +/- 40cm/s
C     SEAICE_maskRHS    :: mask the RHS of the solver where there is no ice
C     SEAICE_tave_mdsio :: write TimeAverage output using MDSIO
C     SEAICE_dump_mdsio :: write snap-shot output   using MDSIO
C     SEAICE_mon_stdio  :: write monitor to std-outp
C     SEAICE_tave_mnc   :: write TimeAverage output using MNC
C     SEAICE_dump_mnc   :: write snap-shot output   using MNC
C     SEAICE_mon_mnc    :: write monitor to netcdf file
      LOGICAL
     &     SEAICEwriteState, SEAICEuseDYNAMICS, SEAICEuseEVP,
     &     SEAICEuseFREEDRIFT, SEAICEuseTEM,
     &     SEAICEuseMetricTerms,
     &     SEAICEuseEVPpickup, SEAICEuseFlooding, 
     &     SEAICEadvHeff, SEAICEadvArea,
     &     SEAICEadvSnow, SEAICEadvSalt, SEAICEadvAge,
     &     SEAICEuseFluxForm, useHB87stressCoupling,
     &     usePW79thermodynamics, SEAICErestoreUnderIce,
     &     SEAICE_no_slip, SEAICE_clipVelocities, SEAICE_maskRHS,
     &     SEAICE_tave_mdsio, SEAICE_dump_mdsio, SEAICE_mon_stdio,
     &     SEAICE_tave_mnc,   SEAICE_dump_mnc,   SEAICE_mon_mnc
      COMMON /SEAICE_PARM_L/
     &     SEAICEwriteState, SEAICEuseDYNAMICS, SEAICEuseEVP,
     &     SEAICEuseFREEDRIFT, SEAICEuseTEM,
     &     SEAICEuseMetricTerms,
     &     SEAICEuseEVPpickup, SEAICEuseFlooding, 
     &     SEAICEadvHeff, SEAICEadvArea,
     &     SEAICEadvSnow, SEAICEadvSalt, SEAICEadvAge,
     &     SEAICEuseFluxForm, useHB87stressCoupling,
     &     usePW79thermodynamics, SEAICErestoreUnderIce,
     &     SEAICE_no_slip, SEAICE_clipVelocities, SEAICE_maskRHS,
     &     SEAICE_tave_mdsio, SEAICE_dump_mdsio, SEAICE_mon_stdio,
     &     SEAICE_tave_mnc,   SEAICE_dump_mnc,   SEAICE_mon_mnc

C--   COMMON /SEAICE_PARM_I/ Integer valued parameters of sea ice model.
C     LAD        - time stepping used for sea-ice advection:
C                  1 = LEAPFROG,  2 = BACKWARD EULER.
C     IMAX_TICE  - number of iterations for ice heat budget   10
C     SOLV_MAX_ITERS   - maximum number of allowed solver iterations
C     SOLV_NCHECK      - iteration interval for solver convergence test
C     NPSEUDOTIMESTEPS - number of extra pseudo time steps (default = 0)
C     SEAICEadvScheme  - sets the advection scheme for thickness and area
C     SEAICEadvSchArea - sets the advection scheme for area
C     SEAICEadvSchHeff - sets the advection scheme for effective thickness 
C                        (=volume), snow thickness, and salt if available
C     SEAICEadvSchSnow - sets the advection scheme for snow on sea-ice
C     SEAICEadvSchSalt - sets the advection scheme for sea ice salinity
C     SEAICEadvSchAge  - sets the advection scheme for sea ice age
C
      INTEGER LAD, IMAX_TICE
      INTEGER SOLV_MAX_ITERS, SOLV_NCHECK
      INTEGER MPSEUDOTIMESTEPS, NPSEUDOTIMESTEPS
      INTEGER SEAICEadvScheme
      INTEGER SEAICEadvSchArea
      INTEGER SEAICEadvSchHeff
      INTEGER SEAICEadvSchSnow
      INTEGER SEAICEadvSchSalt
      INTEGER SEAICEadvSchAge
      INTEGER SEAICEadjMODE
      COMMON /SEAICE_PARM_I/ 
     &     LAD, IMAX_TICE,
     &     SOLV_MAX_ITERS, SOLV_NCHECK, NPSEUDOTIMESTEPS,
     &     SEAICEadvScheme,
     &     SEAICEadvSchArea,
     &     SEAICEadvSchHeff,
     &     SEAICEadvSchSnow,
     &     SEAICEadvSchSalt,
     &     SEAICEadvSchAge,
     &     SEAICEadjMODE
      PARAMETER (MPSEUDOTIMESTEPS=2)

C--   COMMON /SEAICE_PARM_C/ Character valued sea ice model parameters.
C     AreaFile        - File containing initial sea-ice concentration
C     HsnowFile       - File containing initial snow thickness
C     HsaltFile       - File containing initial sea ice salt content
C     IceAgeFile      - File containing initial sea ice age
C     HeffFile        - File containing initial sea-ice thickness
C        !!! NOTE !!! Initial sea-ice thickness can also be set using
C        SEAICE_initialHEFF below.  But a constant initial condition
C        can mean large artificial fluxes of heat and freshwater in
C        the surface layer during the first model time step.
C
      CHARACTER*(MAX_LEN_FNAM) AreaFile
      CHARACTER*(MAX_LEN_FNAM) HsnowFile
      CHARACTER*(MAX_LEN_FNAM) HsaltFile
      CHARACTER*(MAX_LEN_FNAM) IceAgeFile
      CHARACTER*(MAX_LEN_FNAM) HeffFile
      COMMON /SEAICE_PARM_C/
     &     AreaFile, HsnowFile, HsaltFile, IceAgeFile, HeffFile

C--   COMMON /SEAICE_PARM_RL/ Real valued parameters of sea ice model.
C     SEAICE_deltaTtherm - Seaice timestep for thermodynamic equations (s)
C     SEAICE_deltaTdyn   - Seaice timestep for dynamic solver          (s)
C     SEAICE_deltaTevp   - Seaice timestep for EVP solver              (s)
C     SEAICE_elasticParm - parameter that sets relaxation timescale
C                          tau = SEAICE_elasticParm * SEAICE_deltaTdyn
C     SEAICE_evpTauRelax - relaxation timescale tau                    (s)
C     SEAICE_evpDampC    - evp daming constant                         (kg/m^2)
C     SEAICE_zetaMaxFac  - factor detrmining the maximum viscosity     (s)
C                          (default = 5.e+12/2.e4 = 2.5e8)
C     SEAICE_zetaMin     - lower bound for viscosity (default = 0)     (N s/m^2)
C     SEAICE_monFreq     - SEAICE monitor frequency.                   (s)
C     SEAICE_dumpFreq    - SEAICE dump frequency.                      (s)
C     SEAICE_taveFreq    - SEAICE time-averaging frequency.            (s)
C     SEAICE_initialHEFF - initial sea-ice thickness                   (m)
C     SEAICE_rhoAir      - density of air                              (kg/m^3)
C     SEAICE_rhoIce      - density of sea ice                          (kg/m^3)
C     SEAICE_rhoSnow     - density of snow                             (kg/m^3)
C     ICE2WATR           - ratio of sea ice density to water density
C     OCEAN_drag         - air-ocean drag coefficient
C     SEAICE_cpAir       - specific heat of air                        (J/kg/K)
C
C     SEAICE_drag        - air-ice drag coefficient
C     SEAICE_waterDrag   - water-ice drag coefficient * water density
C     SEAICE_dryIceAlb   - winter albedo
C     SEAICE_wetIceAlb   - summer albedo
C     SEAICE_drySnowAlb  - dry snow albedo
C     SEAICE_wetSnowAlb  - wet snow albedo
C     HO                 - demarcation thickness between thin and
C                          thick ice: HO is a key ice-growth parameter
C
C     SEAICE_drag_south       - Southern Ocean SEAICE_drag
C     SEAICE_waterDrag_south  - Southern Ocean SEAICE_waterDrag
C     SEAICE_dryIceAlb_south  - Southern Ocean SEAICE_dryIceAlb
C     SEAICE_wetIceAlb_south  - Southern Ocean SEAICE_wetIceAlb
C     SEAICE_drySnowAlb_south - Southern Ocean SEAICE_drySnowAlb
C     SEAICE_wetSnowAlb_south - Southern Ocean SEAICE_wetSnowAlb
C     HO_south                - Southern Ocean HO
C
C     SEAICE_waterAlbedo - water albedo
C     SEAICE_strength    - sea-ice strength Pstar
C     SEAICE_eccen       - sea-ice eccentricity of the elliptical yield curve
C     SEAICE_lhSublim    - latent heat of sublimation for ice and snow (J/kg)
C     SEAICE_lhFusion    - latent heat of fusion for ice and snow (J/kg)
C     SEAICE_lhEvap      - latent heat of evaporation for water (J/kg)
C     SEAICE_dalton      - Dalton number (= sensible heat transfer coefficient)
C     SEAICE_iceConduct  - sea-ice conductivity
C     SEAICE_snowConduct - snow conductivity
C     SEAICE_emissivity  - Stefan-Boltzman constant * emissivity
C     SEAICE_snowThick   - cutoff snow thickness
C     SEAICE_shortwave   - penetration shortwave radiation factor
C     SEAICE_freeze      - FREEZING TEMP. OF SEA WATER
C     SEAICE_salinity    - initial salinity of sea ice defined as a
C                          fraction of the model surface level salinity
C     SIsal0             - prescribed salinity of seaice (in g/kg).
C     SEAICE_gamma_t     - timescale for melting ice from a warm mixed layer (s),
C                          3d = 259200s is a reasonable value, default=unset
C     SEAICE_gamma_t_frz - timescale for freezing ice from a cold mixed layer (s),
C                          3h = 10800s is a reasonable value, default=SEAICE_gamma_t
C     SEAICE_availHeatFrac - Fraction of surface level heat content used to
C                          melt ice; default=1 if SEAICE_gamma_t is unset, otherwise
C                          SEAICE_availHeatFrac=SEAICE_deltaTtherm/SEAICE_gamma_t
C     SEAICE_availHeatFracFrz - Fraction of surface level heat content used to
C                          freeze ice; default=SEAICE_availHeatFrac
C                          if SEAICE_gamma_t_frz is unset, otherwise
C                          SEAICE_availHeatFrac=SEAICE_deltaTtherm/SEAICE_gamma_t_frz
C     SEAICEstressFactor - factor by which ice affects wind stress (default=1)
C     LSR_ERROR          - sets accuracy of LSR solver
C     DIFF1              - parameter used in advect.F
C     A22                - parameter used in growth.F
C     areaMin            - if ice is present the ice cover is enforced to be > areaMin
C     hiceMin            - minimum value of hice used to regularize
C                          SEAICE_SOLVE4TEMP and d_AREAbyATM computations
C     areaMax            - usually set to 1. Seeting areaMax below 1. specifies 
C                          the minimun amount of leads (1-areaMax) in the ice pack.
C     SEAICE_airTurnAngle   - turning angles of air-ice interfacial stress 
C     SEAICE_waterTurnAngle - and ice-water interfacial stress (in degrees)
C
      Real*8 SEAICE_deltaTtherm, SEAICE_deltaTdyn, SEAICE_deltaTevp
      Real*8 SEAICE_monFreq, SEAICE_dumpFreq, SEAICE_taveFreq
      Real*8 SEAICE_initialHEFF
      Real*8 SEAICE_rhoAir, SEAICE_rhoIce, SEAICE_rhoSnow, ICE2WATR
      Real*8 SEAICE_cpAir
      Real*8 SEAICE_drag, SEAICE_waterDrag, SEAICE_dryIceAlb
      Real*8 SEAICE_wetIceAlb, SEAICE_drySnowAlb, SEAICE_wetSnowAlb, HO
      Real*8 SEAICE_drag_south, SEAICE_waterDrag_south
      Real*8 SEAICE_dryIceAlb_south, SEAICE_wetIceAlb_south
      Real*8 SEAICE_drySnowAlb_south, SEAICE_wetSnowAlb_south, HO_south
      Real*8 SEAICE_waterAlbedo, SEAICE_strength, SEAICE_eccen
      Real*8 SEAICE_lhSublim, SEAICE_lhFusion, SEAICE_lhEvap
      Real*8 SEAICE_dalton
      Real*8 SEAICE_iceConduct, SEAICE_snowConduct, SEAICE_emissivity
      Real*8 SEAICE_snowThick, SEAICE_shortwave, SEAICE_freeze
      Real*8 SEAICE_salinity, SIsal0, SEAICEstressFactor
      Real*8 SEAICE_gamma_t, SEAICE_gamma_t_frz
      Real*8 SEAICE_availHeatFrac, SEAICE_availHeatFracFrz
      Real*8 OCEAN_drag, LSR_ERROR, DIFF1, A22
      Real*8 areaMin, hiceMin, areaMax
      Real*8 SEAICE_airTurnAngle, SEAICE_waterTurnAngle
      Real*8 SEAICE_elasticParm, SEAICE_evpTauRelax
      Real*8 SEAICE_evpDampC, SEAICE_zetaMin, SEAICE_zetaMaxFac

      COMMON /SEAICE_PARM_RL/
     &    SEAICE_deltaTtherm, SEAICE_deltaTdyn,
     &    SEAICE_deltaTevp, SEAICE_elasticParm, SEAICE_evpTauRelax,
     &    SEAICE_evpDampC, SEAICE_zetaMin, SEAICE_zetaMaxFac,
     &    SEAICE_monFreq, SEAICE_dumpFreq, SEAICE_taveFreq,
     &    SEAICE_initialHEFF,
     &    SEAICE_rhoAir, SEAICE_rhoIce, SEAICE_rhoSnow, ICE2WATR,
     &    SEAICE_drag, SEAICE_waterDrag, SEAICE_dryIceAlb,
     &    SEAICE_wetIceAlb, SEAICE_drySnowAlb, SEAICE_wetSnowAlb, HO,
     &    SEAICE_drag_south, SEAICE_waterDrag_south,
     &    SEAICE_dryIceAlb_south, SEAICE_wetIceAlb_south,
     &    SEAICE_drySnowAlb_south, SEAICE_wetSnowAlb_south, HO_south,
     &    SEAICE_waterAlbedo, SEAICE_strength, SEAICE_eccen,
     &    SEAICE_lhSublim, SEAICE_lhFusion, SEAICE_lhEvap, 
     &    SEAICE_dalton, SEAICE_cpAir,
     &    SEAICE_iceConduct, SEAICE_snowConduct, SEAICE_emissivity,
     &    SEAICE_snowThick, SEAICE_shortwave, SEAICE_freeze,
     &    SEAICE_salinity, SIsal0, SEAICEstressFactor,
     &    SEAICE_gamma_t, SEAICE_gamma_t_frz,
     &    SEAICE_availHeatFrac, SEAICE_availHeatFracFrz,
     &    OCEAN_drag, LSR_ERROR, DIFF1, A22,
     &    areaMin, hiceMin, areaMax,
     &    SEAICE_airTurnAngle, SEAICE_waterTurnAngle

C--   COMMON /SEAICE_BOUND_RL/ Various bounding values
C     MAX_HEFF   - maximum ice thickness     (m)
C     MIN_ATEMP  - minimum air temperature   (deg C)
C     MIN_LWDOWN - minimum downward longwave (W/m^2)
C     MAX_TICE   - maximum ice temperature   (deg C)
C     MIN_TICE   - minimum ice temperature   (deg C)
C     SEAICE_EPS, SEAICE_EPS_SQ - used to reduce derivative singularities
C
      Real*8 MAX_HEFF, MIN_ATEMP, MIN_LWDOWN, MAX_TICE, MIN_TICE
      Real*8 SEAICE_EPS, SEAICE_EPS_SQ
      COMMON /SEAICE_BOUND_RL/
     &     MAX_HEFF, MIN_ATEMP, MIN_LWDOWN, MAX_TICE, MIN_TICE,
     &     SEAICE_EPS, SEAICE_EPS_SQ

C--   Constants used by sea-ice model
      Real*8         ZERO           , ONE           , TWO
      parameter ( ZERO = 0.0 D 0, ONE = 1.0 D 0, TWO = 2.0 D 0 )
      Real*8         QUART            , HALF
      parameter ( QUART = 0.25 D 0, HALF = 0.5 D 0 ) 

C--   identifiers for advected properties
      INTEGER GAD_HEFF,GAD_AREA,GAD_QICE1,GAD_QICE2,GAD_SNOW
      INTEGER GAD_SALT,GAD_AGE
      PARAMETER ( GAD_HEFF  = 1, 
     &            GAD_AREA  = 2,
     &            GAD_SNOW  = 3,
     &            GAD_SALT  = 4,
     &            GAD_AGE   = 5,
     &            GAD_QICE1 = 6,
     &            GAD_QICE2 = 7)

CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/model/inc/DYNVARS.h,v 1.41 2010/02/17 23:39:35 gforget Exp $
C $Name: checkpoint62r $

CBOP
C     !ROUTINE: DYNVARS.h
C     !INTERFACE:
C     include "DYNVARS.h"
C     !DESCRIPTION:
C     \bv
C     *==========================================================*
C     | DYNVARS.h
C     | o Dynamical model variables (common block DYNVARS_R)
C     *==========================================================*
C     | The value and two levels of time tendency are held for
C     | each prognostic variable.
C     *==========================================================*
C     \ev
CEOP

C     State Variables:
C     etaN  :: free-surface r-anomaly (r unit) at current time level
C     uVel  :: zonal velocity (m/s, i=1 held at western face)
C     vVel  :: meridional velocity (m/s, j=1 held at southern face)
C     theta :: potential temperature (oC, held at pressure/tracer point)
C     salt  :: salinity (ppt, held at pressure/tracer point)
C     gX, gxNm1 :: Time tendencies at current and previous time levels.
C     etaH  :: surface r-anomaly, advanced in time consistently
C              with 2.D flow divergence (Exact-Conservation):
C                etaH^n+1 = etaH^n - delta_t*Div.(H^n U^n)
C  note: a) used with "exactConserv" but strictly necessary for NonLinFreeSurf
C        b) same as etaN but not necessarely at the same time, e.g.:
C           implicDiv2DFlow=0 => etaH=etaN ; =1 => etaH=etaNm1 ;

      COMMON /DYNVARS_R/
     &                   etaN,
     &                   uVel,vVel,wVel,theta,salt,
     &                   gU,   gV,   gT,   gS,
     &                   guNm1,gvNm1,gtNm1,gsNm1
      Real*8  etaN  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  uVel (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  vVel (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  wVel (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  theta(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  salt (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gU(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gV(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gT(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gS(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  guNm1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gvNm1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gtNm1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  gsNm1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)

      COMMON /DYNVARS_R_2/
     &                   etaH
      Real*8  etaH  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)


cph(
cph the following block will eventually move to a separate
cph header file containing requires anomaly fields of control vars.
cph
cph
cph)



C     Diagnostic Variables:
C     phiHydLow    :: Phi-Hydrostatic at r-lower boundary
C                     (bottom in z-coordinates, top in p-coordinates)
C     totPhiHyd    :: total hydrostatic Potential (anomaly, for now),
C                     at cell center level ; includes surface contribution.
C                     (for diagnostic + used in Z-coord with EOS_funct_P)
C     rhoInSitu    :: In-Situ density anomaly [kg/m^3] at cell center level.
C     hMixLayer    :: Mixed layer depth [m]
C                     (for diagnostic + used GMRedi "fm07")
C     IVDConvCount :: Impl.Vert.Diffusion convection counter:
C                     = 0 (not convecting) or 1 (convecting)
      COMMON /DYNVARS_DIAG/
     &                       phiHydLow, totPhiHyd,
     &                       rhoInSitu,
     &                       hMixLayer, IVDConvCount
      Real*8  phiHydLow(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  totPhiHyd(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  rhoInSitu(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8  hMixLayer(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8  IVDConvCount(1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)

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


C $Header: /u/gcmpack/MITgcm/pkg/exf/EXF_FIELDS.h,v 1.13 2010/04/28 04:45:08 heimbach Exp $
C $Name: checkpoint62r $
c
c
C     ==================================================================
C     HEADER exf_fields
C     ==================================================================
c
C     o Header file for the surface flux data.
c
C     started: Ralf.Giering@FastOpt.de 25-Mai-2000
C     changed: field swap in adj. mode; heimbach@mit.edu 10-Jan-2002
C     included runoff D. Stammer, Nov. 25, 2001
C     mods for pkg/seaice: menemenlis@jpl.nasa.gov 20-Dec-2002
c
C     ==================================================================
C     HEADER exf_fields
C     ==================================================================
c
c
C     Field definitions, units, and sign conventions:
C     ===============================================
c
C     ustress   :: Zonal surface wind stress in N/m^2
C                  > 0 for increase in uVel, which is west to
C                      east for cartesian and spherical polar grids
C                  Typical range: -0.5 < ustress < 0.5
C                  Input field
c
C     vstress   :: Meridional surface wind stress in N/m^2
C                  > 0 for increase in vVel, which is south to
C                      north for cartesian and spherical polar grids
C                  Typical range: -0.5 < vstress < 0.5
C                  Input field
c
C     hflux     :: Net upward surface heat flux excluding shortwave in W/m^2
C                  hflux = latent + sensible + lwflux + swflux
C                  > 0 for decrease in theta (ocean cooling)
C                  Typical range: -250 < hflux < 600
C                  Input field
c
C     sflux     :: Net upward freshwater flux in m/s
C                  sflux = evap - precip - runoff
C                  > 0 for increase in salt (ocean salinity)
C                  Typical range: -1e-7 < sflux < 1e-7
C                  Input field
c
C     swflux    :: Net upward shortwave radiation in W/m^2
C                  swflux = - ( swdown - ice and snow absorption - reflected )
C                  > 0 for decrease in theta (ocean cooling)
C                  Typical range: -350 < swflux < 0
C                  Input field
c
C     uwind     :: Surface (10-m) zonal wind velocity in m/s
C                  > 0 for increase in uVel, which is west to
C                      east for cartesian and spherical polar grids
C                  Typical range: -10 < uwind < 10
C                  Input or input/output field
c
C     vwind     :: Surface (10-m) meridional wind velocity in m/s
C                  > 0 for increase in vVel, which is south to
C                      north for cartesian and spherical polar grids
C                  Typical range: -10 < vwind < 10
C                  Input or input/output field
c
C     wspeed    :: Surface (10-m) wind speed in m/s
C                  >= 0 sqrt(u^2+v^2)
C                  Typical range: 0 < wspeed < 10
C                  Input or input/output field
c
C     atemp     :: Surface (2-m) air temperature in deg K
C                  Typical range: 200 < atemp < 300
C                  Input or input/output field
c
C     aqh       :: Surface (2m) specific humidity in kg/kg
C                  Typical range: 0 < aqh < 0.02
C                  Input or input/output field
c
C     lwflux    :: Net upward longwave radiation in W/m^2
C                  lwflux = - ( lwdown - ice and snow absorption - emitted )
C                  > 0 for decrease in theta (ocean cooling)
C                  Typical range: -20 < lwflux < 170
C                  Input field
c
C     evap      :: Evaporation in m/s
C                  > 0 for increase in salt (ocean salinity)
C                  Typical range: 0 < evap < 2.5e-7
C                  Input, input/output, or output field
c
C     precip    :: Total Precipitation (rain+snow) in m/s of liquid water
C                  > 0 for decrease in salt (ocean salinity)
C                  Typical range: 0 < precip < 5e-7
C                  Input or input/output field
c
C     snowprecip :: snow precipitation in m/s of equivalent liquid water
C                  > 0 for decrease in salt (ocean salinity)
C                  Typical range: 0 < precip < 5e-7
C                  Input or input/output field
c
C     runoff    :: River and glacier runoff in m/s
C                  > 0 for decrease in salt (ocean salinity)
C                  Typical range: 0 < runoff < ????
C                  Input or input/output field
c
C     swdown    :: Downward shortwave radiation in W/m^2
C                  > 0 for increase in theta (ocean warming)
C                  Typical range: 0 < swdown < 450
C                  Input/output field
c
C     lwdown    :: Downward longwave radiation in W/m^2
C                  > 0 for increase in theta (ocean warming)
C                  Typical range: 50 < lwdown < 450
C                  Input/output field
c
C     apressure :: Atmospheric pressure field in N/m^2
C                  > 0 for ????
C                  Typical range: ???? < apressure < ????
C                  Input field
c
C     hs        :: sensible heat flux into ocean in W/m^2
C                  > 0 for increase in theta (ocean warming)
c
C     hl        :: latent   heat flux into ocean in W/m^2
C                  > 0 for increase in theta (ocean warming)
c
c
C     NOTES:
C     ======
c
C     By default all surface forcing fields are defined at the center
C     of each grid (the rVel location in model/inc/GRID.h) unless
C     flags readStressOnAgrid or readStressOnCgrid are set.
c
C     Input and output units and sign conventions can be customized
C     using variables exf_inscal_* and exf_outscal_*, which are set
C     by exf_readparms.F
c
C     Output fields fu, fv, Qnet, Qsw, and EmPmR are
C     defined in FFIELDS.h
c
C     Arrays *0 and *1 below are used for temporal interpolation.
c

      COMMON /exf_stress_r/ ustress, vstress
      Real*8 ustress   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 vstress   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_ustress_r/ ustress0, ustress1
      Real*8 ustress0  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 ustress1  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_vstress_r/ vstress0, vstress1
      Real*8 vstress0  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 vstress1  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_wspeed_r/ wspeed
      Real*8 wspeed   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_wspeed_r/ wspeed0, wspeed1
      Real*8 wspeed0  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 wspeed1  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_atm_wind_r/ uwind, vwind
      Real*8 uwind     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 vwind     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_uwind_r/ uwind0, uwind1
      Real*8 uwind0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 uwind1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_vwind_r/ vwind0, vwind1
      Real*8 vwind0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 vwind1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_hsflux_r/ hflux, sflux
      Real*8 hflux     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 sflux     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_hflux_r/ hflux0, hflux1
      Real*8 hflux0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 hflux1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_sflux_r/ sflux0, sflux1
      Real*8 sflux0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 sflux1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_atm_temp_r/ atemp, aqh, lwflux, precip, snowprecip
      Real*8 atemp     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 aqh       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 lwflux    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 precip    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 snowprecip (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_atemp_r/ atemp0, atemp1
      Real*8 atemp0    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 atemp1    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_aqh_r/ aqh0, aqh1
      Real*8 aqh0      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 aqh1      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_lwflux_r/ lwflux0, lwflux1
      Real*8 lwflux0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 lwflux1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_precip_r/ precip0, precip1
      Real*8 precip0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 precip1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_snowprecip_r/ snowprecip0, snowprecip1
      Real*8 snowprecip0(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 snowprecip1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_turb_r/ hs, hl
      Real*8 hs        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 hl        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C     wStress   :: wind-stress magnitude [Pa=N/m^2], @ grid-cell center
C     sh        :: wind-speed [m/s] (always larger than uMin)
      COMMON /exfl_wind_r/ wStress, cw, sw, sh
      Real*8 wStress   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 cw        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 sw        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 sh        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_swflux_r/ swflux
      Real*8 swflux    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_swflux_r/ swflux0, swflux1
      Real*8 swflux0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 swflux1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_evap/ evap
      Real*8 evap      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON /exfl_evap_r/ evap0, evap1
      Real*8 evap0     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 evap1     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_rad_down_r/
     &     swdown, lwdown, swdown0, swdown1, lwdown0, lwdown1
      Real*8 swdown    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 lwdown    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 swdown0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 swdown1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 lwdown0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 lwdown1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_apressure_r/ apressure, apressure0, apressure1
      Real*8 apressure (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 apressure0(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 apressure1(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exfl_runoff_r/ runoff, runoff0, runoff1
      Real*8 runoff    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 runoff0   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 runoff1   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)


      COMMON /exf_clim_sst_r/ climsst,
     &                        climsst0, climsst1
      Real*8 climsst       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 climsst0      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 climsst1      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON /exf_clim_sss_r/ climsss,
     &                        climsss0, climsss1
      Real*8 climsss       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 climsss0      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 climsss1      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)



C     === Routine arguments ===
C     INPUT:
C     UG      :: thermal wind of atmosphere
C     TSURF   :: surface temperature of ocean in Kelvin
C     bi,bj   :: loop indices
C     myThid  :: Thread no. that called this routine.
C     OUTPUT:
C     netHeatFlux :: net surface heat flux over open water or under ice
C     SWHeatFlux  :: short wave heat flux over open water or under ice
      Real*8 UG         (1-OLx:sNx+OLx,1-OLy:sNy+OLy)
      Real*8 TSURF      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 netHeatFlux(1-OLx:sNx+OLx,1-OLy:sNy+OLy)
      Real*8 SWHeatFlux (1-OLx:sNx+OLx,1-OLy:sNy+OLy)
      INTEGER bi, bj, myThid
CEndOfInterface


      RETURN
      END
