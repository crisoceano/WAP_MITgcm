












C $Header: /u/gcmpack/MITgcm/pkg/exf/exf_diagnostics_init.F,v 1.7 2010/01/12 21:31:15 jmc Exp $
C $Name: checkpoint62r $

C $Header: /u/gcmpack/MITgcm/verification/lab_sea/code/ECCO_CPPOPTIONS.h,v 1.6 2004/03/17 23:30:51 dimitri Exp $
C $Name:  $








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



CBOP
C     !ROUTINE: EXF_DIAGNOSTICS_INIT
C     !INTERFACE:
      SUBROUTINE EXF_DIAGNOSTICS_INIT( myThid )

C     !DESCRIPTION: \bv
C     *==========================================================*
C     | SUBROUTINE EXF_DIAGNOSTICS_INIT
C     | o Routine to initialize list of all available diagnostics
C     |   for EXF package
C     *==========================================================*
C     \ev
C     !USES:
      IMPLICIT NONE

C     === Global variables ===
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


C     !INPUT/OUTPUT PARAMETERS:
C     === Routine arguments ===
C     myThid ::  my Thread Id number
      INTEGER myThid
CEOP

C     !LOCAL VARIABLES:
C     === Local variables ===
C     diagNum   :: diagnostics number in the (long) list of available diag.
C     diagName  :: local short name (8c) of a diagnostics
C     diagCode  :: local parser field with characteristics of the diagnostics
C              cf head of S/R DIAGNOSTICS_INIT_EARLY or DIAGNOSTICS_MAIN_INIT
C     diagUnits :: local string (16c): physical units of a diagnostic field
C     diagTitle :: local string (80c): description of field in diagnostic
      INTEGER       diagNum
      CHARACTER*8   diagName
      CHARACTER*16  diagCode
      CHARACTER*16  diagUnits
      CHARACTER*(80) diagTitle

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|

      diagName  = 'EXFhs   '
      diagTitle = 'Sensible heat flux into ocean, >0 increases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFhl   '
      diagTitle = 'Latent heat flux into ocean, >0 increases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFlwnet'
      diagTitle = 'Net upward longwave radiation, >0 decreases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFswnet'
      diagTitle = 'Net upward shortwave radiation, >0 decreases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFlwdn '
      diagTitle = 'Downward longwave radiation, >0 increases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFswdn '
      diagTitle = 'Downward shortwave radiation, >0 increases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFqnet '
      diagTitle = 'Net upward heat flux (turb+rad), >0 decreases theta'
      diagUnits = 'W/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

C--   surface fluxes:
      diagName  = 'EXFtaux '
      diagTitle = 'zonal surface wind stress, >0 increases uVel    '
      diagUnits = 'N/m^2           '
      IF ( stressIsOnCgrid ) THEN
       diagCode = 'UU      U1      '
      ELSE
       diagCode = 'UM      U1      '
      ENDIF
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFtauy '
      diagTitle = 'meridional surface wind stress, >0 increases vVel'
      diagUnits = 'N/m^2           '
      IF ( stressIsOnCgrid ) THEN
       diagCode = 'VV      U1      '
      ELSE
       diagCode = 'VM      U1      '
      ENDIF
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFuwind'
      diagTitle = 'zonal 10-m wind speed, >0 increases uVel'
      diagUnits = 'm/s             '
      diagCode  = 'UM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I     diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFvwind'
      diagTitle = 'meridional 10-m wind speed, >0 increases uVel'
      diagUnits = 'm/s             '
      diagCode  = 'VM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFwspee'
      diagTitle = '10-m wind speed modulus ( >= 0 )'
      diagUnits = 'm/s             '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFatemp'
      diagTitle = 'surface (2-m) air temperature'
      diagUnits = 'degK            '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFaqh  '
      diagTitle = 'surface (2-m) specific humidity'
      diagUnits = 'kg/kg           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFevap '
      diagTitle = 'evaporation, > 0 increases salinity'
      diagUnits = 'm/s             '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFpreci'
      diagTitle = 'precipitation, > 0 decreases salinity'
      diagUnits = 'm/s             '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFsnow '
      diagTitle = 'snow precipitation, > 0 decreases salinity'
      diagUnits = 'm/s             '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFempmr'
      diagTitle = 'net upward freshwater flux, > 0 increases salinity'
      diagUnits = 'm/s             '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFpress'
      diagTitle = 'atmospheric pressure field'
      diagUnits = 'N/m^2           '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )

      diagName  = 'EXFroff '
      diagTitle = 'river runoff, > 0 decreases salinity'
      diagUnits = 'm/s             '
      diagCode  = 'SM      U1      '
      CALL DIAGNOSTICS_ADDTOLIST( diagNum,
     I          diagName, diagCode, diagUnits, diagTitle, 0, myThid )


      RETURN
      END
