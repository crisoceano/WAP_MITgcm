C$Header: /csys/software/cvsroot/REcoM/pkg/recom/recom_readparms.F,v 1.16 2008/04/17 14:25:51 mlosch Exp $
C$Name:  $
#include "PTRACERS_OPTIONS.h"
CML#include "GCHEM_OPTIONS.h"
#include "RECOM_OPTIONS.h"
#ifdef ALLOW_EXF
#include "CPP_OPTIONS.h"
#include "EXF_OPTIONS.h"
#endif
      SUBROUTINE RECOM_READPARMS( myThid )
C=================================================================

#ifdef ALLOW_MODULES 
      use mod_REcoM_para_def   
      implicit none
#else
      implicit none
#include "RECOM_PARAMS.h"
#endif /* ALLOW_MODULES */
#ifdef ALLOW_MITGCM
# include "SIZE.h"
# include "EEPARAMS.h"
# include "PARAMS.h"
# include "RECOM.h"
# ifdef ALLOW_CAL
#  include "cal.h"
# endif /* ALLOW_CAL */
# ifdef ALLOW_EXF
#  include "GCHEM.h"
#  include "EXF_CONSTANTS.h"
#  include "EXF_PARAM.h"
#  include "RECOM_EXF.h"
# endif /* ALLOW_EXF */
#endif /* ALLOW_MITGCM */
      integer myThid

C     local variables
      integer iUnit, i
#ifdef ALLOW_MITGCM
#ifdef ALLOW_CAL
      integer date_array(4), difftime(4)
#endif /* ALLOW_CAL */
#else
c      parameter ( iUnit = 37 )
#endif
      character*128 record

C     definition of namelist
      namelist /REcoM_parameters/ 
     &     a_chl, k_w, 
     &     Ae, redfield, recom_Tref,
     & 
     &     alpha, P_cm, k_din, V_cm_fact, res_phy,
     &     deg_CHL, lossN, lossC, biosynth, 
     &     NCuptakeRatio, NCmax, NCmin, CHL_N_max,k_Fe, 
#ifdef RECOM_CONSTANT_FE2N
     &     Fe2N,
#ifdef RECOM_IRON_BENTHOS
     &     Fe2N_benthos,
#endif 
#else
     &     Fe2C,
#ifdef RECOM_IRON_BENTHOS
     &     Fe2C_benthos,
#endif 
#endif
     &
     &     alpha_d, P_cm_d, k_din_d, V_cm_fact_d, res_phy_d,
     &     deg_CHL_d, lossN_d, lossC_d, biosynth_d, biosynthSi,
     &     NCuptakeRatio_d, NCmax_d, NCmin_d, chl_N_max_d,
#ifdef RECOM_CONSTANT_FE2N
     &     Fe2N_d, k_Fe_d, SiCuptakeRatio, 
#else
     &     Fe2C_d, k_Fe_d, SiCuptakeRatio, 
#endif
     &     k_Si, SiNmin, SiNmax, SiCmin, SiCmax,
     &  
     &     lossN_z, lossC_z,
     &
     &     reminN, reminC, reminSi, 
     &     Vphy, Vdet, Vdia,
#ifdef ALLOW_SINK_INCREASE
     &     Vdet_a, Vdet_b,
#endif
     &     f_TEP, x, agg_PCHO, agg_TEP, agg_PD, agg_PP,
     &     rho_N, rho_C1, rho_C2,
     &     decayRateBenN, decayRateBenC, decayRateBenSi,
#ifdef RECOM_CALCIFICATION
     &     decayRateBenCa,
#endif
     &     res_het, loss_het, 
#ifdef RECOM_2CLASSES
     &     pzdia, sdiasq, graz_max, epsilon, grazEff,
#else
     &     graz_max, epsilon, grazEff,
#endif
     &     TEPaggregation, EvansParslow, SINKadv,  
     &     write_flag, useReminSiT, FeLimit,
     & 
     &     kScavFe, totalLigand, ligandStabConst,
     &     NMinSlope, NMaxSlope, SiMinSlope, SiMaxSlope,
     &     ini, ini_Si, ini_Fe, k_CO2,  
     &     bio_step,
#ifdef RECOM_CALCIFICATION
     &     calc_prod_ratio, 
     &     calc_diss_guts,
     &     calc_diss_rate,
#endif
     &     tiny

#ifdef RECOM_ATMOSPCO2_HISTORY
      namelist /RECOM_ATMOSPCO2/ 
     &     recom_pco2_int1, recom_pco2_int2,
     &     recom_pco2_int3, recom_pco2_int4
#endif

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
#ifdef RECOM_CONSTANT_FE2N
      Fe2N           = 0.005 * 6.625
#ifdef RECOM_IRON_BENTHOS
      Fe2N_benthos   = 0.68 / 64.0 * 6.625
#endif
#else
      Fe2C           = 0.005
#ifdef RECOM_IRON_BENTHOS
      Fe2C_benthos   = 0.68 / 64.0
#endif
#endif
      k_Fe           = 2.0
      NMinSlope      = 50.D0
      NMaxSlope      = 1000.D0

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
#ifdef RECOM_CONSTANT_FE2N
      Fe2N_d         = 0.005 * 6.625
#else
      Fe2C_d         = 0.005
#endif
      k_Fe_d         = 2.0
      biosynthSi     = 0.
      k_Si           = 4.
      SiNmin         = 0.3
      SiNmax         = 15.0
      SiCmin         = 0.0408
      SiCmax         = 0.8
      SiCuptakeRatio = 0.204
      SiMinSlope     = 1000.D0
      SiMaxSlope     = 1000.D0

      lossN_z        = 0.10
      lossC_z        = 0.10

      reminN         = 0.1
      reminC         = 0.1
      reminSi        = 0.02
      Vphy           = 0.
      Vdia           = 0.
      Vdet           = 10.
#ifdef ALLOW_SINK_INCREASE
      Vdet_a         = 0.0288
      Vdet_b         = 20.
#endif
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
#ifdef RECOM_CALCIFICATION
      decayRateBenCa = 0.005
#endif
      res_het        = 1.0
      loss_het       = 1.0
#ifdef RECOM_2CLASSES
      pzdia          = 0.5 
#ifdef RECOM_GRAZING_VARIABLE_PREFERENCE
      sdiasq         = 0.0
#endif
#endif
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
#ifdef RECOM_CALCIFICATION
C ratio of inorganic (calcite) to organic carbon production in small phytoplankton
C [dimensionless]
      calc_prod_ratio = 0.1
C fraction of calcite being dissolved during passage through zooplankton [dimensionless]
      calc_diss_guts  = 0.0
C dissolution rate of CaCO3 in the water column (assumed independent from undersaturation, 
C following OCMIP-2 recipes). The value here is estimated from a 3500 m e-folding scale
C and 20 m/day sinking speed of detritus. [1/second]
      calc_diss_rate  = 20.0/(3500.0*86400.0)

#endif

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
#ifdef RECOM_CALCIFICATION
       write(*,*) 'S/R recom_readparms: decayRateBenCa= ',
     &      decayRateBenCa
#endif
       write(*,*) 'S/R recom_readparms: res_het       = ', res_het
       write(*,*) 'S/R recom_readparms: loss_het      = ', loss_het
       write(*,*) 'S/R recom_readparms: lossN_z       = ', lossN_z
       write(*,*) 'S/R recom_readparms: lossC_z       = ', lossC_z
#ifdef RECOM_2CLASSES
       write(*,*) 'S/R recom_readparms: pzdia         = ', pzdia
#ifdef RECOM_GRAZING_VARIABLE_PREFERENCE
       write(*,*) 'S/R recom_readparms: sdiasq        = ', sdiasq
#endif
#endif
       write(*,*) 'S/R recom_readparms: graz_max      = ', graz_max
       write(*,*) 'S/R recom_readparms: epsilon       = ', epsilon
       write(*,*) 'S/R recom_readparms: grazEff       = ', grazEff
       write(*,*) 'S/R recom_readparms: Vphy          = ', Vphy
       write(*,*) 'S/R recom_readparms: Vdia          = ', Vdia
       write(*,*) 'S/R recom_readparms: Vdet          = ', Vdet
#ifdef ALLOW_SINK_INCREASE
       write(*,*) 'S/R recom_readparms: Vdet_a        = ', Vdet_a
       write(*,*) 'S/R recom_readparms: Vdet_b        = ', Vdet_b
#endif
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
#ifdef RECOM_CONSTANT_FE2N
       write(*,*) 'S/R recom_readparms: Fe2N          = ', Fe2N
#ifdef RECOM_IRON_BENTHOS
       write(*,*) 'S/R recom_readparms: Fe2N_benthos = ', Fe2N_benthos
#endif
#else
       write(*,*) 'S/R recom_readparms: Fe2C         = ', Fe2C
#ifdef RECOM_IRON_BENTHOS
       write(*,*) 'S/R recom_readparms:Fe2C_benthos  = ', Fe2C_benthos
#endif
#endif
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
#ifdef RECOM_CALCIFICATION
       write(*,*) 'S/R recom_readparms: calc_prod_ratio = ',
     &       calc_prod_ratio
       write(*,*) 'S/R recom_readparms: calc_diss_guts = ',        
     &       calc_diss_guts
       write(*,*) 'S/R recom_readparms: calc_diss_rate = ',
     &       calc_diss_rate
#endif

      end if           

#ifdef ALLOW_MITGCM
C     set defaults for parameters in RECOM.h
      recom_tiny             = tiny !0. _d 0
      brockReedInsolation    = .false.
      diurnalInsolation      = .false.
C     this one must always be true if runs are more than 1D and
C     gchem_forcing is called after do_blocking_exchanges, otherwise it
C     can be false.
      computeHalos           = .false.
      solarConstant          = 1353. _d 0
      parFrac                = 0.45 _d 0
      cloudCover             = 0.5 _d 0
      daysPerYear            = 360. _d 0
      fracTEP                = f_tep !0. _d 0
      constantIronSolubility = 0.01 
C     resuspension parameters (should really be run time parameters)
      recomDragQuadratic   = 0.01
      recom_sizeFraction   = 0.4
      recom_porosity       = 0.4
      recomCritShearStress = 1. _d -2
C     some large number
      recomShearStressMax  = 1. _d+23
C     typical values for recom_FeErosionRate  = 1. _d -2 to -4
C     zero turns off resuspension
      recom_FeErosionRate  = 0. _d -3
C
      recom_windFile   = ' '
      recom_pCO2File = ' '
      recom_ironFile   = ' '
      recom_silicaFile = ' '
#ifdef RECOM_CALCIFICATION
      recom_CaCO3File = ' '
#endif /* RECOM_CALCIFICATION */
#ifdef ALLOW_EXF
      pCO2startdate1 = 0
      pCO2startdate2 = 0
      pCO2startdate  = 0. _d 0
      pCO2period     = 0. _d 0
      pCO2repeatperiod = 0. _d 0
C
      feduststartdate1 = 0 
      feduststartdate2 = 0
      feduststartdate  = 0. _d 0
      fedustperiod     = 0. _d 0
CML      fedustrepeatperiod = 0. _d 0
#ifdef USE_EXF_INTERPOLATION
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
#endif /* USE_EXF_INTERPOLATION */
#endif /* ALLOW_EXF */
#ifdef RECOM_ATMOSPCO2_HISTORY
      recom_pco2_int1 = 2 
      recom_pco2_int2 = 372
      recom_pco2_int3 = 0
      recom_pco2_int4 = 1643
#endif /* RECOM_ATMOSPCO2_HISTORY */

      CALL OPEN_COPY_DATA_FILE( 
     I     'data.recom', 'RECOM_READPARMS',
     O     iUnit,
     I     myThid )
      READ(UNIT=iUnit,NML=RECOM_PARM01)
#ifdef ALLOW_EXF
      IF ( useEXF ) READ(UNIT=iUnit,NML=RECOM_PARM02)
#endif /* ALLOW_EXF */
#ifdef RECOM_ATMOSPCO2_HISTORY
      READ(UNIT=iUnit,NML=RECOM_ATMOSPCO2)
#endif
C Close the open data file
      CLOSE(iUnit)


#ifdef ALLOW_CAL
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
#endif /* ALLOW_CAL */
#endif /* ALLOW_MITGCM */

      RETURN
      END

#ifndef ALLOW_MITGCM
#include "CPP_OPTIONS.h"

CBOP
C     !ROUTINE: OPEN_COPY_DATA_FILE
C     !INTERFACE:
      SUBROUTINE OPEN_COPY_DATA_FILE(
     I                                data_file, caller_sub,
     O                                iUnit,
     I                                myThid )
C     !DESCRIPTION: \bv
C     *==========================================================*
C     | SUBROUTINE OPEN_COPY_DATA_FILE                            
C     | o Routine to open and copy a data.* file to STDOUT        
C     |   and return the open unit in iUnit                       
C     *==========================================================*
C     \ev

C     !USES:
      IMPLICIT NONE
C     === Global variables ===
C#include "SIZE.h"
C#include "EEPARAMS.h"
#include "RECOM_PARAMS.h"

C     !INPUT/OUTPUT PARAMETERS:
C     === Routine arguments ===
C     myThid - Number of this instance of INI_PARMS
      CHARACTER*(*) data_file
      CHARACTER*(*) caller_sub
      INTEGER iUnit
      INTEGER myThid

C     !LOCAL VARIABLES:
C     === Local variables ===
C copied from MITgcm header file "EEPARAMS.h"
C     MAX_LEN_MBUF         - Default message buffer max. size
C     MAX_LEN_FNAM         - Default file name max. size
C     MAX_LEN_PREC         - Default record length for reading "parameter" files
      INTEGER MAX_LEN_MBUF
      PARAMETER ( MAX_LEN_MBUF = 512 )
      INTEGER MAX_LEN_FNAM
      PARAMETER ( MAX_LEN_FNAM = 512 )
      INTEGER MAX_LEN_PREC
      PARAMETER ( MAX_LEN_PREC = 200 )
      INTEGER scrUnit1
      INTEGER scrUnit2
      INTEGER standardMessageUnit
      INTEGER modelDataUnit
      CHARACTER*(*) commentCharacter
      PARAMETER ( commentCharacter = '#' )
C end of copy from MITgcm header file "EEPARAMS.h"
C     msgBuf    - Informational/error meesage buffer
      CHARACTER*(MAX_LEN_MBUF) msgBuf
      CHARACTER*(MAX_LEN_PREC) record
      INTEGER  ILNBLNK
      EXTERNAL ILNBLNK
      INTEGER  errIO,IL
      LOGICAL  exst
CEOP

C
      standardMessageUnit =  6
      scrUnit1            = 11
      scrUnit2            = 12
      modelDataUnit       = 14
C--   Open the parameter file
      INQUIRE( FILE=data_file, EXIST=exst )
      IF (exst) THEN
       IF ( write_flag )
     &      WRITE(standardMessageUnit,'(A,A)')
     &   ' OPEN_COPY_DATA_FILE: opening file ',data_file
      ELSE
       WRITE(standardMessageUnit,'(A,A,A)')
     &  'File ',data_file,' does not exist!'
       WRITE(standardMessageUnit,'(A,A)') 'S/R CALLED BY ',caller_sub
       STOP 'ABNORMAL END: S/R OPEN_COPY_DATA_FILE'
      ENDIF

      OPEN(UNIT=scrUnit1,STATUS='SCRATCH')
      OPEN(UNIT=scrUnit2,STATUS='SCRATCH')
      OPEN(UNIT=modelDataUnit,FILE=data_file,STATUS='OLD',
     &     IOSTAT=errIO)
      IF ( errIO .LT. 0 ) THEN
       WRITE(standardMessageUnit,'(A,A)')
     &  'Unable to open data file: ',data_file
       WRITE(standardMessageUnit,'(A,A)') 'S/R CALLED BY ',caller_sub
       STOP 'ABNORMAL END: S/R OPEN_COPY_DATA_FILE'
      ENDIF     

      DO WHILE ( .TRUE. )
       READ(modelDataUnit,FMT='(A)',END=1001) RECORD
       IL = MAX(ILNBLNK(RECORD),1)
       IF ( RECORD(1:1) .NE. commentCharacter ) THEN
CML         CALL NML_SET_TERMINATOR( RECORD )
         WRITE(UNIT=scrUnit1,FMT='(A)') RECORD(:IL)
       ENDIF
       WRITE(UNIT=scrUnit2,FMT='(A)') RECORD(:IL)
      ENDDO
 1001 CONTINUE
      CLOSE(modelDataUnit)

      iUnit = scrUnit2
      IF ( write_flag ) THEN
C--   Report contents of model parameter file
      WRITE(standardMessageUnit,'(A)') 
     &'// ======================================================='
      WRITE(standardMessageUnit,'(A,A,A)') 
     &'// Parameter file "',data_file,'"'
      WRITE(standardMessageUnit,'(A)') 
     &'// ======================================================='
      REWIND(iUnit)
      DO WHILE ( .TRUE. )
       READ(UNIT=iUnit,FMT='(A)',END=2001) RECORD
       IL = MAX(ILNBLNK(RECORD),1)
       IF ( RECORD(1:1) .NE. commentCharacter )
     &      WRITE(standardMessageUnit,'(A,A)') '>',RECORD(:IL)
      ENDDO
 2001 CONTINUE
      ENDIF
      CLOSE(iUnit)
      WRITE(standardMessageUnit,'(A)') ' '


C--   Return open unit to caller
      iUnit = scrUnit1
      REWIND(iUnit)

      RETURN
      END

CBOP
C     !ROUTINE: ILNBLNK

C     !INTERFACE:
      INTEGER FUNCTION ILNBLNK( string )
      IMPLICIT NONE

C     !DESCRIPTION:
C     *==========================================================*
C     | FUNCTION ILNBLNK                                         |
C     | o Find last non-blank in character string.               |
C     *==========================================================*

C     !INPUT PARAMETERS:
C     string :: string to scan
      CHARACTER*(*) string

C     !LOCAL VARIABLES:
C     L, LS :: Temps. used in scanning string
      INTEGER L, LS
CEOP
C
      LS      = LEN(string)
c     ILNBLNK = LS
      ILNBLNK = 0
      DO 10 L = LS, 1, -1
        IF ( string(L:L) .EQ. ' ' ) GOTO 10
         ILNBLNK = L
         GOTO 11
   10 CONTINUE
   11 CONTINUE
C
      RETURN
      END

#endif /* ndef ALLOW_MITGCM */
