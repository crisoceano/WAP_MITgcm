












C $Header: /u/gcmpack/MITgcm/pkg/cal/cal_set.F,v 1.6 2010/03/16 00:11:46 jmc Exp $
C $Name: checkpoint62r $

C $Header: /u/gcmpack/MITgcm/pkg/cal/CAL_OPTIONS.h,v 1.3 2003/11/25 16:07:03 heimbach Exp $
C $Name: checkpoint62r $








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



CPH >>>>>> ALL CAL OPTIONS ARE CURRENTLY SET IN <<<<<<
CPH >>>>>> ECCO_CPPOPTIONS.h                    <<<<<<
CPH >>>>>> SHOULD REMAIN LIKE THIS UNTIL WE     <<<<<<
CPH >>>>>> DEFINE A CONSISTENT CHANGE OF POLICY <<<<<<

C This package is currently controlled by the ECCO_CPPOPTIONS.h and
C to avoid compatibility issues you should *NOT* customize this file.
cph#define ALLOW_CALENDAR

C This CPP flag must be set for no apparent reason other than to stop
C cal_readparms() for causing to issue a fatal warning that it is
C undefined!!!
C TODO: delete this and related code!? AJA
cph#define ALLOW_CAL_NENDITER


      subroutine cal_Set(
     I                    modstart,
     I                    modend,
     I                    modstep,
     I                    modcalendartype,
     I                    modstartdate_1,
     I                    modstartdate_2,
     I                    modenddate_1,
     I                    modenddate_2,
     I                    moditerini,
     I                    moditerend,
     I                    modintsteps,
     I                    mythid
     &                  )

c     ==================================================================
c     SUBROUTINE cal_Set
c     ==================================================================
c
c     o This routine initialises the calendar according to the user
c       specifications in "data".
c
c     Purpose: Precalculations for the calendar.
c
c              Given the type of calendar that should be used date
c              arrays and some additional information is returned.
c
c              Check for consistency with other specifications such
c              as modintsteps.
c
c     started: Christian Eckert eckert@mit.edu  30-Jun-1999
c
c     changed: Christian Eckert eckert@mit.edu  29-Dec-1999
c
c              - restructured the original version in order to have a
c                better interface to the MITgcmUV.
c
c              Christian Eckert eckert@mit.edu  19-Jan-2000
c
c              - Changed the role of the routine arguments. Chris Hill
c                proposed to make the calendar less "invasive". The tool
c                now assumes that the MITgcmUV already provides an ade-
c                quate set of time stepping parameters. The calendar
c                only associates a date with the given starttime of the
c                numerical model. startdate corresponds to zero start-
c                time. So, given niter0 or startdate .ne. zero the actual
c                startdate of the current integration is shifted by the
c                time interval correponding to niter0, startdate respec-
c                tively.
c
c              Christian Eckert eckert@mit.edu  03-Feb-2000
c
c              - Introduced new routine and function names, cal_<NAME>,
c                for verion 0.1.3.
c
c              Christian Eckert eckert@mit.edu  23-Feb-2000
c
c              - Corrected the declaration of *modelrundate*
c                --> integer modelrundate(4)
c
c     ==================================================================
c     SUBROUTINE cal_Set
c     ==================================================================

      implicit none

c     == global variables ==

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




c     == routine arguments ==

c     modcalendartype - the type of calendar that is to be used.
c                       Available: 'model'
c                                  'gregorian'
c     modstartdate_1  - startdate of the integration: yyyymmdd
c     modstartdate_2  - startdate of the integration: hhmmss
c     modenddate_1    - enddate   of the integration: yyyymmdd
c     modenddate_2    - enddate   of the integration: hhmmss
c     moditerini      - initial iteration number of the model
c     moditerend      - last iteration number of the model
c     modstep         - timestep of the numerical model
c     modintsteps     - number of timesteps that are to be performed.
c     mythid          - number of this instance of the subrotuine.

      Real*8     modstart
      Real*8     modend
      Real*8     modstep
      character*(*) modcalendartype
      integer modstartdate_1
      integer modstartdate_2
      integer modenddate_1
      integer modenddate_2
      integer moditerini
      integer moditerend
      integer modintsteps
      integer mythid

c     == local variables ==

      integer i,j,k
      integer ierr
      integer datediff(4)
      integer timediff(4)
      integer iterinitime(4)
      integer modelrundate(4)
      Real*8     runtimesecs
      Real*8     iterinisecs

c     == external ==

      integer  cal_IntYears
      external cal_IntYears

      integer  cal_IntMonths
      external cal_IntMonths

      integer  cal_IntDays
      external cal_IntDays

      integer  cal_nStepDay
      external cal_nStepDay

c     == end of interface ==

c     Initialise some variables.
      usingNoCalendar        = .false.
      usingGregorianCalendar = .false.
      usingModelCalendar     = .false.
      usingJulianCalendar    = .false.

c     Map the numerical model parameters. --> common blocks in CALENDAR.h
      modelstart       = modstart
      modelend         = modend
      modelstep        = modstep
      modeliter0       = moditerini
      modelintsteps    = modintsteps

      modeliterend     = moditerend

c     Do first consistency checks (most are taken from the MITgcmUV).
c     o Time step.
      if ( modelstep .le. 0. ) then
        ierr = 102
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      endif
      if ( modelstep .lt. 1. ) then
        ierr = 103
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      endif
      if ( abs(modelstep - nint(modelstep)) .gt. 0.000001 ) then
        ierr = 104
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      else
        modelstep = float(nint(modelstep))
      endif

c     o Start time
      if ( modeliter0 .ne. 0 .and. modelstart .eq. 0. ) then
         modelstart = modelstep*float(modeliter0)
      endif
c     o modeliter0
      if ( modeliter0 .eq. 0 .and. modelstart .ne. 0. ) then
         modeliter0 = int( modelstart/modelstep )
      endif

c     o modelintsteps
      if ( modelintsteps .eq. 0 .and. modeliterend .ne. 0 )
     &     modelintsteps = modeliterend - modeliter0
      if ( modelintsteps .eq. 0 .and. modelend .ne. 0. )
     &     modelintsteps = int(0.5 + (modelend - modelstart)/modelstep)

c     o modeliterend
      if ( modeliterend .eq. 0 .and. modelintsteps .ne. 0 )
     &     modeliterend = modeliter0 + modelintsteps
      if ( modeliterend .eq. 0 .and. modelend .ne. 0. )
     &     modeliterend = int(0.5 + modelend/modelstep)

c     o modelend
      if ( modelend .eq. 0. .and. modelintsteps .ne. 0 )
     &     modelend = modelstart + modelstep*float(modelintsteps)
      if ( modelend .eq. 0. .and. modeliterend .ne. 0 )
     &     modelend = modelstep*float(modeliterend)

c     Start setting the calendar parameters.

c     The calendar type.
      if ( modcalendartype .eq. 'none') then
        usingNoCalendar = .true.
      endif
      if ( modcalendartype .eq. 'gregorian') then
        usingGregorianCalendar = .true.
      endif
      if ( modcalendartype .eq. 'model') then
        usingModelCalendar = .true.
      endif
      if ( modcalendartype .eq. 'julian') then
        usingJulianCalendar = .true.
      endif

      if ( usingGregorianCalendar ) then
c       The reference date for the Gregorian Calendar.
c       and its format: ( yymmdd , hhmmss , leap year, weekday )
c                                             (1/2)    (1 - 7)
c       The Gregorian calendar starts on Friday, 15 Oct. 1582.
        refdate(1) = 15821015
        refdate(2) = 0
        refdate(3) = 1
        refdate(4) = 1

c       Number of months per year and other useful numbers.
        nmonthyear       = 12
        ndaysnoleap      = 365
        ndaysleap        = 366
        nmaxdaymonth     = 31
        hoursperday      = 24
        minutesperday    = 1440
        minutesperhour   = 60
        secondsperday    = 86400
        secondsperhour   = 3600
        secondsperminute = 60

c       Number of days per month.
c       The "magic" number 2773 derives from the sequence: 101010110101
c         read in reverse and interpreted as a dual number. An
c         alternative would be to take 2741 with the loop being
c         executed in reverse order. Accidentially, the latter
c         is a prime number.
        k=2773
        do i=1,nmonthyear
          j = mod(k,2)
          k = (k-j)/2
          ndaymonth(i,1) = 30+j
          ndaymonth(i,2) = 30+j
        enddo
        ndaymonth(2,1) = 28
        ndaymonth(2,2) = 29

c       Week days.
        dayofweek(1) = 'FRI'
        dayofweek(2) = 'SAT'
        dayofweek(3) = 'SUN'
        dayofweek(4) = 'MON'
        dayofweek(5) = 'TUE'
        dayofweek(6) = 'WED'
        dayofweek(7) = 'THU'

      else if ( usingModelCalendar ) then
c       Assume a model calendar having 12 months with thirty days each.
c       Reference date is the first day of year 0 at 0am, and model
c       day 1.
        refdate(1) = 00000101
        refdate(2) = 0
        refdate(3) = 1
        refdate(4) = 1

c       Some useful numbers.
        nmonthyear       = 12
        ndaysnoleap      = 360
        ndaysleap        = 360
        nmaxdaymonth     = 30
        hoursperday      = 24
        minutesperday    = 1440
        minutesperhour   = 60
        secondsperday    = 86400
        secondsperhour   = 3600
        secondsperminute = 60
        do i=1,nmonthyear
          ndaymonth(i,1) = 30
          ndaymonth(i,2) = 30
        enddo

c       Week days (Model Day 1 - 7).
        dayofweek(1) = 'MD1'
        dayofweek(2) = 'MD2'
        dayofweek(3) = 'MD3'
        dayofweek(4) = 'MD4'
        dayofweek(5) = 'MD5'
        dayofweek(6) = 'MD6'
        dayofweek(7) = 'MD7'

      else if ( usingJulianCalendar ) then

        ierr = 110
        call cal_PrintError( ierr, mythid )

        refdate(1) =   -4370
        refdate(2) = -120000
        refdate(3) =       0
        refdate(4) =      -1

c       Some useful numbers.
        nmonthyear       = 12
        ndaysnoleap      = 0
        ndaysleap        = 0
        nmaxdaymonth     = 0
        hoursperday      = 24
        minutesperday    = 1440
        minutesperhour   = 60
        secondsperday    = 86400
        secondsperhour   = 3600
        secondsperminute = 60
        do i=1,nmonthyear
          ndaymonth(i,1) = 0
          ndaymonth(i,2) = 0
        enddo
        stop ' stopped in cal_Set (Julian Calendar).'

      else if ( usingNoCalendar ) then

        ierr = 111
        call cal_PrintError( ierr, mythid )

        refdate(1) =  0
        refdate(2) =  0
        refdate(3) =  0
        refdate(4) = -1

c       Some useful numbers.
        nmonthyear       = 12
        ndaysnoleap      = 0
        ndaysleap        = 0
        nmaxdaymonth     = 0
        hoursperday      = 24
        minutesperday    = 1440
        minutesperhour   = 60
        secondsperday    = 86400
        secondsperhour   = 3600
        secondsperminute = 60
        do i=1,nmonthyear
          ndaymonth(i,1) = 0
          ndaymonth(i,2) = 0
        enddo

        stop ' stopped in cal_Set (No Calendar).'

      else

        ierr = 101
        call cal_PrintError( ierr, mythid )
        stop

      endif

c     A next set of checks of the user specifications.
c     Number of possible modelsteps per calendar day.
      modelstepsperday = cal_nStepDay(mythid)
cdm   if (modelstepsperday .eq. 0 ) then
cdm     ierr = 105
cdm     call cal_PrintError( ierr, mythid )
cdm     stop ' stopped in cal_Set.'
cdm   endif

c     Complete the start date specification to get a full date array.
      call cal_FullDate( modstartdate_1, modstartdate_2,
     &                   modelstartdate, mythid )

c     From here on, the final calendar settings are determined by the
c     following variables:
c
c           modelstep, modelstart, modelstartdate, and modeliter0.

c     Two scenarios are allowed:
c
c     First case:  modelintsteps is given as well, modelenddate is
c                  set to zero.
c     Second case: modelintsteps is set to zero, modelenddate is given.

      if ( (modelintsteps   .ne. 0)    .and.
     &     ( (modenddate_1 .eq. 0)     .and.
     &       (modenddate_2 .eq. 0) ) ) then

        runtimesecs = float(modelintsteps)*modelstep
        modelend    = modelstart + runtimesecs

      else if ( (modelintsteps   .eq. 0)        .and.
     &          (.not. ( (modenddate_1 .eq. 0 ) .and.
     &                   (modenddate_2 .eq. 0) ) ) ) then

        call cal_FullDate( modenddate_1, modenddate_2, modelenddate,
     &                     mythid )
        call cal_TimePassed( modelstartdate, modelenddate, datediff,
     &                       mythid )
        call cal_ToSeconds( datediff, runtimesecs, mythid )

        if ( runtimesecs .lt. 0.) then
          ierr = 107
          call cal_PrintError( ierr, mythid )
          stop ' stopped in cal_Set.'
        endif

        modelintsteps = int(runtimesecs/modelstep)
        runtimesecs   = modelintsteps*modelstep
        modelend      = modelstart + runtimesecs

      else
        ierr = 106
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      endif

c     Determine the startdate of the integration.
c     (version 0.1.3 >> START << )
      iterinisecs = float(modeliter0)*modelstep
      call cal_TimeInterval( iterinisecs, 'secs', iterinitime, mythid )
      call cal_AddTime( modelstartdate, iterinitime, modelrundate,
     &                  mythid )
      call cal_CopyDate( modelrundate, modelstartdate, mythid )
c     (version 0.1.3 >> END << )

      call cal_TimeInterval( runtimesecs, 'secs', timediff, mythid )
      call cal_AddTime( modelstartdate, timediff, modelenddate,
     &                  mythid )

      modeliterend = modeliter0 + modelintsteps

c     Check consistency of the numerical model and the calendar tool.
      if ( modelstart .ne. modstart) then
        ierr = 112
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      else if ( modelend .ne. modend ) then
        ierr = 113
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      else if ( modelstep .ne. modstep ) then
        ierr = 114
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      else if ( modeliter0 .ne. moditerini ) then
        ierr = 115
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      else if ( modeliterend .ne. moditerend ) then
        ierr = 116
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      else if ( modelintsteps .ne. modintsteps) then
        ierr = 117
        call cal_PrintError( ierr, mythid )
        stop ' stopped in cal_Set.'
      endif

      return
      end

