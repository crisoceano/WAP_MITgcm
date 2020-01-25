












C $Header: /csys/software/cvsroot/REcoM/MITgcm/recom/recom_forcing.F,v 1.49 2008/04/17 14:25:52 mlosch Exp $
C $Name:  $

C $Header: /u/gcmpack/MITgcm/pkg/gchem/GCHEM_OPTIONS.h,v 1.8 2008/04/07 20:19:47 dfer Exp $
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



CBOP
C     !ROUTINE: RECOM_FORCING
C     !INTERFACE:
      SUBROUTINE RECOM_FORCING( 
     I     iMin, iMax, jMin, jMax, bi, bj, myTime, myIter, myThid )
C     !DESCRIPTION: \bv
C     *==================================================================
C     | SUBROUTINE RECOM_FORCING
C     | o Calling interface for REcoM
C     *==================================================================
C     |
C     | RECOM_FORCING is the interface for calling a the bio-geo-chemical
C     | REcoM model (Markus Schartau)
C     | that provides source and sink terms for the passive tracers.
C     | the ptracers-package must be enabled for this interface to work
C     |
C     | RECOM_FORCING is called from GCHEM_FORCING, analogously to
C     | Stephanie Dutkiewicz's dic_forcing.
C     |
C     *==================================================================
C     \ev

C     !USES:
      IMPLICIT NONE
C     == Global variables ==
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
C $Header: /u/gcmpack/MITgcm/model/inc/GRID.h,v 1.41 2010/09/11 21:23:09 jmc Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: GRID.h
C    !INTERFACE:
C    include GRID.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | GRID.h
C     | o Header file defining model grid.
C     *==========================================================*
C     | Model grid is defined for each process by reference to
C     | the arrays set here.
C     | Notes
C     | =====
C     | The standard MITgcm convention of westmost, southern most
C     | and upper most having the (1,1,1) index is used here.
C     | i.e.
C     |----------------------------------------------------------
C     | (1)  Plan view schematic of model grid (top layer i.e. )
C     |      ================================= ( ocean surface )
C     |                                        ( or top of     )
C     |                                        ( atmosphere    )
C     |      This diagram shows the location of the model
C     |      prognostic variables on the model grid. The "T"
C     |      location is used for all tracers. The figure also
C     |      shows the southern most, western most indexing
C     |      convention that is used for all model variables.
C     |
C     |
C     |             V(i=1,                     V(i=Nx,
C     |               j=Ny+1,                    j=Ny+1,
C     |               k=1)                       k=1)
C     |                /|\                       /|\  "PWX"
C     |       |---------|------------------etc..  |---- *---
C     |       |                     |                   *  |
C     |"PWY"*******************************etc..  **********"PWY"
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x           |             x     *==>U
C     |  j=Ny,|      T(i=1,         |          T(i=Nx,  *(i=Nx+1,
C     |  k=1) |        j=Ny,        |            j=Ny,  *  |j=Ny,
C     |       |        k=1)         |            k=1)   *  |k=1)
C     |
C     |       .                     .                      .
C     |       .                     .                      .
C     |       .                     .                      .
C     |       e                     e                   *  e
C     |       t                     t                   *  t
C     |       c                     c                   *  c
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x           |             x     *  |
C     |  j=2, |      T(i=1,         |          T(i=Nx,  *  |
C     |  k=1) |        j=2,         |            j=2,   *  |
C     |       |        k=1)         |            k=1)   *  |
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |      -----------|------------------etc..  |-----*---
C     |       |       V(i=1,        |           V(i=Nx, *  |
C     |       |         j=2,        |             j=2,  *  |
C     |       |         k=1)        |             k=1)  *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x         ==>U(i=2,       x     *==>U
C     |  j=1, |      T(i=1,         |  j=1,    T(i=Nx,  *(i=Nx+1,
C     |  k=1) |        j=1,         |  k=1)      j=1,   *  |j=1,
C     |       |        k=1)         |            k=1)   *  |k=1)
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |"SB"++>|---------|------------------etc..  |-----*---
C     |      /+\      V(i=1,                    V(i=Nx, *
C     |       +         j=1,                      j=1,  *
C     |       +         k=1)                      k=1)  *
C     |     "WB"                                      "PWX"
C     |
C     |   N, y increasing northwards
C     |  /|\ j increasing northwards
C     |   |
C     |   |
C     |   ======>E, x increasing eastwards
C     |             i increasing eastwards
C     |
C     |    i: East-west index
C     |    j: North-south index
C     |    k: up-down index
C     |    U: x-velocity (m/s)
C     |    V: y-velocity (m/s)
C     |    T: potential temperature (oC)
C     | "SB": Southern boundary
C     | "WB": Western boundary
C     |"PWX": Periodic wrap around in X.
C     |"PWY": Periodic wrap around in Y.
C     |----------------------------------------------------------
C     | (2) South elevation schematic of model grid
C     |     =======================================
C     |     This diagram shows the location of the model
C     |     prognostic variables on the model grid. The "T"
C     |     location is used for all tracers. The figure also
C     |     shows the upper most, western most indexing
C     |     convention that is used for all model variables.
C     |
C     |      "WB"
C     |       +
C     |       +
C     |      \+/       /|\                       /|\       .
C     |"UB"++>|-------- | -----------------etc..  | ----*---
C     |       |    rVel(i=1,        |        rVel(i=Nx, *  |
C     |       |         j=1,        |             j=1,  *  |
C     |       |         k=1)        |             k=1)  *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x         ==>U(i=2,       x     *==>U
C     |  j=1, |      T(i=1,         |  j=1,    T(i=Nx,  *(i=Nx+1,
C     |  k=1) |        j=1,         |  k=1)      j=1,   *  |j=1,
C     |       |        k=1)         |            k=1)   *  |k=1)
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |       |-------- | -----------------etc..  | ----*---
C     |       |    rVel(i=1,        |        rVel(i=Nx, *  |
C     |       |         j=1,        |             j=1,  *  |
C     |       |         k=2)        |             k=2)  *  |
C     |
C     |       .                     .                      .
C     |       .                     .                      .
C     |       .                     .                      .
C     |       e                     e                   *  e
C     |       t                     t                   *  t
C     |       c                     c                   *  c
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |       |-------- | -----------------etc..  | ----*---
C     |       |    rVel(i=1,        |        rVel(i=Nx, *  |
C     |       |         j=1,        |             j=1,  *  |
C     |       |         k=Nr)       |             k=Nr) *  |
C     |U(i=1, ==>       x         ==>U(i=2,       x     *==>U
C     |  j=1, |      T(i=1,         |  j=1,    T(i=Nx,  *(i=Nx+1,
C     |  k=Nr)|        j=1,         |  k=Nr)     j=1,   *  |j=1,
C     |       |        k=Nr)        |            k=Nr)  *  |k=Nr)
C     |       |                     |                   *  |
C     |"LB"++>==============================================
C     |                                               "PWX"
C     |
C     | Up   increasing upwards.
C     |/|\                                                       .
C     | |
C     | |
C     | =====> E  i increasing eastwards
C     | |         x increasing eastwards
C     | |
C     |\|/
C     | Down,k increasing downwards.
C     |
C     | Note: r => height (m) => r increases upwards
C     |       r => pressure (Pa) => r increases downwards
C     |
C     |
C     |    i: East-west index
C     |    j: North-south index
C     |    k: up-down index
C     |    U: x-velocity (m/s)
C     | rVel: z-velocity ( units of r )
C     |       The vertical velocity variable rVel is in units of
C     |       "r" the vertical coordinate. r in m will give
C     |       rVel m/s. r in Pa will give rVel Pa/s.
C     |    T: potential temperature (oC)
C     | "UB": Upper boundary.
C     | "LB": Lower boundary (always solid - therefore om|w == 0)
C     | "WB": Western boundary
C     |"PWX": Periodic wrap around in X.
C     |----------------------------------------------------------
C     | (3) Views showing nomenclature and indexing
C     |     for grid descriptor variables.
C     |
C     |      Fig 3a. shows the orientation, indexing and
C     |      notation for the grid spacing terms used internally
C     |      for the evaluation of gradient and averaging terms.
C     |      These varaibles are set based on the model input
C     |      parameters which define the model grid in terms of
C     |      spacing in X, Y and Z.
C     |
C     |      Fig 3b. shows the orientation, indexing and
C     |      notation for the variables that are used to define
C     |      the model grid. These varaibles are set directly
C     |      from the model input.
C     |
C     | Figure 3a
C     | =========
C     |       |------------------------------------
C     |       |                       |
C     |"PWY"********************************* etc...
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |
C     |       .                       .
C     |       .                       .
C     |       .                       .
C     |       e                       e
C     |       t                       t
C     |       c                       c
C     |       |-----------v-----------|-----------v----------|-
C     |       |                       |                      |
C     |       |                       |                      |
C     |       |                       |                      |
C     |       |                       |                      |
C     |       |                       |                      |
C     |       u<--dxF(i=1,j=2,k=1)--->u           t          |
C     |       |/|\       /|\          |                      |
C     |       | |         |           |                      |
C     |       | |         |           |                      |
C     |       | |         |           |                      |
C     |       |dyU(i=1,  dyC(i=1,     |                      |
C     | ---  ---|--j=2,---|--j=2,-----------------v----------|-
C     | /|\   | |  k=1)   |  k=1)     |          /|\         |
C     |  |    | |         |           |          dyF(i=2,    |
C     |  |    | |         |           |           |  j=1,    |
C     |dyG(   |\|/       \|/          |           |  k=1)    |
C     |   i=1,u---        t<---dxC(i=2,j=1,k=1)-->t          |
C     |   j=1,|                       |           |          |
C     |   k=1)|                       |           |          |
C     |  |    |                       |           |          |
C     |  |    |                       |           |          |
C     | \|/   |           |<---dxV(i=2,j=1,k=1)--\|/         |
C     |"SB"++>|___________v___________|___________v__________|_
C     |       <--dxG(i=1,j=1,k=1)----->
C     |      /+\                                              .
C     |       +
C     |       +
C     |     "WB"
C     |
C     |   N, y increasing northwards
C     |  /|\ j increasing northwards
C     |   |
C     |   |
C     |   ======>E, x increasing eastwards
C     |             i increasing eastwards
C     |
C     |    i: East-west index
C     |    j: North-south index
C     |    k: up-down index
C     |    u: x-velocity point
C     |    V: y-velocity point
C     |    t: tracer point
C     | "SB": Southern boundary
C     | "WB": Western boundary
C     |"PWX": Periodic wrap around in X.
C     |"PWY": Periodic wrap around in Y.
C     |
C     | Figure 3b
C     | =========
C     |
C     |       .                       .
C     |       .                       .
C     |       .                       .
C     |       e                       e
C     |       t                       t
C     |       c                       c
C     |       |-----------v-----------|-----------v--etc...
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       u<--delX(i=1)---------->u           t
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |-----------v-----------------------v--etc...
C     |       |          /|\          |
C     |       |           |           |
C     |       |           |           |
C     |       |           |           |
C     |       u        delY(j=1)      |           t
C     |       |           |           |
C     |       |           |           |
C     |       |           |           |
C     |       |           |           |
C     |       |          \|/          |
C     |"SB"++>|___________v___________|___________v__etc...
C     |      /+\                                                 .
C     |       +
C     |       +
C     |     "WB"
C     |
C     *==========================================================*
C     \ev
CEOP

C     Macros that override/modify standard definitions
C $Header: /u/gcmpack/MITgcm/model/inc/GRID_MACROS.h,v 1.12 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: GRID_MACROS.h
C    !INTERFACE:
C    include GRID_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | GRID_MACROS.h                                             
C     *==========================================================*
C     | These macros are used to substitute definitions for       
C     | GRID.h variables for particular configurations.           
C     | In setting these variables the following convention       
C     | applies.                                                  
C     | undef  phi_CONST   - Indicates the variable phi is fixed  
C     |                      in X, Y and Z.                       
C     | undef  phi_FX      - Indicates the variable phi only      
C     |                      varies in X (i.e.not in X or Z).     
C     | undef  phi_FY      - Indicates the variable phi only      
C     |                      varies in Y (i.e.not in X or Z).     
C     | undef  phi_FXY     - Indicates the variable phi only      
C     |                      varies in X and Y ( i.e. not Z).     
C     *==========================================================*
C     \ev
CEOP

C $Header: /u/gcmpack/MITgcm/model/inc/DXC_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXC_MACROS.h
C    !INTERFACE:
C    include DXC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXC_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DXF_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXF_MACROS.h
C    !INTERFACE:
C    include DXF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXF_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DXG_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXG_MACROS.h
C    !INTERFACE:
C    include DXG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXG_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DXV_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXV_MACROS.h
C    !INTERFACE:
C    include DXV_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXV_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYC_MACROS.h
C    !INTERFACE:
C    include DYC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYC_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYF_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYF_MACROS.h
C    !INTERFACE:
C    include DYF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYF_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYG_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYG_MACROS.h
C    !INTERFACE:
C    include DYG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYG_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYU_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYU_MACROS.h
C    !INTERFACE:
C    include DYU_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYU_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/HFACC_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: HFACC_MACROS.h
C    !INTERFACE:
C    include HFACC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | HFACC_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/HFACS_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: HFACS_MACROS.h
C    !INTERFACE:
C    include HFACS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | HFACS_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/HFACW_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: HFACW_MACROS.h
C    !INTERFACE:
C    include HFACW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | HFACW_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXC_MACROS.h
C    !INTERFACE:
C    include RECIP_DXC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXC_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXF_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXF_MACROS.h
C    !INTERFACE:
C    include RECIP_DXF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXF_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXG_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXG_MACROS.h
C    !INTERFACE:
C    include RECIP_DXG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXG_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXV_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXV_MACROS.h
C    !INTERFACE:
C    include RECIP_DXV_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXV_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYC_MACROS.h
C    !INTERFACE:
C    include RECIP_DYC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYC_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYF_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYF_MACROS.h
C    !INTERFACE:
C    include RECIP_DYF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYF_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYG_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYG_MACROS.h
C    !INTERFACE:
C    include RECIP_DYG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYG_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYU_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYU_MACROS.h
C    !INTERFACE:
C    include RECIP_DYU_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYU_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_HFACC_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_HFACC_MACROS.h
C    !INTERFACE:
C    include RECIP_HFACC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_HFACC_MACROS.h                                      
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_HFACS_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_HFACS_MACROS.h
C    !INTERFACE:
C    include RECIP_HFACS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_HFACS_MACROS.h                                      
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_HFACW_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_HFACW_MACROS.h
C    !INTERFACE:
C    include RECIP_HFACW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_HFACW_MACROS.h                                      
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/XC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: XC_MACROS.h
C    !INTERFACE:
C    include XC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | XC_MACROS.h                                               
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/YC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: YC_MACROS.h
C    !INTERFACE:
C    include YC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | YC_MACROS.h                                               
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RA_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RA_MACROS.h
C    !INTERFACE:
C    include RA_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RA_MACROS.h                                               
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP




C $Header: /u/gcmpack/MITgcm/model/inc/RAW_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RAW_MACROS.h
C    !INTERFACE:
C    include RAW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RAW_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP




C $Header: /u/gcmpack/MITgcm/model/inc/RAS_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RAS_MACROS.h
C    !INTERFACE:
C    include RAS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RAS_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/MASKW_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: MASKW_MACROS.h
C    !INTERFACE:
C    include MASKW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | MASKW_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP






C $Header: /u/gcmpack/MITgcm/model/inc/MASKS_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: MASKS_MACROS.h
C    !INTERFACE:
C    include MASKS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | MASKS_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP






C $Header: /u/gcmpack/MITgcm/model/inc/TANPHIATU_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: TANPHIATU_MACROS.h
C    !INTERFACE:
C    include TANPHIATU_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | TANPHIATU_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/TANPHIATV_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: TANPHIATV_MACROS.h
C    !INTERFACE:
C    include TANPHIATV_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | TANPHIATV_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C--   COMMON /GRID_RL/ RL valued grid defining variables.
C     deepFacC  :: deep-model grid factor (fct of vertical only) for dx,dy
C     deepFacF     at level-center (deepFacC)  and level interface (deepFacF)
C     deepFac2C :: deep-model grid factor (fct of vertical only) for area dx*dy
C     deepFac2F    at level-center (deepFac2C) and level interface (deepFac2F)
C     gravitySign :: indicates the direction of gravity relative to R direction
C                   (= -1 for R=Z (Z increases upward, -gravity direction  )
C                   (= +1 for R=P (P increases downward, +gravity direction)
C     rkSign     :: Vertical coordinate to vertical index orientation.
C                   ( +1 same orientation, -1 opposite orientation )
C     globalArea :: Domain Integrated horizontal Area [m2]
      COMMON /GRID_RL/
     &  cosFacU, cosFacV, sqCosFacU, sqCosFacV,
     &  deepFacC, deepFac2C, recip_deepFacC, recip_deepFac2C,
     &  deepFacF, deepFac2F, recip_deepFacF, recip_deepFac2F,
     &  gravitySign, rkSign, globalArea
      Real*8 cosFacU        (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 cosFacV        (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 sqCosFacU      (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 sqCosFacV      (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 deepFacC       (Nr)
      Real*8 deepFac2C      (Nr)
      Real*8 deepFacF       (Nr+1)
      Real*8 deepFac2F      (Nr+1)
      Real*8 recip_deepFacC (Nr)
      Real*8 recip_deepFac2C(Nr)
      Real*8 recip_deepFacF (Nr+1)
      Real*8 recip_deepFac2F(Nr+1)
      Real*8 gravitySign
      Real*8 rkSign
      Real*8 globalArea

C--   COMMON /GRID_RS/ RS valued grid defining variables.
C     dxC     :: Cell center separation in X across western cell wall (m)
C     dxG     :: Cell face separation in X along southern cell wall (m)
C     dxF     :: Cell face separation in X thru cell center (m)
C     dxV     :: V-point separation in X across south-west corner of cell (m)
C     dyC     :: Cell center separation in Y across southern cell wall (m)
C     dyG     :: Cell face separation in Y along western cell wall (m)
C     dyF     :: Cell face separation in Y thru cell center (m)
C     dyU     :: U-point separation in Y across south-west corner of cell (m)
C     drC     :: Cell center separation along Z axis ( units of r ).
C     drF     :: Cell face separation along Z axis ( units of r ).
C     R_low   :: base of fluid in r_unit (Depth(m) / Pressure(Pa) at top Atmos.)
C     rLowW   :: base of fluid column in r_unit at Western  edge location.
C     rLowS   :: base of fluid column in r_unit at Southern edge location.
C     Ro_surf :: surface reference (at rest) position, r_unit.
C     rSurfW  :: surface reference position at Western  edge location [r_unit].
C     rSurfS  :: surface reference position at Southern edge location [r_unit].
C     hFac    :: Fraction of cell in vertical which is open i.e how
C              "lopped" a cell is (dimensionless scale factor).
C              Note: The code needs terms like MIN(hFac,hFac(I+1))
C                    On some platforms it may be better to precompute
C                    hFacW, hFacE, ... here than do MIN on the fly.
cC    maskH   :: cell Center full-column mask (= 2D mask)
C     maskInC :: Cell Center 2-D Interior mask (i.e., zero beyond OB)
C     maskInW :: West  face 2-D Interior mask (i.e., zero on and beyond OB)
C     maskInS :: South face 2-D Interior mask (i.e., zero on and beyond OB)
C     maskC   :: cell Center land mask
C     maskW   :: West face land mask
C     maskS   :: South face land mask
C     recip_dxC   :: Reciprocal of dxC
C     recip_dxG   :: Reciprocal of dxG
C     recip_dxF   :: Reciprocal of dxF
C     recip_dxV   :: Reciprocal of dxV
C     recip_dyC   :: Reciprocal of dxC
C     recip_dyG   :: Reciprocal of dyG
C     recip_dyF   :: Reciprocal of dyF
C     recip_dyU   :: Reciprocal of dyU
C     recip_drC   :: Reciprocal of drC
C     recip_drF   :: Reciprocal of drF
C     recip_Rcol  :: Inverse of cell center column thickness (1/r_unit)
C     recip_hFacC :: Inverse of cell open-depth f[X,Y,Z] ( dimensionless ).
C     recip_hFacW    rhFacC center, rhFacW west, rhFacS south.
C     recip_hFacS    Note: This is precomputed here because it involves division.
C     xC        :: X-coordinate of cell center f[X,Y]. The units of xc, yc
C                  depend on the grid. They are not used in differencing or
C                  averaging but are just a convient quantity for I/O,
C                  diagnostics etc.. As such xc is in m for cartesian
C                  coordinates but degrees for spherical polar.
C     yC        :: Y-coordinate of center of cell f[X,Y].
C     yG        :: Y-coordinate of corner of cell ( c-grid vorticity point) f[X,Y].
C     rA        :: R-face are f[X,Y] ( m^2 ).
C                  Note: In a cartesian framework zA is simply dx*dy,
C                      however we use zA to allow for non-globally
C                      orthogonal coordinate frames (with appropriate
C                      metric terms).
C     rC        :: R-coordinate of center of cell f[Z] (units of r).
C     rF        :: R-coordinate of face of cell f[Z] (units of r).
C - *HybSigm* - :: Hybrid-Sigma vert. Coord coefficients
C     aHybSigmF    at level-interface (*HybSigmF) and level-center (*HybSigmC)
C     aHybSigmC    aHybSigm* = constant r part, bHybSigm* = sigma part, such as
C     bHybSigmF    r(ij,k,t) = rLow(ij) + aHybSigm(k)*[rF(1)-rF(Nr+1)]
C     bHybSigmC              + bHybSigm(k)*[eta(ij,t)+Ro_surf(ij) - rLow(ij)]
C     dAHybSigF :: vertical increment of Hybrid-Sigma coefficient: constant r part,
C     dAHybSigC    between interface (dAHybSigF) and between center (dAHybSigC)
C     dBHybSigF :: vertical increment of Hybrid-Sigma coefficient: sigma part,
C     dBHybSigC    between interface (dBHybSigF) and between center (dBHybSigC)
C     tanPhiAtU :: tan of the latitude at U point. Used for spherical polar
C                  metric term in U equation.
C     tanPhiAtV :: tan of the latitude at V point. Used for spherical polar
C                  metric term in V equation.
C     angleCosC :: cosine of grid orientation angle relative to Geographic direction
C               at cell center: alpha=(Eastward_dir,grid_uVel_dir)=(North_d,vVel_d)
C     angleSinC :: sinus  of grid orientation angle relative to Geographic direction
C               at cell center: alpha=(Eastward_dir,grid_uVel_dir)=(North_d,vVel_d)
C     fCori     :: Coriolis parameter at grid Center point
C     fCoriG    :: Coriolis parameter at grid Corner point
C     fCoriCos  :: Coriolis Cos(phi) parameter at grid Center point (for NH)

      COMMON /GRID_RS/
     &  dxC,dxF,dxG,dxV,dyC,dyF,dyG,dyU,
     &  R_low, rLowW, rLowS,
     &  Ro_surf, rSurfW, rSurfS,
     &  hFacC, hFacW, hFacS,
     &  recip_dxC,recip_dxF,recip_dxG,recip_dxV,
     &  recip_dyC,recip_dyF,recip_dyG,recip_dyU,
     &  recip_Rcol,
     &  recip_hFacC,recip_hFacW,recip_hFacS,
     &  xC,yC,rA,rAw,rAs,rAz,xG,yG,
     &  maskInC, maskInW, maskInS,
     &  maskC, maskW, maskS,
     &  recip_rA,recip_rAw,recip_rAs,recip_rAz,
     &  drC, drF, recip_drC, recip_drF, rC, rF,
     &  aHybSigmF, bHybSigmF, aHybSigmC, bHybSigmC,
     &  dAHybSigF, dBHybSigF, dBHybSigC, dAHybSigC,
     &  tanPhiAtU, tanPhiAtV, angleCosC, angleSinC,
     &  fCori, fCoriG, fCoriCos
c    & , maskH
      Real*8 dxC            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dxF            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dxG            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dxV            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyC            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyF            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyG            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyU            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 R_low          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rLowW          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rLowS          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Ro_surf        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rSurfW         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rSurfS         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 hFacC          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 hFacW          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 hFacS          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 recip_dxC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dxF      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dxG      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dxV      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyF      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyG      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyU      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_Rcol     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_hFacC    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 recip_hFacW    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 recip_hFacS    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 xC             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 xG             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 yC             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 yG             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rA             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rAw            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rAs            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rAz            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rA       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rAw      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rAs      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rAz      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
c     Real*8 maskH          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskInC        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskInW        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskInS        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskC          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 maskW          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 maskS          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 drC            (Nr)
      Real*8 drF            (Nr)
      Real*8 recip_drC      (Nr)
      Real*8 recip_drF      (Nr)
      Real*8 rC             (Nr)
      Real*8 rF             (Nr+1)
      Real*8 aHybSigmF      (Nr+1)
      Real*8 bHybSigmF      (Nr+1)
      Real*8 aHybSigmC      (Nr)
      Real*8 bHybSigmC      (Nr)
      Real*8 dAHybSigF      (Nr)
      Real*8 dBHybSigF      (Nr)
      Real*8 dBHybSigC      (Nr+1)
      Real*8 dAHybSigC      (Nr+1)
      Real*8 tanPhiAtU      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 tanPhiAtV      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 angleCosC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 angleSinC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 fCori          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 fCoriG         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 fCoriCos       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)


C--   COMMON /GRID_I/ INTEGER valued grid defining variables.
C     kSurfC  :: vertical index of the surface tracer cell
C     kSurfW  :: vertical index of the surface U point
C     kSurfS  :: vertical index of the surface V point
C     kLowC   :: index of the r-lowest "wet cell" (2D)
C IMPORTANT: ksurfC,W,S = Nr+1 and kLowC = 0 where the fluid column
C            is empty (continent)
      COMMON /GRID_I/
     &  kSurfC, kSurfW, kSurfS,
     &  kLowC
      INTEGER kSurfC(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER kSurfW(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER kSurfS(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER kLowC (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
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

C $Header: /u/gcmpack/MITgcm/verification/dic_example/code/PTRACERS_SIZE.h,v 1.1 2004/09/01 03:44:40 edhill Exp $
C $Name:  $


CBOP
C    !ROUTINE: PTRACERS_SIZE.h
C    !INTERFACE:
C #include PTRACERS_SIZE.h
 
C    !DESCRIPTION:
C Contains passive tracer array size (number of tracers).

C PTRACERS_num defines how many passive tracers are allocated/exist.
C  and is set here (default 1)
C
C     Number of tracers
      INTEGER PTRACERS_num
      PARAMETER(PTRACERS_num = 21)

CEOP
C $Header: /u/gcmpack/MITgcm/pkg/ptracers/PTRACERS_PARAMS.h,v 1.8 2010/09/05 22:28:14 jmc Exp $
C $Name: checkpoint62r $


CBOP
C    !ROUTINE: PTRACERS_PARAMS.h
C    !INTERFACE:
C #include PTRACERS_PARAMS.h

C    !DESCRIPTION:
C Contains passive tracer parameters.

CEOP

C     COMMON /PTRACERS_PARAMS/  PTRACERS parameters:
C     PTRACERS_taveFreq :: Frequency with which time-averaged PTRACERS
C                          are written to post-processing files.
C     PTRACERS_ref      :: vertical profile for passive tracers, in
C                          analogy to tRef and sRef, hence the name
C     PTRACERS_EvPrRn   :: tracer concentration in Rain, Evap & RunOff
C       notes: a) used if both NonLin_FrSurf & useRealFreshWater are set.
C              b) use pTracer surface (local) value if = UNSET_RL (default)
C     PTRACERS_Iter0    :: timestep number when tracers are initialized
C     PTRACERS_dTLev    :: Timestep for ptracers ( s ), function of level k

      Real*8 PTRACERS_dumpFreq
      Real*8 PTRACERS_taveFreq
      Real*8 PTRACERS_monitorFreq
      Real*8 PTRACERS_diffKh(PTRACERS_num)
      Real*8 PTRACERS_diffK4(PTRACERS_num)
      Real*8 PTRACERS_diffKrNr(Nr,PTRACERS_num)
      Real*8 PTRACERS_ref(Nr,PTRACERS_num)
      Real*8 PTRACERS_EvPrRn(PTRACERS_num)
      Real*8 PTRACERS_dTLev(Nr)
      COMMON /PTRACERS_PARAMS_R/
     &     PTRACERS_dumpFreq,
     &     PTRACERS_taveFreq,
     &     PTRACERS_monitorFreq,
     &     PTRACERS_diffKh,
     &     PTRACERS_diffK4,
     &     PTRACERS_diffKrNr,
     &     PTRACERS_ref,
     &     PTRACERS_EvPrRn,
     &     PTRACERS_dTLev

C     COMMON /PTRACERS_OLD_R/ Old (real type) PTRACERS parameters
C        (to be removed 1 day ...)
      Real*8 lambdaTr1ClimRelax
      COMMON /PTRACERS_OLD_R/
     &     lambdaTr1ClimRelax

      INTEGER PTRACERS_Iter0
      INTEGER PTRACERS_numInUse
      INTEGER PTRACERS_advScheme(PTRACERS_num)
      COMMON /PTRACERS_PARAMS_I/
     &     PTRACERS_Iter0,
     &     PTRACERS_numInUse,
     &     PTRACERS_advScheme

C     PTRACERS_MultiDimAdv   :: internal flag (depend on the advection scheme),
C                               true if this tracer uses Multi-Dim advection
C     PTRACERS_SOM_Advection :: internal flag (depend on the advection scheme),
C                               true if this tracer uses 2nd-order moment advection
C     PTRACERS_AdamsBashGtr  :: internal flag (depend on the advection scheme),
C                               true if applies Adams-Bashforth on tracer tendency
C     PTRACERS_useDWNSLP(n)  :: true if Down-Sloping flow applies to pTracer n
C     PTRACERS_addSrelax2EmP :: add Salt relaxation to EmP
      LOGICAL PTRACERS_ImplVertAdv(PTRACERS_num)
      LOGICAL PTRACERS_MultiDimAdv(PTRACERS_num)
      LOGICAL PTRACERS_SOM_Advection(PTRACERS_num)
      LOGICAL PTRACERS_AdamsBashGtr(PTRACERS_num)
      LOGICAL PTRACERS_useGMRedi(PTRACERS_num)
      LOGICAL PTRACERS_useDWNSLP(PTRACERS_num)
      LOGICAL PTRACERS_useKPP(PTRACERS_num)
      LOGICAL PTRACERS_addSrelax2EmP
      LOGICAL PTRACERS_useRecords
      LOGICAL
     &     PTRACERS_monitor_mnc, PTRACERS_monitor_stdio,
     &     PTRACERS_timeave_mdsio, PTRACERS_snapshot_mdsio,
     &     PTRACERS_pickup_write_mdsio, PTRACERS_pickup_read_mdsio,
     &     PTRACERS_timeave_mnc, PTRACERS_snapshot_mnc,
     &     PTRACERS_pickup_write_mnc, PTRACERS_pickup_read_mnc
      COMMON /PTRACERS_PARAMS_L/
     &     PTRACERS_ImplVertAdv,
     &     PTRACERS_MultiDimAdv,
     &     PTRACERS_SOM_Advection,
     &     PTRACERS_AdamsBashGtr,
     &     PTRACERS_useGMRedi,
     &     PTRACERS_useDWNSLP,
     &     PTRACERS_useKPP,
     &     PTRACERS_useRecords,
     &     PTRACERS_addSrelax2EmP,
     &     PTRACERS_timeave_mdsio, PTRACERS_snapshot_mdsio,
     &     PTRACERS_pickup_write_mdsio, PTRACERS_pickup_read_mdsio,
     &     PTRACERS_monitor_stdio, PTRACERS_monitor_mnc,
     &     PTRACERS_timeave_mnc, PTRACERS_snapshot_mnc,
     &     PTRACERS_pickup_write_mnc, PTRACERS_pickup_read_mnc

      CHARACTER*(MAX_LEN_FNAM) PTRACERS_initialFile(PTRACERS_num)
      CHARACTER*(MAX_LEN_FNAM) PTRACERS_names(PTRACERS_num)
      CHARACTER*(MAX_LEN_FNAM) PTRACERS_long_names(PTRACERS_num)
      CHARACTER*(MAX_LEN_FNAM) PTRACERS_units(PTRACERS_num)
      COMMON /PTRACERS_PARAMS_C/
     &     PTRACERS_initialFile,
     &     PTRACERS_names,
     &     PTRACERS_long_names,
     &     PTRACERS_units

C     COMMON /PTRACERS_LABELS/ holds pTracers labels
C     PTRACERS_ioLabel  :: pTracer I/O & diagnostics label (2 charecters long)
      COMMON /PTRACERS_LABELS/
     &     PTRACERS_ioLabel
      CHARACTER*2              PTRACERS_ioLabel(PTRACERS_num)


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/pkg/ptracers/PTRACERS_FIELDS.h,v 1.1 2007/11/05 18:48:04 jmc Exp $
C $Name: checkpoint62r $


CBOP
C    !ROUTINE: PTRACERS_FIELDS.h
C    !INTERFACE:
C #include PTRACERS_FIELDS.h

C    !DESCRIPTION:
C Contains passive tracer fields

CEOP

C     COMMON /PTRACERS_FIELDS/
C     pTracer  :: passive tracer concentration (tr per unit volume).
C     gPtr     :: work-space for time-stepping
C     gpTrNm1  :: work-space for time-stepping
C     surfaceForcingPTr :: passive tracer surface forcing
      Real*8  pTracer (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy,
     &              PTRACERS_num)
      Real*8  gPtr    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy,
     &              PTRACERS_num)
      Real*8  gpTrNm1 (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy,
     &              PTRACERS_num)
      Real*8  surfaceForcingPTr (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy,
     &              PTRACERS_num)
      COMMON /PTRACERS_FIELDS/
     &              pTracer, gPtr, gpTrNm1, surfaceForcingPTr


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
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
C             (or C-grid #ifdef SEAICE_CGRID) U point
C             >0 from West to East
C     UICEC - average of UICE(1) between last two time steps
C     VICE  - meridional ice velocity in m/s at South-West B-grid
C             (or C-grid #ifdef SEAICE_CGRID) V point
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
      COMMON/ARRAYB/ UVM
      Real*8 UVM        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

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

      COMMON/SEAICE_DYNVARS_BGRID/ AMASS, DAIRN
      Real*8 AMASS      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 DAIRN      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

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




      COMMON/MIX/TMIX,TICE,AREAMT
      Real*8 TMIX       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 TICE       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 AREAMT     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      COMMON/WIND_STRESS_ICE/TAUX,TAUY
C     TAUX   - zonal      wind stress over ice at U point
C     TAUY   - meridional wind stress over ice at V point
      Real*8 TAUX       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 TAUY       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON/WIND_STRESS_OCE/WINDX,WINDY
C     WINDX  - zonal      wind stress over water at C points
C     WINDY  - meridional wind stress over water at C points
      Real*8 WINDX      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 WINDY      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

      COMMON/GWATXY/GWATX,GWATY
      Real*8 GWATX      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 GWATY      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C--   KGEO    Level used as a proxy for geostrophic velocity.
      COMMON/SEAICE_KGEO/KGEO
      INTEGER KGEO   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)


cif(
      Real*8 SWFRACB
      COMMON /SEAICE_SW_R/
     &       SWFRACB
cif)


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/pkg/thsice/THSICE_VARS.h,v 1.11 2009/07/08 23:35:05 jmc Exp $
C $Name: checkpoint62r $


C     !ROUTINE: THSICE_VARS.h
C -------------------------------
C   THSICE_VARS.h
C  variable for thermodynamics - Sea-Ice model
C -------------------------------

C-- COMMON /THSICE_VARS/  state variables of sea-ice model :
C   iceMask   :: sea-ice fraction: no ice=0, grid all ice 1  []
C   iceHeight :: depth of ice layer        [m]
C   snowHeight:: depth of snow layer       [m]
C   Tsrf      :: temperature at surface     [oC]
C   Tice1     :: temperature of ice layer 1 [oC]
C   Tice2     :: temperature of ice layer 2 [oC]
C   Qice1     :: enthalpy of ice layer 1  [J/kg]
C   Qice2     :: enthalpy of ice layer 2  [J/kg]
C   snowAge   :: snow age                   [s]
      COMMON /THSICE_VARS/
     &       iceMask, iceHeight, snowHeight,
     &       Tsrf, Tice1, Tice2,
     &       Qice1, Qice2, snowAge

      Real*8 iceMask(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 iceHeight (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 snowHeight(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Tsrf   (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Tice1  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Tice2  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Qice1  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Qice2  (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 snowAge(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C-- COMMON /THSICE_FLUX/ hold fluxes needed for thsice model
C   sHeating :: surf heating left to melt snow or ice (= Atmos-Conduction)
C   flxCndBt :: heat flux conducted through the ice to bottom surface
C   snowPrc  :: snow precipitation                        [kg/m2/s]
C   siceAlb  :: area weighted sea-ice albedo           [0-1]
C   icAlbNIR :: seaice(+snow) surface Near Infra-Red Albedo
C atmospheric fluxes (change along the time-stepping):
C   icFlxSW  :: short-wave heat flux (+=down) over sea-ice
C               (downward SW / net SW @ surface / net SW below sea-ice)
C   icFlxAtm :: Atmospheric surf. heat flux over sea-ice [W/m2] (+=down)
C               (over sea-ice only / weighted by ice-fraction)
C   icFrwAtm :: fresh-water flux (E-P) from the atmosphere [kg/m2/s] (+=up)
C               ( ice Evap only / ice E-P / ice - ocean weighted E-P )
C   oceQnet  :: net heat flux  to the ocean         (+=down) [W/m2]
C   oceQsw   :: net short-wave that enter the ocean (+=down) [W/m2]
C   oceFWfx  :: net fresh water flux to the ocean   (+=down) [kg/m2]
C   oceSflx  :: net salt flux to the ocean      (+=down) [psu.kg/m2]
      COMMON / THSICE_FLUX /
c    &       oceQsw, oceQnet, oceFWfx, oceSflx,
     &       sHeating, flxCndBt,
     &       snowPrc, siceAlb, icAlbNIR,
     &       icFlxSW, icFlxAtm, icFrwAtm

c     Real*8 oceQnet(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
c     Real*8 oceQsw (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
c     Real*8 oceFWfx(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
c     Real*8 oceSflx(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 sHeating(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 flxCndBt(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 snowPrc (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 siceAlb (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 icAlbNIR(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 icFlxSW (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 icFlxAtm(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 icFrwAtm(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C-- COMMON /THSICE_DYN_R/  variables used with sea-ice advection/diffusion
C   oceFWfx   :: fresh water flux to the ocean  [kg/m^2/s]
C   oceSflx   :: salt flux to the ocean         [psu.kg/m^2/s] (~g/m^2/s)
C   oceQnet   :: heat flux to the ocean         [W/m^2]
C---
C    Note :: when ice volume is too small to be kept, ice & snow is melt
C        and fresh water, salt and heat are returned to the ocean.
C        For now, those fluxes are stored separately and will try to find
C        out how to incorporate them more naturally in the usual forcing.
C---
      COMMON /THSICE_DYN_R/
     &       oceFWfx, oceSflx, oceQnet

      Real*8 oceFWfx(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 oceSflx(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 oceQnet(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C-- COMMON / THSICE_OCEMXLAYER / oceanic mixed layer state
C   hOceMxL :: thickness   of the ocean mixed layer [m]
C   tOceMxL :: temperature in the ocean mixed layer [oC]
C   sOceMxL :: salinity    in the ocean mixed layer [psu]
C   v2ocMxL :: velocity (square) in the mixed layer [m2/s2]
      COMMON / THSICE_OCEMXLAYER /
     &       hOceMxL, tOceMxL, sOceMxL, v2ocMxL

      Real*8 hOceMxL(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 tOceMxL(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 sOceMxL(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 v2ocMxL(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
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



C     !INPUT/OUTPUT PARAMETERS:
C     == Routine arguments ==
C     note: under the multi-threaded model myiter and 
C           mytime are local variables passed around as routine 
C           arguments. Although this is fiddly it saves the need to 
C           impose additional synchronisation points when they are 
C           updated.
C     iMin, iMax, jMin, jMax - loop ranges
C     bi, bj - tile indices
C     myiter - iteration counter for this thread
C     mytime - time counter for this thread
C     mythid - thread number for this instance of the routine.
      INTEGER iMin, iMax, jMin, jMax
      integer bi, bj
      integer mythid 
      integer myiter
      Real*8     myTime

C     !LOCAL VARIABLES :
C     == Local variables ==
C     i,j,k,iTracer - loop indices
C     kSurface      - surface index
C     krLoc         - local vertical loop boundary klowC
C     recom_dic     - dissolved inorganic carbon (intermediate variable)
C     recom_alk     - total alkalinity (intermediate variable)

C     benthicLayerOld/New - auxillary varialbes
C     angleOfInclination - of incoming solar irradiation
C     daylen        - length of the day (function of latitude and time of year)
C     radForce      - short wave radiation (needs to be replaced by a proper
C                     field !
      INTEGER i,j,k,iTracer,krLoc, kSurface
CCV      INTEGER iDIC, iALK, iFe

      Real*8     recom_dic, recom_alk
      Real*8     dicFluxLoc, hPlusLoc, windSpeedLoc, atmospCO2Loc
      Real*8     saltLoc, thetaLoc
      Real*8     co2_ppm_dummy,co2_mol_dummy
      INTEGER niter_dummy
      Real*8     benthicLayer(1-OLx:sNx+OLx,1-OLy:sNy+OLy,1:4)
C     these need to get the proper dimension ... etc.
      Real*8     cosAngleOfIncidence(1-OLx:sNx+OLx,1-OLy:sNy+OLy)
      Real*8     lengthOfDay(1-OLx:sNx+OLx,1-OLy:sNy+OLy)
      Real*8     PARadiation(1-OLx:sNx+OLx,1-OLy:sNy+OLy)
      Real*8     feDustFluxLoc(1-OLx:sNx+OLx,1-OLy:sNy+OLy) 
      Real*8     surfpco2(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
C     resuspension variables
      Real*8     bottomStress
      Real*8     erosionCoeff
      Real*8     erosionFlux(1-OLx:sNx+OLx,1-OLy:sNy+OLy)
C     diagnostics auxilliary fields
      INTEGER idiag, ndiags3d_used
      Real*8     recom_diag_integral(1-OLx:sNx+OLx,1-OLy:sNy+OLy,
     &                          nDiagsREcoM3D)
      Real*8     recom_diag_3Dfields(1-OLx:sNx+OLx,1-OLy:sNy+OLy,
     &                          Nr,nDiagsREcoM3D)
      Real*8     recom_diag_2Dfields(1-OLx:sNx+OLx,1-OLy:sNy+OLy,
     &                          nDiagsREcoM2D)
CEOP

CCV: tracer indices are now set in RECOM.h
CCV      iDIC = 2
CCV      iALK = 3
CCV      iFe  = PTRACERS_numInUse
C     surface layer index
      ksurface = 1
C     resuspension
      erosionCoeff = recom_FeErosionRate*(1.-recom_porosity)
     &     * recom_sizeFraction / recomCritShearStress

C     initialise some local fields
      DO j=jMin,jMax
       DO i=iMin,iMax
        feDustFluxLoc(i,j) = 0.d0
        erosionFlux  (i,j) = 0.d0
       ENDDO
      ENDDO
      DO idiag = 1,nDiagsREcoM3D
       DO k=1,Nr
        DO j=jMin,jMax
         DO i=iMin,iMax
          recom_diag_3Dfields(i,j,k,idiag) = 0.d0
         ENDDO 
        ENDDO
       ENDDO
       DO j=jMin,jMax
        DO i=iMin,iMax
         recom_diag_integral(i,j,idiag) = 0.d0
        ENDDO 
       ENDDO
      ENDDO

C     solar radiation
      CALL RECOM_INSOLATION(
     O     cosAngleOfIncidence, lengthOfDay, PARadiation,
     I     iMin, iMax, jMin, jMax, bi, bj, myTime, myIter, myThid )

      IF ( recom_windFile .EQ. ' '  ) THEN
C     if no wind has been read copy wind speed of exf package (which
C     may or may not have been read from a file)
       DO j=jMin,jMax
        DO i=iMin,iMax
         windSpeed(i,j,bi,bj) = wspeed(i,j,bi,bj)
        ENDDO
       ENDDO  
      ENDIF 
C     Compute DIC Flux
      DO j=jMin,jMax
       DO i=iMin,iMax
        IF ( hFacC(i,j,ksurface,bi,bj) .gt. 0.d0 ) THEN
C     recom_co2flux should not have to deal with dic/alk=0, so make
C     sure that recom_tiny is larger than zero.
         recom_dic = MAX(recom_tiny,pTracer(I,J,kSurface,bi,bj,iDIC))
         recom_alk = MAX(recom_tiny,pTracer(I,J,kSurface,bi,bj,iALK))
         dicFluxLoc   = 0.d0
         hPlusLoc     = hPlus(I,J,bi,bj)
         windSpeedLoc = windSpeed(I,J,bi,bj)
         atmospCO2Loc = atmospCO2(I,J,bi,bj)
C         print*,'atmCO2', atmospCO2Loc
        
         thetaLoc     = theta(I,J,kSurface,bi,bj)
C     this is a terrible hack and we should never have negative
C     salinities
         saltLoc      = MAX(0.,salt (I,J,kSurface,bi,bj) )
CML         saltLoc      = salt (I,J,kSurface,bi,bj)
CML         print '(A,2I4,3E10.2)','ml-dic',i,j,hPlus(I,J,bi,bj),
CML     &        pTracer(I,J,kSurface,bi,bj,2),
CML     &        pTracer(I,J,kSurface,bi,bj,3)
         CALL RECOM_CO2FLUX(
     I        atmospCO2Loc, recom_dic, recom_alk,
     I        thetaLoc, saltLoc, windSpeedLoc,
     O        dicFluxLoc, co2_ppm_dummy,co2_mol_dummy,
     U        hPlusLoc,
     O        niter_dummy )
CJH co2_ppm_dummy is micro atmosheres indeed (compare recom_co2_flux)
CML         print '(A,8E10.2)','ml-dic',
CML     &        dicFluxLoc,atmospCO2(I,J,bi,bj),
CML     &        recom_dic,recom_alk, 
CML     &        theta(I,J,kSurface,bi,bj),salt(I,J,kSurface,bi,bj),
CML     &        windSpeed(I,J,bi,bj), hPlus(I,J,bi,bj)    
         surfpco2(I,J,bi,bj) = co2_ppm_dummy*maskC(I,J,kSurface,bi,bj)
         dicFlux(I,J,bi,bj) = dicFluxLoc*maskC(I,J,kSurface,bi,bj)
         hPlus  (I,J,bi,bj) = hPlusLoc  *maskC(I,J,kSurface,bi,bj)   
CCV#ifdef ALLOW_RECOM_FEINPUT
         feDustFluxLoc(i,j) = feDustDeposit(i,j,bi,bj)
CCV#endif 
        ENDIF
       ENDDO
      ENDDO
C     Apply sea-ice mask according to the two different sea ice models
C     if necessary
      IF ( useSeaice .AND. .NOT.useThSice ) THEN
       DO j=jMin,jMax
        DO i=iMin,iMax
CCV: since 61r, AREA is a 2-d variable, rather than 3-d! 
C         dicFlux(i,j,bi,bj) = dicFlux(i,j,bi,bj)
C     &        *(1.0d0 - AREA(i,j,1,bi,bj))
CCV#ifdef ALLOW_RECOM_FEINPUT
C         feDustFluxLoc(i,j) = feDustFluxLoc(i,j)
C     &        *(1.0d0 - AREA(i,j,1,bi,bj))
CCV#endif 
         dicFlux(i,j,bi,bj) = dicFlux(i,j,bi,bj)
     &        *(1.0d0 - AREA(i,j,bi,bj))
CCV#ifdef ALLOW_RECOM_FEINPUT
         feDustFluxLoc(i,j) = feDustFluxLoc(i,j)
     &        *(1.0d0 - AREA(i,j,bi,bj))
CCV#endif 
        ENDDO
       ENDDO
      ENDIF
      IF ( useThSice ) THEN
       DO j=jMin,jMax
        DO i=iMin,iMax
         dicFlux(i,j,bi,bj) = dicFlux(i,j,bi,bj)
     &        *(1.0d0 - iceMask(i,j,bi,bj))
CCV#ifdef ALLOW_RECOM_FEINPUT
         feDustFluxLoc(i,j) = feDustFluxLoc(i,j)
     &        *(1.0d0 - iceMask(i,j,bi,bj))
CCV#endif 
        ENDDO
       ENDDO
      ENDIF	
      DO j=jMin,jMax
       DO i=iMin,iMax
        IF ( hFacC(i,j,ksurface,bi,bj) .gt. 0.d0 ) THEN
C     determine loop ranges
         krLoc = klowC(i,j,bi,bj)
C     only if wet point:
C     surface forcing for individual tracers:
C     DIC
C     use surfaceForcingPtr to store forcing for the next time step to be
C     used with kpp (and pray that it is correct); IMPORTANT: convert to
C     units per second (dicFlux is in DIC/m^2/day)
         surfaceForcingPtr(i,j,bi,bj,iDIC) = 
     &        - dicFlux(i,j,bi,bj)/recom_secondsPerDay
CCV#ifdef ALLOW_RECOM_FEINPUT
C     Iron:
C     feDustFlux is iron, needs to be converted into dissolved iron, also
C     obey MITgcm sign conventions (positive = upward flux)
         surfaceForcingPtr(i,j,bi,bj,iFe) = 
     &        - maskC(i,j,kSurface,bi,bj)
     &       * constantIronSolubility*feDustFluxLoc(i,j)
         pTracer(i,j,ksurface,bi,bj,iFe) =
     &        pTracer(i,j,ksurface,bi,bj,iFe)
     &        - surfaceForcingPtr(i,j,bi,bj,iFe)
     &        * recip_drF(kSurface)*recip_hFacC(i,j,kSurface,bi,bj)
     &        * dTtracerLev(kSurface)
C     resuspension of sediment leads to iron flux into the ocean at 
C     the bottom, which is assumed to be proportional to an *imaginary* 
C     sediment erosion flux according to Ariathurai and Arulanandan (1978).
C     Stress units are m^2/s^2 which is a bit unusual for MITgcm, but
C     we stick with them for now. Also bottomStress has been scaled by
C     the bottomDragLinear/Quadratic already
         bottomStress = 0.25d0 *
     &        ( (uVel(I,J,krLoc,bi,bj)+uVel(I+1,J,krLoc,bi,bj))**2 
     &        + (vVel(I,J,krLoc,bi,bj)+vVel(I,J+1,krLoc,bi,bj))**2 )
C     limit the stress and thus the erosion flux (may be useful in
C     very shallow regions with high velocities)
         bottomStress = MIN( bottomStress, recomShearStressMax )
         erosionFlux(i,j) = erosionCoeff
     &        * MAX( 0.d0, bottomStress-recomCritShearStress )
         pTracer(i,j,krLoc,bi,bj,iFe) =
     &        pTracer(i,j,krLoc,bi,bj,iFe)
     &        + erosionFlux(i,j)*dTtracerLev(krLoc)
     &        * recip_drF(krLoc) * recip_hFacC(i,j,krLoc,bi,bj)
CCV#endif 
C     copy global fields to local arrays
         BenthicLayer(i,j,1) = benthicLayerN(i,j,bi,bj)
         benthicLayer(i,j,2) = benthicLayerC(i,j,bi,bj)
CCV#ifdef ALLOW_RECOM_SILICATE
         benthicLayer(i,j,3) = benthicLayerSi(i,j,bi,bj)
CCV#else 
CCV         benthicLayer(i,j,3) = 0.
CCV#endif 
         benthicLayer(i,j,4) = benthicLayerCaCO3(i,j,bi,bj)

C     end if wet point
        ENDIF
       ENDDO
      ENDDO
C     call the bio-geo-chemical model
      CALL RECOM_SMS(iMin,iMax,jMin,jMax,bi,bj,
     I      Nr, klowC, PTRACERS_num, nDiagsREcoM3D, nDiagsREcoM2D,
     I      dTtracerLev(kSurface), 
     I      maskC, hFacC, recip_hFacC, drF, recip_drF, recip_drC,
     I      theta, dicFlux, PARadiation, cosAngleOfIncidence, 
     I      pTracer,
     U      benthicLayer, 
     O      gPtr, recom_diag_3Dfields, recom_diag_2Dfields )
C     copy new local tendency term to global array and perform
C     explicit (Eulerian) time step
      DO iTracer=1,PTRACERS_numInUse
       DO k=1,Nr
        DO j=jMin,jMax
         DO i=iMin,iMax
          pTracer(i,j,k,bi,bj,iTracer)=max(recom_tiny,
     &         pTracer(i,j,k,bi,bj,iTracer)+gPtr(i,j,k,bi,bj,iTracer))
     &         *maskC(i,j,k,bi,bj)
         ENDDO
        ENDDO
       ENDDO
      ENDDO
C     store benthic layer concentrations to global array
      DO j=jMin,jMax
       DO i=iMin,iMax
        benthicLayerN(i,j,bi,bj) = benthicLayer(i,j,1)
        benthicLayerC(i,j,bi,bj) = benthicLayer(i,j,2)
CCV#ifdef ALLOW_RECOM_SILICATE
        benthicLayerSi(i,j,bi,bj) = benthicLayer(i,j,3)
CCV#endif 
        benthicLayerCaCO3(i,j,bi,bj) = benthicLayer(i,j,4)
       ENDDO
      ENDDO
      IF (useDiagnostics) THEN
C     vertical integral of 3D diagnostics
       DO idiag = 1,nDiagsRecom3D
        DO k=1,Nr
         DO j=jMin,jMax
          DO i=iMin,iMax
           recom_diag_integral(i,j,idiag) = 
     &          recom_diag_integral(i,j,idiag) 
     &          + recom_diag_3Dfields(i,j,k,idiag)
     &          * drF(k) * hFacC(I,J,k,bi,bj)
          Enddo
         ENDDO
        ENDDO
       ENDDO
      ENDIF

      IF (useDiagnostics) THEN
       IF ( nDiagsREcoM3D .GT. 0 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,1),
     &                       'net_pps ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,1),
     &                       'NETPPVIS', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 1 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,2),
     &                       'net_ppd ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,2),
     &                       'NETPPVID', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 2 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,3),
     &                       'gr_pps  ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,3),
     &                       'GRPPVIS ', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 3 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,4),
     &                       'gr_ppd  ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,4),
     &                       'GRPPVID ', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 4 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,5),
     &                       'net_nass', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,5),
     &                       'NETNAVIS', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 5 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,6),
     &                       'net_nasd', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,6),
     &                       'NETNAVID', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 6 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,7),
     &                       'n_assims', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,7),
     &                       'GRNAVIS ', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM3D .GT. 7 ) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_3Dfields(1-OLx,1-OLy,1,8),
     &                       'n_assimd', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_integral(1-OLx,1-OLy,8),
     &                       'GRNAVID ', 0,  1, 2, bi, bj, myThid)
       ENDIF
       ndiags3d_used = 8
       if ( nDiagsREcom3D . GE. (ndiags3d_used+28) ) then
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+1),
     &            'reminer ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+2),
     &            'graztot ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+3),
     &            'resptot ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+4),
     &            'calcprod', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+5),
     &            'calcdiss', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+6),
     &            'rdoczoo ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+7),
     &            'rpoczoo ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+8),
     &            'cdiapoc ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+9),
     &            'cphypoc ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+10),
     &            'cdiadoc ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+11),
     &            'cphydoc ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+12),
     &            'cresdia ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+13),
     &            'cresphy ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+14),
     &            'creszoo ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+15),
     &            'grazdia ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+16),
     &            'grazphy ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+17),
     &            'par3d   ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+18),
     &            'nlimdia ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+19),
     &            'nlimphy ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+20),
     &            'llimdia ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+21),
     &            'llimphy ', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+22),
     &            'felimdia', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+23),
     &            'felimphy', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+24),
     &            'silimdia', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+25),
     &            'sink_pon', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+26),
     &            'sink_poc', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+27),
     &            'sink_bsi', 0, Nr, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(
     &            recom_diag_3Dfields(1-OLx,1-OLy,1,ndiags3d_used+28),
     &            'sinkcalc', 0, Nr, 2, bi, bj, myThid)
       endif
       IF ( nDiagsREcoM2D .GE. 4) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,1),
     &                       'SEDFN   ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,2),
     &                       'SEDFC   ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,3),
     &                       'SEDFSI  ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,4),
     &                       'SEDFCALC', 0,  1, 2, bi, bj, myThid)
       ENDIF
       IF ( nDiagsREcoM2D .GE. 9) THEN
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,5),
     &                       'DIAFN   ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,6),
     &                       'DIAFC   ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,7),
     &                       'DIAFALK ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,8),
     &                       'DIAFSI  ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,9),
     &                       'DIAFFE  ', 0,  1, 2, bi, bj, myThid)
       ENDIF

        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,10),
     &                       'EXPORTN ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,11),
     &                       'EXPORTC ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,12),
     &                       'EXPCALC ', 0,  1, 2, bi, bj, myThid)
        CALL DIAGNOSTICS_FILL(recom_diag_2Dfields(1-OLx,1-OLy,13),
     &                       'EXPORTSI', 0,  1, 2, bi, bj, myThid)

       CALL DIAGNOSTICS_FILL(PARadiation,
     &                      'PARSURF ', 0,  1, 2, bi, bj, myThid)
       CALL DIAGNOSTICS_FILL(surfaceForcingPtr(1-Olx,1-Oly,1,1,iDIC),
     &                      'CO2Flx  ', 0,  1, 1, bi, bj, myThid) 
       CALL DIAGNOSTICS_FILL(surfpco2,
     &                      'pCO2surf ', 0,  1, 1, bi, bj, myThid)
       CALL DIAGNOSTICS_FILL(hPlus,
     &                      'HPlus   ', 0,  1, 1, bi, bj, myThid)
       CALL DIAGNOSTICS_FILL(surfaceForcingPtr(1-Olx,1-Oly,1,1,iFe),
     &                      'FeSrfFlx', 0,  1, 1, bi, bj, myThid)
       CALL DIAGNOSTICS_FILL(erosionFlux,
     &                      'FeBtmFlx', 0,  1, 2, bi, bj, myThid)
       CALL DIAGNOSTICS_FILL(benthicLayerN,
     &                      'NBENTHOS', 0,  1, 1, bi, bj, myThid)
       CALL DIAGNOSTICS_FILL(benthicLayerC,
     &                      'CBENTHOS', 0,  1, 1, bi, bj, myThid)
CCV#ifdef ALLOW_RECOM_SILICATE
       CALL DIAGNOSTICS_FILL(benthicLayerSi,
     &                      'SBENTHOS', 0,  1, 1, bi, bj, myThid)
CCV#endif 
       CALL DIAGNOSTICS_FILL(benthicLayerCaCO3,
     &                      'CALCBENT', 0,  1, 1, bi, bj, myThid)
      ENDIF


      RETURN
      END

      SUBROUTINE RECOM_FORCING_DUMMY( 
     I     iMin, iMax, jMin, jMax, bi, bj, myTime, myIter, myThid )
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
C $Header: /u/gcmpack/MITgcm/model/inc/GRID.h,v 1.41 2010/09/11 21:23:09 jmc Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: GRID.h
C    !INTERFACE:
C    include GRID.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | GRID.h
C     | o Header file defining model grid.
C     *==========================================================*
C     | Model grid is defined for each process by reference to
C     | the arrays set here.
C     | Notes
C     | =====
C     | The standard MITgcm convention of westmost, southern most
C     | and upper most having the (1,1,1) index is used here.
C     | i.e.
C     |----------------------------------------------------------
C     | (1)  Plan view schematic of model grid (top layer i.e. )
C     |      ================================= ( ocean surface )
C     |                                        ( or top of     )
C     |                                        ( atmosphere    )
C     |      This diagram shows the location of the model
C     |      prognostic variables on the model grid. The "T"
C     |      location is used for all tracers. The figure also
C     |      shows the southern most, western most indexing
C     |      convention that is used for all model variables.
C     |
C     |
C     |             V(i=1,                     V(i=Nx,
C     |               j=Ny+1,                    j=Ny+1,
C     |               k=1)                       k=1)
C     |                /|\                       /|\  "PWX"
C     |       |---------|------------------etc..  |---- *---
C     |       |                     |                   *  |
C     |"PWY"*******************************etc..  **********"PWY"
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x           |             x     *==>U
C     |  j=Ny,|      T(i=1,         |          T(i=Nx,  *(i=Nx+1,
C     |  k=1) |        j=Ny,        |            j=Ny,  *  |j=Ny,
C     |       |        k=1)         |            k=1)   *  |k=1)
C     |
C     |       .                     .                      .
C     |       .                     .                      .
C     |       .                     .                      .
C     |       e                     e                   *  e
C     |       t                     t                   *  t
C     |       c                     c                   *  c
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x           |             x     *  |
C     |  j=2, |      T(i=1,         |          T(i=Nx,  *  |
C     |  k=1) |        j=2,         |            j=2,   *  |
C     |       |        k=1)         |            k=1)   *  |
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |      -----------|------------------etc..  |-----*---
C     |       |       V(i=1,        |           V(i=Nx, *  |
C     |       |         j=2,        |             j=2,  *  |
C     |       |         k=1)        |             k=1)  *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x         ==>U(i=2,       x     *==>U
C     |  j=1, |      T(i=1,         |  j=1,    T(i=Nx,  *(i=Nx+1,
C     |  k=1) |        j=1,         |  k=1)      j=1,   *  |j=1,
C     |       |        k=1)         |            k=1)   *  |k=1)
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |"SB"++>|---------|------------------etc..  |-----*---
C     |      /+\      V(i=1,                    V(i=Nx, *
C     |       +         j=1,                      j=1,  *
C     |       +         k=1)                      k=1)  *
C     |     "WB"                                      "PWX"
C     |
C     |   N, y increasing northwards
C     |  /|\ j increasing northwards
C     |   |
C     |   |
C     |   ======>E, x increasing eastwards
C     |             i increasing eastwards
C     |
C     |    i: East-west index
C     |    j: North-south index
C     |    k: up-down index
C     |    U: x-velocity (m/s)
C     |    V: y-velocity (m/s)
C     |    T: potential temperature (oC)
C     | "SB": Southern boundary
C     | "WB": Western boundary
C     |"PWX": Periodic wrap around in X.
C     |"PWY": Periodic wrap around in Y.
C     |----------------------------------------------------------
C     | (2) South elevation schematic of model grid
C     |     =======================================
C     |     This diagram shows the location of the model
C     |     prognostic variables on the model grid. The "T"
C     |     location is used for all tracers. The figure also
C     |     shows the upper most, western most indexing
C     |     convention that is used for all model variables.
C     |
C     |      "WB"
C     |       +
C     |       +
C     |      \+/       /|\                       /|\       .
C     |"UB"++>|-------- | -----------------etc..  | ----*---
C     |       |    rVel(i=1,        |        rVel(i=Nx, *  |
C     |       |         j=1,        |             j=1,  *  |
C     |       |         k=1)        |             k=1)  *  |
C     |       |                     |                   *  |
C     |U(i=1, ==>       x         ==>U(i=2,       x     *==>U
C     |  j=1, |      T(i=1,         |  j=1,    T(i=Nx,  *(i=Nx+1,
C     |  k=1) |        j=1,         |  k=1)      j=1,   *  |j=1,
C     |       |        k=1)         |            k=1)   *  |k=1)
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |       |-------- | -----------------etc..  | ----*---
C     |       |    rVel(i=1,        |        rVel(i=Nx, *  |
C     |       |         j=1,        |             j=1,  *  |
C     |       |         k=2)        |             k=2)  *  |
C     |
C     |       .                     .                      .
C     |       .                     .                      .
C     |       .                     .                      .
C     |       e                     e                   *  e
C     |       t                     t                   *  t
C     |       c                     c                   *  c
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |                     |                   *  |
C     |       |        /|\          |            /|\    *  |
C     |       |-------- | -----------------etc..  | ----*---
C     |       |    rVel(i=1,        |        rVel(i=Nx, *  |
C     |       |         j=1,        |             j=1,  *  |
C     |       |         k=Nr)       |             k=Nr) *  |
C     |U(i=1, ==>       x         ==>U(i=2,       x     *==>U
C     |  j=1, |      T(i=1,         |  j=1,    T(i=Nx,  *(i=Nx+1,
C     |  k=Nr)|        j=1,         |  k=Nr)     j=1,   *  |j=1,
C     |       |        k=Nr)        |            k=Nr)  *  |k=Nr)
C     |       |                     |                   *  |
C     |"LB"++>==============================================
C     |                                               "PWX"
C     |
C     | Up   increasing upwards.
C     |/|\                                                       .
C     | |
C     | |
C     | =====> E  i increasing eastwards
C     | |         x increasing eastwards
C     | |
C     |\|/
C     | Down,k increasing downwards.
C     |
C     | Note: r => height (m) => r increases upwards
C     |       r => pressure (Pa) => r increases downwards
C     |
C     |
C     |    i: East-west index
C     |    j: North-south index
C     |    k: up-down index
C     |    U: x-velocity (m/s)
C     | rVel: z-velocity ( units of r )
C     |       The vertical velocity variable rVel is in units of
C     |       "r" the vertical coordinate. r in m will give
C     |       rVel m/s. r in Pa will give rVel Pa/s.
C     |    T: potential temperature (oC)
C     | "UB": Upper boundary.
C     | "LB": Lower boundary (always solid - therefore om|w == 0)
C     | "WB": Western boundary
C     |"PWX": Periodic wrap around in X.
C     |----------------------------------------------------------
C     | (3) Views showing nomenclature and indexing
C     |     for grid descriptor variables.
C     |
C     |      Fig 3a. shows the orientation, indexing and
C     |      notation for the grid spacing terms used internally
C     |      for the evaluation of gradient and averaging terms.
C     |      These varaibles are set based on the model input
C     |      parameters which define the model grid in terms of
C     |      spacing in X, Y and Z.
C     |
C     |      Fig 3b. shows the orientation, indexing and
C     |      notation for the variables that are used to define
C     |      the model grid. These varaibles are set directly
C     |      from the model input.
C     |
C     | Figure 3a
C     | =========
C     |       |------------------------------------
C     |       |                       |
C     |"PWY"********************************* etc...
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |
C     |       .                       .
C     |       .                       .
C     |       .                       .
C     |       e                       e
C     |       t                       t
C     |       c                       c
C     |       |-----------v-----------|-----------v----------|-
C     |       |                       |                      |
C     |       |                       |                      |
C     |       |                       |                      |
C     |       |                       |                      |
C     |       |                       |                      |
C     |       u<--dxF(i=1,j=2,k=1)--->u           t          |
C     |       |/|\       /|\          |                      |
C     |       | |         |           |                      |
C     |       | |         |           |                      |
C     |       | |         |           |                      |
C     |       |dyU(i=1,  dyC(i=1,     |                      |
C     | ---  ---|--j=2,---|--j=2,-----------------v----------|-
C     | /|\   | |  k=1)   |  k=1)     |          /|\         |
C     |  |    | |         |           |          dyF(i=2,    |
C     |  |    | |         |           |           |  j=1,    |
C     |dyG(   |\|/       \|/          |           |  k=1)    |
C     |   i=1,u---        t<---dxC(i=2,j=1,k=1)-->t          |
C     |   j=1,|                       |           |          |
C     |   k=1)|                       |           |          |
C     |  |    |                       |           |          |
C     |  |    |                       |           |          |
C     | \|/   |           |<---dxV(i=2,j=1,k=1)--\|/         |
C     |"SB"++>|___________v___________|___________v__________|_
C     |       <--dxG(i=1,j=1,k=1)----->
C     |      /+\                                              .
C     |       +
C     |       +
C     |     "WB"
C     |
C     |   N, y increasing northwards
C     |  /|\ j increasing northwards
C     |   |
C     |   |
C     |   ======>E, x increasing eastwards
C     |             i increasing eastwards
C     |
C     |    i: East-west index
C     |    j: North-south index
C     |    k: up-down index
C     |    u: x-velocity point
C     |    V: y-velocity point
C     |    t: tracer point
C     | "SB": Southern boundary
C     | "WB": Western boundary
C     |"PWX": Periodic wrap around in X.
C     |"PWY": Periodic wrap around in Y.
C     |
C     | Figure 3b
C     | =========
C     |
C     |       .                       .
C     |       .                       .
C     |       .                       .
C     |       e                       e
C     |       t                       t
C     |       c                       c
C     |       |-----------v-----------|-----------v--etc...
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       u<--delX(i=1)---------->u           t
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |                       |
C     |       |-----------v-----------------------v--etc...
C     |       |          /|\          |
C     |       |           |           |
C     |       |           |           |
C     |       |           |           |
C     |       u        delY(j=1)      |           t
C     |       |           |           |
C     |       |           |           |
C     |       |           |           |
C     |       |           |           |
C     |       |          \|/          |
C     |"SB"++>|___________v___________|___________v__etc...
C     |      /+\                                                 .
C     |       +
C     |       +
C     |     "WB"
C     |
C     *==========================================================*
C     \ev
CEOP

C     Macros that override/modify standard definitions
C $Header: /u/gcmpack/MITgcm/model/inc/GRID_MACROS.h,v 1.12 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: GRID_MACROS.h
C    !INTERFACE:
C    include GRID_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | GRID_MACROS.h                                             
C     *==========================================================*
C     | These macros are used to substitute definitions for       
C     | GRID.h variables for particular configurations.           
C     | In setting these variables the following convention       
C     | applies.                                                  
C     | undef  phi_CONST   - Indicates the variable phi is fixed  
C     |                      in X, Y and Z.                       
C     | undef  phi_FX      - Indicates the variable phi only      
C     |                      varies in X (i.e.not in X or Z).     
C     | undef  phi_FY      - Indicates the variable phi only      
C     |                      varies in Y (i.e.not in X or Z).     
C     | undef  phi_FXY     - Indicates the variable phi only      
C     |                      varies in X and Y ( i.e. not Z).     
C     *==========================================================*
C     \ev
CEOP

C $Header: /u/gcmpack/MITgcm/model/inc/DXC_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXC_MACROS.h
C    !INTERFACE:
C    include DXC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXC_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DXF_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXF_MACROS.h
C    !INTERFACE:
C    include DXF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXF_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DXG_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXG_MACROS.h
C    !INTERFACE:
C    include DXG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXG_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DXV_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DXV_MACROS.h
C    !INTERFACE:
C    include DXV_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DXV_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYC_MACROS.h
C    !INTERFACE:
C    include DYC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYC_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYF_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYF_MACROS.h
C    !INTERFACE:
C    include DYF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYF_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYG_MACROS.h,v 1.4 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYG_MACROS.h
C    !INTERFACE:
C    include DYG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYG_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/DYU_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: DYU_MACROS.h
C    !INTERFACE:
C    include DYU_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | DYU_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/HFACC_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: HFACC_MACROS.h
C    !INTERFACE:
C    include HFACC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | HFACC_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/HFACS_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: HFACS_MACROS.h
C    !INTERFACE:
C    include HFACS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | HFACS_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/HFACW_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: HFACW_MACROS.h
C    !INTERFACE:
C    include HFACW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | HFACW_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXC_MACROS.h
C    !INTERFACE:
C    include RECIP_DXC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXC_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXF_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXF_MACROS.h
C    !INTERFACE:
C    include RECIP_DXF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXF_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXG_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXG_MACROS.h
C    !INTERFACE:
C    include RECIP_DXG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXG_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DXV_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DXV_MACROS.h
C    !INTERFACE:
C    include RECIP_DXV_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DXV_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYC_MACROS.h
C    !INTERFACE:
C    include RECIP_DYC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYC_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYF_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYF_MACROS.h
C    !INTERFACE:
C    include RECIP_DYF_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYF_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYG_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYG_MACROS.h
C    !INTERFACE:
C    include RECIP_DYG_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYG_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_DYU_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_DYU_MACROS.h
C    !INTERFACE:
C    include RECIP_DYU_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_DYU_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_HFACC_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_HFACC_MACROS.h
C    !INTERFACE:
C    include RECIP_HFACC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_HFACC_MACROS.h                                      
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_HFACS_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_HFACS_MACROS.h
C    !INTERFACE:
C    include RECIP_HFACS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_HFACS_MACROS.h                                      
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/RECIP_HFACW_MACROS.h,v 1.4 2006/06/07 01:55:12 heimbach Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RECIP_HFACW_MACROS.h
C    !INTERFACE:
C    include RECIP_HFACW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RECIP_HFACW_MACROS.h                                      
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP







C $Header: /u/gcmpack/MITgcm/model/inc/XC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: XC_MACROS.h
C    !INTERFACE:
C    include XC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | XC_MACROS.h                                               
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/YC_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: YC_MACROS.h
C    !INTERFACE:
C    include YC_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | YC_MACROS.h                                               
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/RA_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RA_MACROS.h
C    !INTERFACE:
C    include RA_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RA_MACROS.h                                               
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP




C $Header: /u/gcmpack/MITgcm/model/inc/RAW_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RAW_MACROS.h
C    !INTERFACE:
C    include RAW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RAW_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP




C $Header: /u/gcmpack/MITgcm/model/inc/RAS_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: RAS_MACROS.h
C    !INTERFACE:
C    include RAS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | RAS_MACROS.h                                              
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/MASKW_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: MASKW_MACROS.h
C    !INTERFACE:
C    include MASKW_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | MASKW_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP






C $Header: /u/gcmpack/MITgcm/model/inc/MASKS_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: MASKS_MACROS.h
C    !INTERFACE:
C    include MASKS_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | MASKS_MACROS.h                                            
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP






C $Header: /u/gcmpack/MITgcm/model/inc/TANPHIATU_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: TANPHIATU_MACROS.h
C    !INTERFACE:
C    include TANPHIATU_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | TANPHIATU_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C $Header: /u/gcmpack/MITgcm/model/inc/TANPHIATV_MACROS.h,v 1.3 2001/09/21 15:13:31 cnh Exp $
C $Name: checkpoint62r $
C
CBOP
C    !ROUTINE: TANPHIATV_MACROS.h
C    !INTERFACE:
C    include TANPHIATV_MACROS.h
C    !DESCRIPTION: \bv
C     *==========================================================*
C     | TANPHIATV_MACROS.h                                        
C     *==========================================================*
C     | These macros are used to reduce memory requirement and/or 
C     | memory references when variables are fixed along a given  
C     | axis or axes.                                             
C     *==========================================================*
C     \ev
CEOP





C--   COMMON /GRID_RL/ RL valued grid defining variables.
C     deepFacC  :: deep-model grid factor (fct of vertical only) for dx,dy
C     deepFacF     at level-center (deepFacC)  and level interface (deepFacF)
C     deepFac2C :: deep-model grid factor (fct of vertical only) for area dx*dy
C     deepFac2F    at level-center (deepFac2C) and level interface (deepFac2F)
C     gravitySign :: indicates the direction of gravity relative to R direction
C                   (= -1 for R=Z (Z increases upward, -gravity direction  )
C                   (= +1 for R=P (P increases downward, +gravity direction)
C     rkSign     :: Vertical coordinate to vertical index orientation.
C                   ( +1 same orientation, -1 opposite orientation )
C     globalArea :: Domain Integrated horizontal Area [m2]
      COMMON /GRID_RL/
     &  cosFacU, cosFacV, sqCosFacU, sqCosFacV,
     &  deepFacC, deepFac2C, recip_deepFacC, recip_deepFac2C,
     &  deepFacF, deepFac2F, recip_deepFacF, recip_deepFac2F,
     &  gravitySign, rkSign, globalArea
      Real*8 cosFacU        (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 cosFacV        (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 sqCosFacU      (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 sqCosFacV      (1-Oly:sNy+Oly,nSx,nSy)
      Real*8 deepFacC       (Nr)
      Real*8 deepFac2C      (Nr)
      Real*8 deepFacF       (Nr+1)
      Real*8 deepFac2F      (Nr+1)
      Real*8 recip_deepFacC (Nr)
      Real*8 recip_deepFac2C(Nr)
      Real*8 recip_deepFacF (Nr+1)
      Real*8 recip_deepFac2F(Nr+1)
      Real*8 gravitySign
      Real*8 rkSign
      Real*8 globalArea

C--   COMMON /GRID_RS/ RS valued grid defining variables.
C     dxC     :: Cell center separation in X across western cell wall (m)
C     dxG     :: Cell face separation in X along southern cell wall (m)
C     dxF     :: Cell face separation in X thru cell center (m)
C     dxV     :: V-point separation in X across south-west corner of cell (m)
C     dyC     :: Cell center separation in Y across southern cell wall (m)
C     dyG     :: Cell face separation in Y along western cell wall (m)
C     dyF     :: Cell face separation in Y thru cell center (m)
C     dyU     :: U-point separation in Y across south-west corner of cell (m)
C     drC     :: Cell center separation along Z axis ( units of r ).
C     drF     :: Cell face separation along Z axis ( units of r ).
C     R_low   :: base of fluid in r_unit (Depth(m) / Pressure(Pa) at top Atmos.)
C     rLowW   :: base of fluid column in r_unit at Western  edge location.
C     rLowS   :: base of fluid column in r_unit at Southern edge location.
C     Ro_surf :: surface reference (at rest) position, r_unit.
C     rSurfW  :: surface reference position at Western  edge location [r_unit].
C     rSurfS  :: surface reference position at Southern edge location [r_unit].
C     hFac    :: Fraction of cell in vertical which is open i.e how
C              "lopped" a cell is (dimensionless scale factor).
C              Note: The code needs terms like MIN(hFac,hFac(I+1))
C                    On some platforms it may be better to precompute
C                    hFacW, hFacE, ... here than do MIN on the fly.
cC    maskH   :: cell Center full-column mask (= 2D mask)
C     maskInC :: Cell Center 2-D Interior mask (i.e., zero beyond OB)
C     maskInW :: West  face 2-D Interior mask (i.e., zero on and beyond OB)
C     maskInS :: South face 2-D Interior mask (i.e., zero on and beyond OB)
C     maskC   :: cell Center land mask
C     maskW   :: West face land mask
C     maskS   :: South face land mask
C     recip_dxC   :: Reciprocal of dxC
C     recip_dxG   :: Reciprocal of dxG
C     recip_dxF   :: Reciprocal of dxF
C     recip_dxV   :: Reciprocal of dxV
C     recip_dyC   :: Reciprocal of dxC
C     recip_dyG   :: Reciprocal of dyG
C     recip_dyF   :: Reciprocal of dyF
C     recip_dyU   :: Reciprocal of dyU
C     recip_drC   :: Reciprocal of drC
C     recip_drF   :: Reciprocal of drF
C     recip_Rcol  :: Inverse of cell center column thickness (1/r_unit)
C     recip_hFacC :: Inverse of cell open-depth f[X,Y,Z] ( dimensionless ).
C     recip_hFacW    rhFacC center, rhFacW west, rhFacS south.
C     recip_hFacS    Note: This is precomputed here because it involves division.
C     xC        :: X-coordinate of cell center f[X,Y]. The units of xc, yc
C                  depend on the grid. They are not used in differencing or
C                  averaging but are just a convient quantity for I/O,
C                  diagnostics etc.. As such xc is in m for cartesian
C                  coordinates but degrees for spherical polar.
C     yC        :: Y-coordinate of center of cell f[X,Y].
C     yG        :: Y-coordinate of corner of cell ( c-grid vorticity point) f[X,Y].
C     rA        :: R-face are f[X,Y] ( m^2 ).
C                  Note: In a cartesian framework zA is simply dx*dy,
C                      however we use zA to allow for non-globally
C                      orthogonal coordinate frames (with appropriate
C                      metric terms).
C     rC        :: R-coordinate of center of cell f[Z] (units of r).
C     rF        :: R-coordinate of face of cell f[Z] (units of r).
C - *HybSigm* - :: Hybrid-Sigma vert. Coord coefficients
C     aHybSigmF    at level-interface (*HybSigmF) and level-center (*HybSigmC)
C     aHybSigmC    aHybSigm* = constant r part, bHybSigm* = sigma part, such as
C     bHybSigmF    r(ij,k,t) = rLow(ij) + aHybSigm(k)*[rF(1)-rF(Nr+1)]
C     bHybSigmC              + bHybSigm(k)*[eta(ij,t)+Ro_surf(ij) - rLow(ij)]
C     dAHybSigF :: vertical increment of Hybrid-Sigma coefficient: constant r part,
C     dAHybSigC    between interface (dAHybSigF) and between center (dAHybSigC)
C     dBHybSigF :: vertical increment of Hybrid-Sigma coefficient: sigma part,
C     dBHybSigC    between interface (dBHybSigF) and between center (dBHybSigC)
C     tanPhiAtU :: tan of the latitude at U point. Used for spherical polar
C                  metric term in U equation.
C     tanPhiAtV :: tan of the latitude at V point. Used for spherical polar
C                  metric term in V equation.
C     angleCosC :: cosine of grid orientation angle relative to Geographic direction
C               at cell center: alpha=(Eastward_dir,grid_uVel_dir)=(North_d,vVel_d)
C     angleSinC :: sinus  of grid orientation angle relative to Geographic direction
C               at cell center: alpha=(Eastward_dir,grid_uVel_dir)=(North_d,vVel_d)
C     fCori     :: Coriolis parameter at grid Center point
C     fCoriG    :: Coriolis parameter at grid Corner point
C     fCoriCos  :: Coriolis Cos(phi) parameter at grid Center point (for NH)

      COMMON /GRID_RS/
     &  dxC,dxF,dxG,dxV,dyC,dyF,dyG,dyU,
     &  R_low, rLowW, rLowS,
     &  Ro_surf, rSurfW, rSurfS,
     &  hFacC, hFacW, hFacS,
     &  recip_dxC,recip_dxF,recip_dxG,recip_dxV,
     &  recip_dyC,recip_dyF,recip_dyG,recip_dyU,
     &  recip_Rcol,
     &  recip_hFacC,recip_hFacW,recip_hFacS,
     &  xC,yC,rA,rAw,rAs,rAz,xG,yG,
     &  maskInC, maskInW, maskInS,
     &  maskC, maskW, maskS,
     &  recip_rA,recip_rAw,recip_rAs,recip_rAz,
     &  drC, drF, recip_drC, recip_drF, rC, rF,
     &  aHybSigmF, bHybSigmF, aHybSigmC, bHybSigmC,
     &  dAHybSigF, dBHybSigF, dBHybSigC, dAHybSigC,
     &  tanPhiAtU, tanPhiAtV, angleCosC, angleSinC,
     &  fCori, fCoriG, fCoriCos
c    & , maskH
      Real*8 dxC            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dxF            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dxG            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dxV            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyC            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyF            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyG            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 dyU            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 R_low          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rLowW          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rLowS          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 Ro_surf        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rSurfW         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rSurfS         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 hFacC          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 hFacW          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 hFacS          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 recip_dxC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dxF      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dxG      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dxV      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyF      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyG      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_dyU      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_Rcol     (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_hFacC    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 recip_hFacW    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 recip_hFacS    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 xC             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 xG             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 yC             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 yG             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rA             (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rAw            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rAs            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 rAz            (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rA       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rAw      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rAs      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 recip_rAz      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
c     Real*8 maskH          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskInC        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskInW        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskInS        (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 maskC          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 maskW          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 maskS          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy)
      Real*8 drC            (Nr)
      Real*8 drF            (Nr)
      Real*8 recip_drC      (Nr)
      Real*8 recip_drF      (Nr)
      Real*8 rC             (Nr)
      Real*8 rF             (Nr+1)
      Real*8 aHybSigmF      (Nr+1)
      Real*8 bHybSigmF      (Nr+1)
      Real*8 aHybSigmC      (Nr)
      Real*8 bHybSigmC      (Nr)
      Real*8 dAHybSigF      (Nr)
      Real*8 dBHybSigF      (Nr)
      Real*8 dBHybSigC      (Nr+1)
      Real*8 dAHybSigC      (Nr+1)
      Real*8 tanPhiAtU      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 tanPhiAtV      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 angleCosC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 angleSinC      (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 fCori          (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 fCoriG         (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      Real*8 fCoriCos       (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)


C--   COMMON /GRID_I/ INTEGER valued grid defining variables.
C     kSurfC  :: vertical index of the surface tracer cell
C     kSurfW  :: vertical index of the surface U point
C     kSurfS  :: vertical index of the surface V point
C     kLowC   :: index of the r-lowest "wet cell" (2D)
C IMPORTANT: ksurfC,W,S = Nr+1 and kLowC = 0 where the fluid column
C            is empty (continent)
      COMMON /GRID_I/
     &  kSurfC, kSurfW, kSurfS,
     &  kLowC
      INTEGER kSurfC(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER kSurfW(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER kSurfS(1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)
      INTEGER kLowC (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy)

C---+----1----+----2----+----3----+----4----+----5----+----6----+----7-|--+----|
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

C $Header: /u/gcmpack/MITgcm/verification/dic_example/code/PTRACERS_SIZE.h,v 1.1 2004/09/01 03:44:40 edhill Exp $
C $Name:  $


CBOP
C    !ROUTINE: PTRACERS_SIZE.h
C    !INTERFACE:
C #include PTRACERS_SIZE.h
 
C    !DESCRIPTION:
C Contains passive tracer array size (number of tracers).

C PTRACERS_num defines how many passive tracers are allocated/exist.
C  and is set here (default 1)
C
C     Number of tracers
      INTEGER PTRACERS_num
      PARAMETER(PTRACERS_num = 21)

CEOP
C $Header: /u/gcmpack/MITgcm/pkg/ptracers/PTRACERS_PARAMS.h,v 1.8 2010/09/05 22:28:14 jmc Exp $
C $Name: checkpoint62r $


CBOP
C    !ROUTINE: PTRACERS_PARAMS.h
C    !INTERFACE:
C #include PTRACERS_PARAMS.h

C    !DESCRIPTION:
C Contains passive tracer parameters.

CEOP

C     COMMON /PTRACERS_PARAMS/  PTRACERS parameters:
C     PTRACERS_taveFreq :: Frequency with which time-averaged PTRACERS
C                          are written to post-processing files.
C     PTRACERS_ref      :: vertical profile for passive tracers, in
C                          analogy to tRef and sRef, hence the name
C     PTRACERS_EvPrRn   :: tracer concentration in Rain, Evap & RunOff
C       notes: a) used if both NonLin_FrSurf & useRealFreshWater are set.
C              b) use pTracer surface (local) value if = UNSET_RL (default)
C     PTRACERS_Iter0    :: timestep number when tracers are initialized
C     PTRACERS_dTLev    :: Timestep for ptracers ( s ), function of level k

      Real*8 PTRACERS_dumpFreq
      Real*8 PTRACERS_taveFreq
      Real*8 PTRACERS_monitorFreq
      Real*8 PTRACERS_diffKh(PTRACERS_num)
      Real*8 PTRACERS_diffK4(PTRACERS_num)
      Real*8 PTRACERS_diffKrNr(Nr,PTRACERS_num)
      Real*8 PTRACERS_ref(Nr,PTRACERS_num)
      Real*8 PTRACERS_EvPrRn(PTRACERS_num)
      Real*8 PTRACERS_dTLev(Nr)
      COMMON /PTRACERS_PARAMS_R/
     &     PTRACERS_dumpFreq,
     &     PTRACERS_taveFreq,
     &     PTRACERS_monitorFreq,
     &     PTRACERS_diffKh,
     &     PTRACERS_diffK4,
     &     PTRACERS_diffKrNr,
     &     PTRACERS_ref,
     &     PTRACERS_EvPrRn,
     &     PTRACERS_dTLev

C     COMMON /PTRACERS_OLD_R/ Old (real type) PTRACERS parameters
C        (to be removed 1 day ...)
      Real*8 lambdaTr1ClimRelax
      COMMON /PTRACERS_OLD_R/
     &     lambdaTr1ClimRelax

      INTEGER PTRACERS_Iter0
      INTEGER PTRACERS_numInUse
      INTEGER PTRACERS_advScheme(PTRACERS_num)
      COMMON /PTRACERS_PARAMS_I/
     &     PTRACERS_Iter0,
     &     PTRACERS_numInUse,
     &     PTRACERS_advScheme

C     PTRACERS_MultiDimAdv   :: internal flag (depend on the advection scheme),
C                               true if this tracer uses Multi-Dim advection
C     PTRACERS_SOM_Advection :: internal flag (depend on the advection scheme),
C                               true if this tracer uses 2nd-order moment advection
C     PTRACERS_AdamsBashGtr  :: internal flag (depend on the advection scheme),
C                               true if applies Adams-Bashforth on tracer tendency
C     PTRACERS_useDWNSLP(n)  :: true if Down-Sloping flow applies to pTracer n
C     PTRACERS_addSrelax2EmP :: add Salt relaxation to EmP
      LOGICAL PTRACERS_ImplVertAdv(PTRACERS_num)
      LOGICAL PTRACERS_MultiDimAdv(PTRACERS_num)
      LOGICAL PTRACERS_SOM_Advection(PTRACERS_num)
      LOGICAL PTRACERS_AdamsBashGtr(PTRACERS_num)
      LOGICAL PTRACERS_useGMRedi(PTRACERS_num)
      LOGICAL PTRACERS_useDWNSLP(PTRACERS_num)
      LOGICAL PTRACERS_useKPP(PTRACERS_num)
      LOGICAL PTRACERS_addSrelax2EmP
      LOGICAL PTRACERS_useRecords
      LOGICAL
     &     PTRACERS_monitor_mnc, PTRACERS_monitor_stdio,
     &     PTRACERS_timeave_mdsio, PTRACERS_snapshot_mdsio,
     &     PTRACERS_pickup_write_mdsio, PTRACERS_pickup_read_mdsio,
     &     PTRACERS_timeave_mnc, PTRACERS_snapshot_mnc,
     &     PTRACERS_pickup_write_mnc, PTRACERS_pickup_read_mnc
      COMMON /PTRACERS_PARAMS_L/
     &     PTRACERS_ImplVertAdv,
     &     PTRACERS_MultiDimAdv,
     &     PTRACERS_SOM_Advection,
     &     PTRACERS_AdamsBashGtr,
     &     PTRACERS_useGMRedi,
     &     PTRACERS_useDWNSLP,
     &     PTRACERS_useKPP,
     &     PTRACERS_useRecords,
     &     PTRACERS_addSrelax2EmP,
     &     PTRACERS_timeave_mdsio, PTRACERS_snapshot_mdsio,
     &     PTRACERS_pickup_write_mdsio, PTRACERS_pickup_read_mdsio,
     &     PTRACERS_monitor_stdio, PTRACERS_monitor_mnc,
     &     PTRACERS_timeave_mnc, PTRACERS_snapshot_mnc,
     &     PTRACERS_pickup_write_mnc, PTRACERS_pickup_read_mnc

      CHARACTER*(MAX_LEN_FNAM) PTRACERS_initialFile(PTRACERS_num)
      CHARACTER*(MAX_LEN_FNAM) PTRACERS_names(PTRACERS_num)
      CHARACTER*(MAX_LEN_FNAM) PTRACERS_long_names(PTRACERS_num)
      CHARACTER*(MAX_LEN_FNAM) PTRACERS_units(PTRACERS_num)
      COMMON /PTRACERS_PARAMS_C/
     &     PTRACERS_initialFile,
     &     PTRACERS_names,
     &     PTRACERS_long_names,
     &     PTRACERS_units

C     COMMON /PTRACERS_LABELS/ holds pTracers labels
C     PTRACERS_ioLabel  :: pTracer I/O & diagnostics label (2 charecters long)
      COMMON /PTRACERS_LABELS/
     &     PTRACERS_ioLabel
      CHARACTER*2              PTRACERS_ioLabel(PTRACERS_num)


CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
C $Header: /u/gcmpack/MITgcm/pkg/ptracers/PTRACERS_FIELDS.h,v 1.1 2007/11/05 18:48:04 jmc Exp $
C $Name: checkpoint62r $


CBOP
C    !ROUTINE: PTRACERS_FIELDS.h
C    !INTERFACE:
C #include PTRACERS_FIELDS.h

C    !DESCRIPTION:
C Contains passive tracer fields

CEOP

C     COMMON /PTRACERS_FIELDS/
C     pTracer  :: passive tracer concentration (tr per unit volume).
C     gPtr     :: work-space for time-stepping
C     gpTrNm1  :: work-space for time-stepping
C     surfaceForcingPTr :: passive tracer surface forcing
      Real*8  pTracer (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy,
     &              PTRACERS_num)
      Real*8  gPtr    (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy,
     &              PTRACERS_num)
      Real*8  gpTrNm1 (1-OLx:sNx+OLx,1-OLy:sNy+OLy,Nr,nSx,nSy,
     &              PTRACERS_num)
      Real*8  surfaceForcingPTr (1-OLx:sNx+OLx,1-OLy:sNy+OLy,nSx,nSy,
     &              PTRACERS_num)
      COMMON /PTRACERS_FIELDS/
     &              pTracer, gPtr, gpTrNm1, surfaceForcingPTr


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
      INTEGER iMin, iMax, jMin, jMax
      integer bi, bj
      integer mythid 
      integer myiter
      Real*8     myTime
      INTEGER i,j,k,iTracer,krLoc, kSurface
      ksurface = 1
      DO j=jMin,jMax
       DO i=iMin,iMax
        IF ( hFacC(i,j,ksurface,bi,bj) .gt. 0.d0 ) THEN
C--------------------------------------
CCV The meaning of the following part is completely unclear to me. Delete?
CCV#ifdef ALLOW_RECOM_FEINPUT
C     Iron:
         iTracer = 4
C     feDustFlux is iron, needs to be converted into dissolved iron, also
C     obey MITgcm sign conventions (positive = upward flux)
         surfaceForcingPtr(i,j,bi,bj,iTracer) = 
     &        - maskC(i,j,kSurface,bi,bj)
     &       * constantIronSolubility*feDustDeposit(i,j,bi,bj)
         pTracer(i,j,ksurface,bi,bj,iTracer) =
     &        pTracer(i,j,ksurface,bi,bj,iTracer)
     &        - surfaceForcingPtr(i,j,bi,bj,iTracer)
     &        * recip_drF(kSurface)*recip_hFacC(i,j,kSurface,bi,bj)
     &        * dTtracerLev(kSurface)
         pTracer(i,j,ksurface,bi,bj,5) =
     &        pTracer(i,j,ksurface,bi,bj,5)
     &        - surfaceForcingPtr(i,j,bi,bj,iTracer)
     &        * recip_drF(kSurface)*recip_hFacC(i,j,kSurface,bi,bj)
     &        * dTtracerLev(kSurface)
CCV#endif 
C--------------------------------------
        ENDIF
       ENDDO
      ENDDO
      RETURN
      END
CBOP
C     !ROUTINE: BGC_DUMMY_MODEL
C     !INTERFACE:
      SUBROUTINE BGC_DUMMY_MODEL( 
     INr, kr, nTracer, rC, drF, bgc_temp, bgc_ptracer, 
     Obgc_gPtr, 
     ImyTime, myIter, myThid 
     &)

C     !DESCRIPTION: \bv
C     *==================================================================
C     | SUBROUTINE BGC_DUMMY_MODEL
C     | o Dummy routine for a bio-geo-chemical model
C     *==================================================================
C     \ev

C     !USES:
      IMPLICIT NONE
C     == Global variables ==

C     !INPUT/OUTPUT PARAMETERS:
C     == Routine arguments ==
C     note: under the multi-threaded model myiter and 
C           mytime are local variables passed around as routine 
C           arguments. Although this is fiddly it saves the need to 
C           impose additional synchronisation points when they are 
C           updated.
C     Nr - number of vertical points
C     kr - index of lowest wet tracer grid cell (k>kr means below bottom)
C     nTracer - number biological tracers
C     rC - depth of grid cell centers
C     drF - thickness of vertical grid cells
C     bgc_temp - local vertical array of temperature (potential!)
C     bgc_pTracer - local vertical array of biological tracers
C     bgc_gPtr - local vertical array of biological tracer tendencies
C     myiter - iteration counter for this thread
C     mytime - time counter for this thread
C     mythid - thread number for this instance of the routine.
      INTEGER Nr, kr, nTracer
      Real*8     rC(1:Nr),drF(1:Nr)
      Real*8     bgc_temp(1:Nr)
      Real*8     bgc_pTracer(1:Nr,1:nTracer)
      Real*8     bgc_gPtr(1:Nr,1:nTracer)
      integer mythid 
      integer myiter
      Real*8     myTime

C     !LOCAL VARIABLES :
C     == Local variables ==
      INTEGER k, iTracer
      CHARACTER*(3) NVAR
      CHARACTER*(128) FMT
CEOP

C--   the bio-geo-chemical model goes here
C     this is just a place-holder
      print *, 'ml-bgc: myIter = ', myIter, ', myTime = ', myTime
      print *, 'ml-bgc:   k, bgc_pTracer'
      write(NVAR,'(I3)') nTracer
      FMT = '(A,I3,2F10.4,'//NVAR//'E10.2)'
      print *, 'ml-bgc:   k     depth  bgc_temp  bgc_pTracer'
      DO k = 1,Nr
       write(*,FMT) ' ml-bgc: ', k, rC(k), bgc_temp(k),
     &      (bgc_pTracer(k,iTracer),iTracer=1,nTracer)
      ENDDO 
      print *, 'ml-bgc:   k     depth  bgc_temp  bgc_gpTr'
      DO k = 1,Nr
       DO iTracer = 1,nTracer
        bgc_gPtr(k,iTracer) = float(k+iTracer)
       ENDDO
       write(*,FMT) ' ml-bgc: ', k, rC(k), bgc_temp(k),
     &     (bgc_gPtr(k,iTracer),iTracer=1,nTracer)
      ENDDO
C--

      RETURN
      END

