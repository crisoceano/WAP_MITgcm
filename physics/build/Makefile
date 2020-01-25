# Multithreaded + multi-processing makefile for:
#    Linux cheyenne1 3.12.62-60.64.8-default #1 SMP Tue Oct 18 12:21:38 UTC 2016 (42e0a66) x86_64 x86_64 x86_64 GNU/Linux
# This makefile was generated automatically on
#    Thu Mar 21 14:13:32 MDT 2019
# by the command:
#    /glade/u/home/chschult/MITgcm_c62r/tools/genmake2 -ieee -mods=../code -of=../../MITgcm_c62r/tools/build_options/linux_amd64_intel+mpi_cheyenne2 -mpi
# executed by:
#    chschult@cheyenne1:/glade/u/home/chschult/physics/build
#
# OPTFILE="../../MITgcm_c62r/tools/build_options/linux_amd64_intel+mpi_cheyenne2"
#
# BUILDDIR     : Directory where object files are written
# SOURCEDIRS   : Directories containing the source (.F) files
# INCLUDEDIRS  : Directories containing the header-source (.h) files
# EXEDIR       : Directory where executable that is generated is written
# EXECUTABLE   : Full path of executable binary
#
# CPP          : C-preprocessor command
# INCLUDES     : Directories searched for header files
# DEFINES      : Macro definitions for CPP
# MAKEDEPEND   : Dependency generator
# KPP          : Special preprocessor command (specific to platform)
# KFLAGS       : Flags for KPP
# FC           : Fortran compiler command
# FFLAGS       : Configuration/debugging options for FC
# FOPTIM       : Optimization options for FC
# LINK         : Command for link editor program
# LIBS         : Library flags /or/ additional optimization/debugging flags

ROOTDIR     = /glade/u/home/chschult/MITgcm_c62r
BUILDDIR    = .
SOURCEDIRS  =  ../code /glade/u/home/chschult/MITgcm_c62r/pkg/cal /glade/u/home/chschult/MITgcm_c62r/pkg/cd_code /glade/u/home/chschult/MITgcm_c62r/pkg/debug /glade/u/home/chschult/MITgcm_c62r/pkg/diagnostics /glade/u/home/chschult/MITgcm_c62r/pkg/down_slope /glade/u/home/chschult/MITgcm_c62r/pkg/exf /glade/u/home/chschult/MITgcm_c62r/pkg/gchem /glade/u/home/chschult/MITgcm_c62r/pkg/generic_advdiff /glade/u/home/chschult/MITgcm_c62r/pkg/gmredi /glade/u/home/chschult/MITgcm_c62r/pkg/kpp /glade/u/home/chschult/MITgcm_c62r/pkg/mdsio /glade/u/home/chschult/MITgcm_c62r/pkg/mom_common /glade/u/home/chschult/MITgcm_c62r/pkg/mom_fluxform /glade/u/home/chschult/MITgcm_c62r/pkg/mom_vecinv /glade/u/home/chschult/MITgcm_c62r/pkg/monitor /glade/u/home/chschult/MITgcm_c62r/pkg/obcs /glade/u/home/chschult/MITgcm_c62r/pkg/pp81 /glade/u/home/chschult/MITgcm_c62r/pkg/ptracers /glade/u/home/chschult/MITgcm_c62r/pkg/rbcs /glade/u/home/chschult/MITgcm_c62r/pkg/recom /glade/u/home/chschult/MITgcm_c62r/pkg/rw /glade/u/home/chschult/MITgcm_c62r/pkg/seaice /glade/u/home/chschult/MITgcm_c62r/pkg/shelfice /glade/u/home/chschult/MITgcm_c62r/pkg/thsice /glade/u/home/chschult/MITgcm_c62r/pkg/timeave /glade/u/home/chschult/MITgcm_c62r/eesupp/src /glade/u/home/chschult/MITgcm_c62r/model/src
INCLUDEDIRS =  ../code /glade/u/home/chschult/MITgcm_c62r/pkg/cal /glade/u/home/chschult/MITgcm_c62r/pkg/cd_code /glade/u/home/chschult/MITgcm_c62r/pkg/debug /glade/u/home/chschult/MITgcm_c62r/pkg/diagnostics /glade/u/home/chschult/MITgcm_c62r/pkg/down_slope /glade/u/home/chschult/MITgcm_c62r/pkg/exf /glade/u/home/chschult/MITgcm_c62r/pkg/gchem /glade/u/home/chschult/MITgcm_c62r/pkg/generic_advdiff /glade/u/home/chschult/MITgcm_c62r/pkg/gmredi /glade/u/home/chschult/MITgcm_c62r/pkg/kpp /glade/u/home/chschult/MITgcm_c62r/pkg/mdsio /glade/u/home/chschult/MITgcm_c62r/pkg/mom_common /glade/u/home/chschult/MITgcm_c62r/pkg/mom_fluxform /glade/u/home/chschult/MITgcm_c62r/pkg/mom_vecinv /glade/u/home/chschult/MITgcm_c62r/pkg/monitor /glade/u/home/chschult/MITgcm_c62r/pkg/obcs /glade/u/home/chschult/MITgcm_c62r/pkg/pp81 /glade/u/home/chschult/MITgcm_c62r/pkg/ptracers /glade/u/home/chschult/MITgcm_c62r/pkg/rbcs /glade/u/home/chschult/MITgcm_c62r/pkg/recom /glade/u/home/chschult/MITgcm_c62r/pkg/rw /glade/u/home/chschult/MITgcm_c62r/pkg/seaice /glade/u/home/chschult/MITgcm_c62r/pkg/shelfice /glade/u/home/chschult/MITgcm_c62r/pkg/thsice /glade/u/home/chschult/MITgcm_c62r/pkg/timeave /glade/u/home/chschult/MITgcm_c62r/eesupp/inc /glade/u/home/chschult/MITgcm_c62r/model/inc
EXEDIR      = .
EXECUTABLE  = $(EXEDIR)/mitgcmuv
TOOLSDIR    = /glade/u/home/chschult/MITgcm_c62r/tools

#eh3  new defines for the adjoint work
AUTODIFF    = /glade/u/home/chschult/MITgcm_c62r/pkg/autodiff
EXE_AD      = mitgcmuv_ad
EXE_FTL     = mitgcmuv_ftl
EXE_SVD     = mitgcmuv_svd

ENABLED_PACKAGES =  -DALLOW_CAL -DALLOW_CD_CODE -DALLOW_DEBUG -DALLOW_DIAGNOSTICS -DALLOW_DOWN_SLOPE -DALLOW_EXF -DALLOW_GCHEM -DALLOW_GENERIC_ADVDIFF -DALLOW_GMREDI -DALLOW_KPP -DALLOW_MDSIO -DALLOW_MOM_COMMON -DALLOW_MOM_FLUXFORM -DALLOW_MOM_VECINV -DALLOW_MONITOR -DALLOW_OBCS -DALLOW_PP81 -DALLOW_PTRACERS -DALLOW_RBCS -DALLOW_RECOM -DALLOW_RW -DALLOW_SEAICE -DALLOW_SHELFICE -DALLOW_THSICE -DALLOW_TIMEAVE
DISABLED_PACKAGES =  -UALLOW_ADMTLM -UALLOW_AIM_COMPON_INTERF -UALLOW_AIM_V23 -UALLOW_ATM2D -UALLOW_ATM_COMMON -UALLOW_ATM_OCN_COUPLER -UALLOW_AUTODIFF -UALLOW_BULK_FORCE -UALLOW_CFC -UALLOW_CHEAPAML -UALLOW_CHRONOS -UALLOW_COMPON_COMMUNIC -UALLOW_COST -UALLOW_CTRL -UALLOW_DIC -UALLOW_EBM -UALLOW_ECCO -UALLOW_EMBED_FILES -UALLOW_EXCH2 -UALLOW_FIZHI -UALLOW_FLT -UALLOW_GCHEM_65 -UALLOW_GCHEM_ORIG -UALLOW_GGL90 -UALLOW_GRDCHK -UALLOW_GRIDALT -UALLOW_ICEFRONT -UALLOW_KPP_ORIGINAL -UALLOW_LAND -UALLOW_LAYERS -UALLOW_LONGSTEP -UALLOW_MATRIX -UALLOW_MNC -UALLOW_MY82 -UALLOW_MYPACKAGE -UALLOW_OCN_COMPON_INTERF -UALLOW_OFFLINE -UALLOW_OPPS -UALLOW_PROFILES -UALLOW_RECOM_65 -UALLOW_RECOM_BACKUP -UALLOW_REGRID -UALLOW_RUNCLOCK -UALLOW_SALT_PLUME -UALLOW_SBO -UALLOW_SEAICE.BCKP -UALLOW_SEAICE.TEST1 -UALLOW_SHAP_FILT -UALLOW_SHOWFLOPS -UALLOW_SMOOTH -UALLOW_SPHERE -UALLOW_ZONAL_FILT

# These files are created by Makefile
SPECIAL_FILES = PACKAGES_CONFIG.h AD_CONFIG.h FC_NAMEMANGLE.h BUILD_INFO.h
EMBEDDED_FILES = 
# Unix ln (link)
LN = ln -s
# C preprocessor
CPP = cat $< | $(TOOLSDIR)/set64bitConst.sh |  /lib/cpp  -traditional -P
# Dependency generator
MAKEDEPEND = makedepend
# Special preprocessor (KAP on DECs, FPP on Crays)
KPP = 
# Fortran compiler
FC = mpif90
# Fortran compiler
F90C = mpif90
# C compiler
CC = mpicc
# Link editor
LINK = mpif90 -shared-intel

# Defines for CPP
DEFINES = -DALLOW_USE_MPI -DALWAYS_USE_MPI -DWORDLENGTH=4 -DALLOW_USE_MPI -DALWAYS_USE_MPI -DHAVE_SYSTEM -DHAVE_FDATE -DHAVE_ETIME -DHAVE_CLOC -DHAVE_SETRLSTK -DHAVE_SIGREG -DHAVE_STAT 
# Includes for CPP
INCLUDES = -I/glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include
# Flags for KPP
KFLAGS1 = 
KFLAGS2 = 
# Optim./debug for FC
FFLAGS =  -fPIC -convert big_endian -assume byterecl -align -march=corei7 -axAVX -mcmodel=large -shared-intel -DNMLTERMINATOR 
FOPTIM = -O2 -ip -fp-model precise -traceback -ftz
# Optim./debug for FC
F90FLAGS = 
F90OPTIM = 
F90FIXEDFORMAT = 
# Flags for CC
CFLAGS = -fPIC
# Files that should not be optimized
NOOPTFILES = 
NOOPTFLAGS = -O0 -fPIC
# Flags and libraries needed for linking
LIBS = -L/glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/lib
# Name of the Mekfile
MAKEFILE=Makefile

F77_SRC_FILES =  \
 main.F \
 mon_solution.F \
 recom_co2flux.F \
 recom_diagnostics_init.F \
 recom_forcing.F \
 recom_insolation.F \
 recom_iterate_ph.F \
 recom_readparms.F \
 recom_sinking.F \
 recom_sms.F \
 seaice_diagnostics_init.F \
 seaice_model.F \
 shelfice_check.F \
 shelfice_init_fixed.F \
 shelfice_init_varia.F \
 shelfice_readparms.F \
 shelfice_thermodynamics.F \
 cal_addtime.F \
 cal_checkdate.F \
 cal_compdates.F \
 cal_convdate.F \
 cal_copydate.F \
 cal_daysformonth.F \
 cal_dayspermonth.F \
 cal_fulldate.F \
 cal_getdate.F \
 cal_getmonthsrec.F \
 cal_intdays.F \
 cal_intmonths.F \
 cal_intsteps.F \
 cal_intyears.F \
 cal_isleap.F \
 cal_monthsforyear.F \
 cal_monthsperyear.F \
 cal_nstepday.F \
 cal_numints.F \
 cal_printdate.F \
 cal_printerror.F \
 cal_readparms.F \
 cal_set.F \
 cal_stepsforday.F \
 cal_stepsperday.F \
 cal_subdates.F \
 cal_summary.F \
 cal_time2dump.F \
 cal_timeinterval.F \
 cal_timepassed.F \
 cal_timestamp.F \
 cal_toseconds.F \
 cal_weekday.F \
 cd_code_init_fixed.F \
 cd_code_ini_vars.F \
 cd_code_read_pickup.F \
 cd_code_scheme.F \
 cd_code_write_pickup.F \
 chksum_tiled.F \
 debug_call.F \
 debug_cs_corner_uv.F \
 debug_enter.F \
 debug_fld_stats_rl.F \
 debug_fld_stats_rs.F \
 debug_leave.F \
 debug_msg.F \
 debug_stats_rl.F \
 debug_stats_rs.F \
 fill_in_corners_rl.F \
 write_fullarray_rl.F \
 diagnostics_addtolist.F \
 diagnostics_check.F \
 diagnostics_clear.F \
 diagnostics_fill.F \
 diagnostics_fill_field.F \
 diagnostics_fill_rs.F \
 diagnostics_fill_state.F \
 diagnostics_fract_fill.F \
 diagnostics_init_early.F \
 diagnostics_init_fixed.F \
 diagnostics_init_varia.F \
 diagnostics_interp_p2p.F \
 diagnostics_interp_vert.F \
 diagnostics_is_on.F \
 diagnostics_list_check.F \
 diagnostics_main_init.F \
 diagnostics_out.F \
 diagnostics_readparms.F \
 diagnostics_read_pickup.F \
 diagnostics_scale_fill.F \
 diagnostics_scale_fill_rs.F \
 diagnostics_setdiag.F \
 diagnostics_set_levels.F \
 diagnostics_set_pointers.F \
 diagnostics_sum_levels.F \
 diagnostics_summary.F \
 diagnostics_switch_onoff.F \
 diagnostics_utils.F \
 diagnostics_write.F \
 diagnostics_write_pickup.F \
 diagstats_ascii_out.F \
 diagstats_calc.F \
 diagstats_clear.F \
 diagstats_close_io.F \
 diagstats_fill.F \
 diagstats_global.F \
 diagstats_ini_io.F \
 diagstats_local.F \
 diagstats_mnc_out.F \
 diagstats_others_calc.F \
 diagstats_output.F \
 diagstats_setdiag.F \
 diagstats_set_pointers.F \
 diagstats_set_regions.F \
 diag_vegtile_fill.F \
 dwnslp_apply.F \
 dwnslp_calc_flow.F \
 dwnslp_calc_rho.F \
 dwnslp_diagnostics_init.F \
 dwnslp_init_fixed.F \
 dwnslp_init_varia.F \
 dwnslp_readparms.F \
 exf_ad_dump.F \
 exf_adjoint_snapshots_ad.F \
 exf_adjoint_snapshots.F \
 exf_adjoint_snapshots__g.F \
 exf_bulkformulae.F \
 exf_check.F \
 exf_check_range.F \
 exf_diagnostics_fill.F \
 exf_diagnostics_init.F \
 exf_filter_rl.F \
 exf_filter_rs.F \
 exf_getclim.F \
 exf_getffieldrec.F \
 exf_getffields.F \
 exf_getforcing.F \
 exf_getsurfacefluxes.F \
 exf_getyearlyfieldname.F \
 exf_init.F \
 exf_init_fixed.F \
 exf_interp.F \
 exf_interp_read.F \
 exf_mapfields.F \
 exf_monitor.F \
 exf_radiation.F \
 exf_readparms.F \
 exf_set_gen.F \
 exf_set_obcs.F \
 exf_set_runoff.F \
 exf_set_uv.F \
 exf_summary.F \
 exf_swapffields.F \
 exf_wind.F \
 exf_zenithangle.F \
 exf_zenithangle_table.F \
 gchem_add_tendency.F \
 gchem_calc_tendency.F \
 gchem_check.F \
 gchem_diagnostics_init.F \
 gchem_fields_load.F \
 gchem_forcing_sep.F \
 gchem_init_fixed.F \
 gchem_init_vari.F \
 gchem_output.F \
 gchem_readparms.F \
 gchem_write_pickup.F \
 gad_advection.F \
 gad_biharm_x.F \
 gad_biharm_y.F \
 gad_c2_adv_r.F \
 gad_c2_adv_x.F \
 gad_c2_adv_y.F \
 gad_c2_impl_r.F \
 gad_c4_adv_r.F \
 gad_c4_adv_x.F \
 gad_c4_adv_y.F \
 gad_calc_rhs.F \
 gad_check.F \
 gad_del2.F \
 gad_diagnostics_init.F \
 gad_diagnostics_state.F \
 gad_diff_r.F \
 gad_diff_x.F \
 gad_diff_y.F \
 gad_dst2u1_adv_r.F \
 gad_dst2u1_adv_x.F \
 gad_dst2u1_adv_y.F \
 gad_dst2u1_impl_r.F \
 gad_dst3_adv_r.F \
 gad_dst3_adv_x.F \
 gad_dst3_adv_y.F \
 gad_dst3fl_adv_r.F \
 gad_dst3fl_adv_x.F \
 gad_dst3fl_adv_y.F \
 gad_dst3fl_impl_r.F \
 gad_exch_som.F \
 gad_fluxlimit_adv_r.F \
 gad_fluxlimit_adv_x.F \
 gad_fluxlimit_adv_y.F \
 gad_fluxlimit_impl_r.F \
 gad_grad_x.F \
 gad_grad_y.F \
 gad_implicit_r.F \
 gad_init_fixed.F \
 gad_init_varia.F \
 gad_os7mp_adv_r.F \
 gad_os7mp_adv_x.F \
 gad_os7mp_adv_y.F \
 gad_read_pickup.F \
 gad_som_advect.F \
 gad_som_adv_r.F \
 gad_som_adv_x.F \
 gad_som_adv_y.F \
 gad_som_exchanges.F \
 gad_som_fill_cs_corner.F \
 gad_som_lim_r.F \
 gad_som_prep_cs_corner.F \
 gad_u3_adv_r.F \
 gad_u3_adv_x.F \
 gad_u3_adv_y.F \
 gad_u3c4_impl_r.F \
 gad_valid_advscheme.F \
 gad_write_pickup.F \
 salt_fill.F \
 gmredi_calc_diff.F \
 gmredi_calc_psi_b.F \
 gmredi_calc_tensor.F \
 gmredi_calc_uvflow.F \
 gmredi_calc_wflow.F \
 gmredi_check.F \
 gmredi_diagnostics_fill.F \
 gmredi_diagnostics_init.F \
 gmredi_init_fixed.F \
 gmredi_init_varia.F \
 gmredi_mnc_init.F \
 gmredi_output.F \
 gmredi_readparms.F \
 gmredi_rtransport.F \
 gmredi_slope_limit.F \
 gmredi_slope_psi.F \
 gmredi_xtransport.F \
 gmredi_ytransport.F \
 kpp_calc_diff_ptr.F \
 kpp_calc_diff_s.F \
 kpp_calc_diff_t.F \
 kpp_calc.F \
 kpp_calc_visc.F \
 kpp_check.F \
 kpp_diagnostics_init.F \
 kpp_do_exch.F \
 kpp_forcing_surf.F \
 kpp_init_fixed.F \
 kpp_init_varia.F \
 kpp_output.F \
 kpp_readparms.F \
 kpp_routines.F \
 kpp_transport_ptr.F \
 kpp_transport_s.F \
 kpp_transport_t.F \
 mdsio_buffertorl.F \
 mdsio_buffertors.F \
 mdsio_facef_read.F \
 mdsio_gl.F \
 mdsio_gl_slice.F \
 mdsio_pass_r4torl.F \
 mdsio_pass_r4tors.F \
 mdsio_pass_r8torl.F \
 mdsio_pass_r8tors.F \
 mdsio_rd_rec_rl.F \
 mdsio_rd_rec_rs.F \
 mdsio_read_field.F \
 mdsio_read_meta.F \
 mdsio_read_section.F \
 mdsio_readvec_loc.F \
 mdsio_readvector.F \
 mdsio_read_whalos.F \
 mdsio_rw_field.F \
 mdsio_rw_slice.F \
 mdsio_seg4torl.F \
 mdsio_seg4tors.F \
 mdsio_seg8torl.F \
 mdsio_seg8tors.F \
 mdsio_segxtorx_2d.F \
 mdsio_write_field.F \
 mdsio_writelocal.F \
 mdsio_write_meta.F \
 mdsio_write_section.F \
 mdsio_writevec_loc.F \
 mdsio_writevector.F \
 mdsio_write_whalos.F \
 mdsio_wr_metafiles.F \
 mdsio_wr_rec_rl.F \
 mdsio_wr_rec_rs.F \
 mom_calc_absvort3.F \
 mom_calc_hdiv.F \
 mom_calc_hfacz.F \
 mom_calc_ke.F \
 mom_calc_relvort3.F \
 mom_calc_strain.F \
 mom_calc_tension.F \
 mom_calc_visc.F \
 mom_diagnostics_init.F \
 mom_hdissip.F \
 mom_init_fixed.F \
 mom_quasihydrostatic.F \
 mom_u_bottomdrag.F \
 mom_u_coriolis_nh.F \
 mom_u_implicit_r.F \
 mom_u_metric_nh.F \
 mom_u_rviscflux.F \
 mom_u_sidedrag.F \
 mom_v_bottomdrag.F \
 mom_v_coriolis_nh.F \
 mom_v_implicit_r.F \
 mom_v_metric_nh.F \
 mom_v_rviscflux.F \
 mom_v_sidedrag.F \
 mom_w_coriolis_nh.F \
 mom_w_metric_nh.F \
 mom_w_sidedrag.F \
 mom_calc_rtrans.F \
 mom_fluxform.F \
 mom_u_adv_uu.F \
 mom_u_adv_vu.F \
 mom_u_adv_wu.F \
 mom_u_coriolis.F \
 mom_u_del2u.F \
 mom_u_metric_cylinder.F \
 mom_u_metric_sphere.F \
 mom_uv_boundary.F \
 mom_u_xviscflux.F \
 mom_u_yviscflux.F \
 mom_v_adv_uv.F \
 mom_v_adv_vv.F \
 mom_v_adv_wv.F \
 mom_v_coriolis.F \
 mom_v_del2v.F \
 mom_v_metric_cylinder.F \
 mom_v_metric_sphere.F \
 mom_v_xviscflux.F \
 mom_v_yviscflux.F \
 mom_vecinv.F \
 mom_vi_coriolis.F \
 mom_vi_del2uv.F \
 mom_vi_hdissip.F \
 mom_vi_u_coriolis_c4.F \
 mom_vi_u_coriolis.F \
 mom_vi_u_grad_ke.F \
 mom_vi_u_vertshear.F \
 mom_vi_v_coriolis_c4.F \
 mom_vi_v_coriolis.F \
 mom_vi_v_grad_ke.F \
 mom_vi_v_vertshear.F \
 mon_advcfl.F \
 mon_advcflw2.F \
 mon_advcflw.F \
 mon_calc_stats_rl.F \
 mon_calc_stats_rs.F \
 mon_init.F \
 monitor_ad.F \
 monitor.F \
 monitor_g.F \
 mon_ke.F \
 mon_out.F \
 mon_printstats_rl.F \
 mon_printstats_rs.F \
 mon_set_iounit.F \
 mon_set_pref.F \
 mon_stats_latbnd_rl.F \
 mon_stats_rl.F \
 mon_stats_rs.F \
 mon_surfcor.F \
 mon_vort3.F \
 mon_writestats_rl.F \
 mon_writestats_rs.F \
 obcs_apply_eta.F \
 obcs_apply_ptracer.F \
 obcs_apply_r_star.F \
 obcs_apply_seaice.F \
 obcs_apply_sloc.F \
 obcs_apply_surf_dr.F \
 obcs_apply_tloc.F \
 obcs_apply_ts.F \
 obcs_apply_uv.F \
 obcs_apply_uvice.F \
 obcs_apply_w.F \
 obcs_calc.F \
 obcs_calc_stevens.F \
 obcs_check_depths.F \
 obcs_check.F \
 obcs_copy_tracer.F \
 obcs_external_fields_load.F \
 obcs_init_fixed.F \
 obcs_init_variables.F \
 obcs_output.F \
 obcs_prescribe_exchanges.F \
 obcs_prescribe_read.F \
 obcs_readparms.F \
 obcs_read_pickup.F \
 obcs_sponge.F \
 obcs_write_pickup.F \
 orlanski_east.F \
 orlanski_init.F \
 orlanski_north.F \
 orlanski_south.F \
 orlanski_west.F \
 pp81_calc_diff.F \
 pp81_calc.F \
 pp81_calc_visc.F \
 pp81_check.F \
 pp81_init_varia.F \
 pp81_output.F \
 pp81_readparms.F \
 pp81_ri_number.F \
 ptracers_advection.F \
 ptracers_calc_diff.F \
 ptracers_check_pickup.F \
 ptracers_convect.F \
 ptracers_cycle.F \
 ptracers_debug.F \
 ptracers_diagnostics_init.F \
 ptracers_diagnostics_state.F \
 ptracers_dwnslp_apply.F \
 ptracers_dyn_state_data_mod.F \
 ptracers_dyn_state_mod.F \
 ptracers_fields_blocking_exchanges.F \
 ptracers_forcing.F \
 ptracers_forcing_surf.F \
 ptracers_gterm_blocking_exchanges.F \
 ptracers_implicit.F \
 ptracers_init_fixed.F \
 ptracers_init_varia.F \
 ptracers_integrate.F \
 ptracers_mnc_init.F \
 ptracers_monitor.F \
 ptracers_output.F \
 ptracers_readparms.F \
 ptracers_read_pickup.F \
 ptracers_set_iolabel.F \
 ptracers_timeave.F \
 ptracers_turnoff_io.F \
 ptracers_write_pickup.F \
 ptracers_write_state.F \
 ptracers_write_timeave.F \
 ptracers_zonal_filt_apply.F \
 rbcs_add_tendency.F \
 rbcs_fields_load.F \
 rbcs_init_fixed.F \
 rbcs_init_varia.F \
 rbcs_readparms.F \
 ep85.F \
 mod_recom_para_def.F \
 recom_checkpoint.F \
 recom_external_fields_load.F \
 recom_init_fixed.F \
 recom_init_vari.F \
 recom_sumptr.F \
 get_write_global_fld.F \
 read_fld_xy_rl.F \
 read_fld_xy_rs.F \
 read_fld_xyz_rl.F \
 read_fld_xyz_rs.F \
 read_glvec_rl.F \
 read_glvec_rs.F \
 read_mflds.F \
 read_rec.F \
 set_write_global_fld.F \
 write_fld_3d_rl.F \
 write_fld_3d_rs.F \
 write_fld_s3d_rl.F \
 write_fld_s3d_rs.F \
 write_fld_xy_rl.F \
 write_fld_xy_rs.F \
 write_fld_xyz_rl.F \
 write_fld_xyz_rs.F \
 write_glvec_rl.F \
 write_glvec_rs.F \
 write_local_rl.F \
 write_local_rs.F \
 write_rec.F \
 advect.F \
 cost_ice_test.F \
 diffus.F \
 dynsolver.F \
 lsr.F \
 ostres.F \
 seaice_ad_dump.F \
 seaice_advdiff.F \
 seaice_advection.F \
 seaice_budget_ice_if.F \
 seaice_budget_ocean.F \
 seaice_budget_ocean_if.F \
 seaice_calc_strainrates.F \
 seaice_calc_viscosities.F \
 seaice_check.F \
 seaice_check_pickup.F \
 seaice_cost_accumulate_mean.F \
 seaice_cost_areasst.F \
 seaice_cost_concentration.F \
 seaice_cost_driver.F \
 seaice_cost_export.F \
 seaice_cost_final.F \
 seaice_cost_init_fixed.F \
 seaice_cost_init_varia.F \
 seaice_cost_sensi.F \
 seaice_cost_sss.F \
 seaice_cost_sst.F \
 seaice_cost_weights.F \
 seaice_ctrl_map_ini.F \
 seaice_diagnostics_state.F \
 seaice_diffusion.F \
 seaice_dynsolver.F \
 seaice_evp.F \
 seaice_freedrift.F \
 seaice_get_dynforcing.F \
 seaice_growth.F \
 seaice_growth_if.F \
 seaice_init_fixed.F \
 seaice_init_varia.F \
 seaice_lsr.F \
 seaice_map_thsice.F \
 seaice_mnc_init.F \
 seaice_monitor.F \
 seaice_obcs_output.F \
 seaice_ocean_stress.F \
 seaice_output.F \
 seaice_readparms.F \
 seaice_read_pickup.F \
 seaice_solve4temp.F \
 seaice_summary.F \
 seaice_turnoff_io.F \
 seaice_write_pickup.F \
 shelfice_forcing.F \
 shelfice_mnc_init.F \
 shelfice_output.F \
 shelfice_u_drag.F \
 shelfice_update_masks.F \
 shelfice_v_drag.F \
 thsice_advdiff.F \
 thsice_advection.F \
 thsice_albedo.F \
 thsice_ave.F \
 thsice_calc_thickn.F \
 thsice_check_conserv.F \
 thsice_check.F \
 thsice_diagnostics_init.F \
 thsice_diagnostics_state.F \
 thsice_diffusion.F \
 thsice_do_advect.F \
 thsice_extend.F \
 thsice_get_bulkf.F \
 thsice_get_exf.F \
 thsice_get_precip.F \
 thsice_get_velocity.F \
 thsice_impl_temp.F \
 thsice_init_fixed.F \
 thsice_ini_vars.F \
 thsice_main.F \
 thsice_map_exf.F \
 thsice_mnc_init.F \
 thsice_monitor.F \
 thsice_output.F \
 thsice_readparms.F \
 thsice_read_pickup.F \
 thsice_reshape_layers.F \
 thsice_slab_ocean.F \
 thsice_solve4temp.F \
 thsice_step_fwd.F \
 thsice_step_temp.F \
 thsice_turnoff_io.F \
 thsice_write_pickup.F \
 timeave_cumul_1k1t.F \
 timeave_cumul_1t.F \
 timeave_cumul_1vfc.F \
 timeave_cumul_2v.F \
 timeave_cumul_2vfc.F \
 timeave_cumulate.F \
 timeave_cumul_dif_1t.F \
 timeave_init_fixed.F \
 timeave_norma_2v.F \
 timeave_normalize.F \
 timeave_normaliz.F \
 timeave_reset.F \
 timeave_statvars.F \
 timeave_statv_write.F \
 timeave_surf_flux.F \
 all_proc_die.F \
 bar2.F \
 bar_check.F \
 barrier.F \
 check_threads.F \
 comm_stats.F \
 different_multiple.F \
 diff_phase_multiple.F \
 eeboot.F \
 eeboot_minimal.F \
 eedata_example.F \
 eedie.F \
 eeintro_msg.F \
 eeset_parms.F \
 eewrite_eeenv.F \
 exch1_bg_r4_cube.F \
 exch1_bg_r8_cube.F \
 exch1_bg_rl_cube.F \
 exch1_bg_rs_cube.F \
 exch1_r4_cube.F \
 exch1_r4.F \
 exch1_r8_cube.F \
 exch1_r8.F \
 exch1_rl_ad.F \
 exch1_rl_cube_ad.F \
 exch1_rl_cube.F \
 exch1_rl.F \
 exch1_rs_ad.F \
 exch1_rs_cube_ad.F \
 exch1_rs_cube.F \
 exch1_rs.F \
 exch1_uv_r4_cube.F \
 exch1_uv_r8_cube.F \
 exch1_uv_rl_cube.F \
 exch1_uv_rs_cube.F \
 exch1_z_r4_cube.F \
 exch1_z_r8_cube.F \
 exch1_z_rl_cube.F \
 exch1_z_rs_cube.F \
 exch_3d_r4.F \
 exch_3d_r8.F \
 exch_3d_rl.F \
 exch_3d_rs.F \
 exch_cycle_ebl.F \
 exch_init.F \
 exch_r4_recv_get_x.F \
 exch_r4_recv_get_y.F \
 exch_r4_send_put_x.F \
 exch_r4_send_put_y.F \
 exch_r8_recv_get_x.F \
 exch_r8_recv_get_y.F \
 exch_r8_send_put_x.F \
 exch_r8_send_put_y.F \
 exch_rl_recv_get_x.F \
 exch_rl_recv_get_y.F \
 exch_rl_send_put_x.F \
 exch_rl_send_put_y.F \
 exch_rs_recv_get_x.F \
 exch_rs_recv_get_y.F \
 exch_rs_send_put_x.F \
 exch_rs_send_put_y.F \
 exch_s3d_r4.F \
 exch_s3d_r8.F \
 exch_s3d_rl.F \
 exch_s3d_rs.F \
 exch_sm_3d_r4.F \
 exch_sm_3d_r8.F \
 exch_sm_3d_rl.F \
 exch_sm_3d_rs.F \
 exch_uv_3d_r4.F \
 exch_uv_3d_r8.F \
 exch_uv_3d_rl.F \
 exch_uv_3d_rs.F \
 exch_uv_agrid_3d_r4.F \
 exch_uv_agrid_3d_r8.F \
 exch_uv_agrid_3d_rl.F \
 exch_uv_agrid_3d_rs.F \
 exch_uv_bgrid_3d_r4.F \
 exch_uv_bgrid_3d_r8.F \
 exch_uv_bgrid_3d_rl.F \
 exch_uv_bgrid_3d_rs.F \
 exch_uv_dgrid_3d_r4.F \
 exch_uv_dgrid_3d_r8.F \
 exch_uv_dgrid_3d_rl.F \
 exch_uv_dgrid_3d_rs.F \
 exch_uv_xy_r4.F \
 exch_uv_xy_r8.F \
 exch_uv_xy_rl.F \
 exch_uv_xy_rs.F \
 exch_uv_xyz_r4.F \
 exch_uv_xyz_r8.F \
 exch_uv_xyz_rl.F \
 exch_uv_xyz_rs.F \
 exch_xy_r4.F \
 exch_xy_r8.F \
 exch_xy_rl.F \
 exch_xy_rs.F \
 exch_xyz_r4.F \
 exch_xyz_r8.F \
 exch_xyz_rl.F \
 exch_xyz_rs.F \
 exch_z_3d_r4.F \
 exch_z_3d_r8.F \
 exch_z_3d_rl.F \
 exch_z_3d_rs.F \
 fill_cs_corner_ag_rl.F \
 fill_cs_corner_tr_rl.F \
 fill_cs_corner_uv_rs.F \
 fool_the_compiler.F \
 gather_2d_r4.F \
 gather_2d_r8.F \
 gather_2d_wh_r4.F \
 gather_2d_wh_r8.F \
 gather_vector.F \
 gather_xz.F \
 gather_yz.F \
 global_max.F \
 global_sum.F \
 global_sum_singlecpu.F \
 global_sum_tile.F \
 global_vec_sum.F \
 gsum.F \
 ini_communication_patterns.F \
 ini_procs.F \
 ini_threading_environment.F \
 lef_zero.F \
 master_cpu_io.F \
 master_cpu_thread.F \
 mds_byteswapi4.F \
 mds_byteswapr4.F \
 mds_byteswapr8.F \
 mds_check4file.F \
 mdsfindunit.F \
 mds_reclen.F \
 memsync.F \
 nml_change_syntax.F \
 nml_set_terminator.F \
 open_copy_data_file.F \
 print.F \
 scatter_2d_r4.F \
 scatter_2d_r8.F \
 scatter_2d_wh_r4.F \
 scatter_2d_wh_r8.F \
 scatter_vector.F \
 scatter_xz.F \
 scatter_yz.F \
 stop_if_error.F \
 timers.F \
 utils.F \
 write_utils.F \
 adams_bashforth2.F \
 adams_bashforth3.F \
 calc_3d_diffusivity.F \
 calc_buoyancy.F \
 calc_common_factors.F \
 calc_diffusivity.F \
 calc_div_ghat.F \
 calc_grad_phi_hyd.F \
 calc_grad_phi_surf.F \
 calc_gs.F \
 calc_gt.F \
 calc_gw.F \
 calc_ivdc.F \
 calc_oce_mxlayer.F \
 calc_phi_hyd.F \
 calc_r_star.F \
 calc_surf_dr.F \
 calc_viscosity.F \
 calc_wsurf_tr.F \
 cg2d.F \
 cg2d_nsa.F \
 cg2d_sr.F \
 cg3d.F \
 check_pickup.F \
 config_check.F \
 config_summary.F \
 convective_adjustment.F \
 convective_adjustment_ini.F \
 convectively_mixtracer.F \
 convective_weights.F \
 correction_step.F \
 cycle_tracer.F \
 diags_oceanic_surf_flux.F \
 diags_phi_hyd.F \
 diags_phi_rlow.F \
 diags_rho.F \
 do_atmospheric_phys.F \
 do_fields_blocking_exchanges.F \
 do_gterm_blocking_exchanges.F \
 do_oceanic_phys.F \
 do_stagger_fields_exchanges.F \
 do_statevars_diags.F \
 do_statevars_tave.F \
 do_the_model_io.F \
 do_write_pickup.F \
 dynamics.F \
 external_fields_load.F \
 external_forcing.F \
 external_forcing_surf.F \
 find_alpha.F \
 find_rho.F \
 forward_step.F \
 freesurf_rescale_g.F \
 freeze.F \
 freeze_surface.F \
 grad_sigma.F \
 impldiff.F \
 ini_cartesian_grid.F \
 ini_cg2d.F \
 ini_cg3d.F \
 ini_cori.F \
 ini_curvilinear_grid.F \
 ini_cylinder_grid.F \
 ini_depths.F \
 ini_dynvars.F \
 ini_eos.F \
 ini_fields.F \
 ini_forcing.F \
 ini_grid.F \
 ini_hfac.F \
 ini_linear_phisurf.F \
 ini_masks_etc.F \
 ini_mixing.F \
 ini_mnc_vars.F \
 ini_model_io.F \
 ini_nh_fields.F \
 ini_nh_vars.F \
 ini_nlfs_vars.F \
 ini_parms.F \
 ini_p_ground.F \
 ini_pressure.F \
 ini_psurf.F \
 ini_salt.F \
 ini_sigma_hfac.F \
 ini_spherical_polar_grid.F \
 ini_theta.F \
 initialise_fixed.F \
 initialise_varia.F \
 ini_vel.F \
 ini_vertical_grid.F \
 integrate_for_w.F \
 integr_continuity.F \
 load_fields_driver.F \
 load_grid_spacing.F \
 load_ref_files.F \
 momentum_correction_step.F \
 packages_boot.F \
 packages_check.F \
 packages_error_msg.F \
 packages_init_fixed.F \
 packages_init_variables.F \
 packages_readparms.F \
 packages_write_pickup.F \
 plot_field.F \
 port_rand.F \
 post_cg3d.F \
 pre_cg3d.F \
 pressure_for_eos.F \
 read_pickup.F \
 remove_mean.F \
 rotate_spherical_polar_grid.F \
 rotate_uv2en.F \
 seawater.F \
 set_defaults.F \
 set_grid_factors.F \
 set_parms.F \
 set_ref_state.F \
 set_write_global_pickup.F \
 solve_for_pressure.F \
 solve_pentadiagonal.F \
 solve_tridiagonal.F \
 state_summary.F \
 swfrac.F \
 taueddy_external_forcing.F \
 taueddy_init_varia.F \
 the_main_loop.F \
 the_model_main.F \
 thermodynamics.F \
 timestep.F \
 timestep_tracer.F \
 timestep_wvel.F \
 tracers_correction_step.F \
 tracers_iigw_correction.F \
 turnoff_model_io.F \
 update_cg2d.F \
 update_etah.F \
 update_masks_etc.F \
 update_r_star.F \
 update_sigma.F \
 update_surf_dr.F \
 write_grid.F \
 write_pickup.F \
 write_state.F
NON_AD_F77_SRC_FILES = 
C_SRC_FILES =  \
 gsl_ieee_env.c \
 ptwrapper.c \
 setrlstk.c \
 sigreg.c \
 tim.c \
 timer_stats.c
F90_SRC_FILES = 
H_SRC_FILES =  \
 CPP_OPTIONS.h \
 DIAGNOSTICS_SIZE.h \
 DIAG_OPTIONS.h \
 EXF_OPTIONS.h \
 GAD_OPTIONS.h \
 GMREDI_OPTIONS.h \
 OBCS_OPTIONS.h \
 PTRACERS_SIZE.h \
 RBCS.h \
 RECOM.h \
 RECOM_OPTIONS.h \
 RECOM_PARAMS.h \
 SEAICE_OPTIONS.h \
 SHELFICE.h \
 SHELFICE_OPTIONS.h \
 SIZE.h \
 SURFACE.h \
 THSICE_OPTIONS.h \
 cal.h \
 CAL_OPTIONS.h \
 cd_code_ad_check_lev1_dir.h \
 cd_code_ad_check_lev2_dir.h \
 cd_code_ad_check_lev3_dir.h \
 cd_code_ad_check_lev4_dir.h \
 CD_CODE_OPTIONS.h \
 CD_CODE_VARS.h \
 DEBUG_OPTIONS.h \
 DIAGNOSTICS.h \
 DIAGSTATS_REGIONS.h \
 DWNSLP_OPTIONS.h \
 DWNSLP_PARAMS.h \
 DWNSLP_SIZE.h \
 DWNSLP_VARS.h \
 exf_ad_check_lev1_dir.h \
 exf_ad_check_lev2_dir.h \
 exf_ad_check_lev3_dir.h \
 exf_ad_check_lev4_dir.h \
 EXF_CONSTANTS.h \
 EXF_FIELDS.h \
 EXF_PARAM.h \
 gchem_ad_check_lev1_dir.h \
 gchem_ad_check_lev2_dir.h \
 gchem_ad_check_lev3_dir.h \
 gchem_ad_check_lev4_dir.h \
 GCHEM_FIELDS.h \
 GCHEM.h \
 GCHEM_OPTIONS.h \
 GCHEM.recom.h \
 GAD_FLUX_LIMITER.h \
 GAD.h \
 GAD_SOM_VARS.h \
 GMREDI.h \
 GMREDI_TAVE.h \
 KPP.h \
 KPP_OPTIONS.h \
 KPP_PARAMS.h \
 KPP_TAVE.h \
 MDSIO_BUFF_3D.h \
 MDSIO_BUFF_WH.h \
 MDSIO_OPTIONS.h \
 MOM_COMMON_OPTIONS.h \
 MOM_VISC.h \
 MOM_FLUXFORM.h \
 MOM_FLUXFORM_OPTIONS.h \
 MOM_VECINV_OPTIONS.h \
 MONITOR.h \
 MONITOR_OPTIONS.h \
 obcs_ad_check_lev1_dir.h \
 obcs_ad_check_lev2_dir.h \
 obcs_ad_check_lev3_dir.h \
 obcs_ad_check_lev4_dir.h \
 OBCS.h \
 OBCS_PTRACERS.h \
 ORLANSKI.h \
 PP81.h \
 PP81_OPTIONS.h \
 PP81_TAVE.h \
 ptracers_ad_check_lev1_dir.h \
 ptracers_ad_check_lev2_dir.h \
 ptracers_ad_check_lev3_dir.h \
 ptracers_ad_check_lev4_dir.h \
 PTRACERS_FIELDS.h \
 PTRACERS_MOD.h \
 PTRACERS_OPTIONS.h \
 PTRACERS_PARAMS.h \
 PTRACERS_RESTART.h \
 PTRACERS_TAVE.h \
 rbcs_ad_check_lev1_dir.h \
 rbcs_ad_check_lev2_dir.h \
 rbcs_ad_check_lev3_dir.h \
 rbcs_ad_check_lev4_dir.h \
 RBCS_OPTIONS.h \
 RECOM_EXF.h \
 RW_MFLDS.h \
 RW_OPTIONS.h \
 seaice_ad_check_lev1_dir.h \
 seaice_ad_check_lev2_dir.h \
 seaice_ad_check_lev3_dir.h \
 seaice_ad_check_lev4_dir.h \
 SEAICE_COST.h \
 SEAICE.h \
 SEAICE_PARAMS.h \
 SEAICE_TAVE.h \
 SHELFICE_TAVE.h \
 thsice_ad_check_lev1_dir.h \
 thsice_ad_check_lev2_dir.h \
 thsice_ad_check_lev3_dir.h \
 thsice_ad_check_lev4_dir.h \
 THSICE_DEBUG.h \
 THSICE_PARAMS.h \
 THSICE_SIZE.h \
 THSICE_TAVE.h \
 thsice_test_addfluid.h \
 THSICE_VARS.h \
 TIMEAVE_OPTIONS.h \
 TIMEAVE_STATV.h \
 BAR2.h \
 BARRIER.h \
 CPP_EEMACROS.h \
 CPP_EEOPTIONS.h \
 EEBUFF_SCPU.h \
 EEPARAMS.h \
 EESUPPORT.h \
 EXCH.h \
 GLOBAL_MAX.h \
 GLOBAL_SUM.h \
 MAIN_PDIRECTIVES1.h \
 MAIN_PDIRECTIVES2.h \
 MPI_INFO.h \
 SIGREG.h \
 CG2D.h \
 CG3D.h \
 DXC_MACROS.h \
 DXF_MACROS.h \
 DXG_MACROS.h \
 DXV_MACROS.h \
 DYC_MACROS.h \
 DYF_MACROS.h \
 DYG_MACROS.h \
 DYNVARS.h \
 DYU_MACROS.h \
 EOS.h \
 FCORI_MACROS.h \
 FFIELDS.h \
 GRID.h \
 GRID_MACROS.h \
 HFACC_MACROS.h \
 HFACS_MACROS.h \
 HFACW_MACROS.h \
 MASKS_MACROS.h \
 MASKW_MACROS.h \
 NH_VARS.h \
 PARAMS.h \
 PARAMS_MACROS.h \
 RA_MACROS.h \
 RAS_MACROS.h \
 RAW_MACROS.h \
 RECIP_DXC_MACROS.h \
 RECIP_DXF_MACROS.h \
 RECIP_DXG_MACROS.h \
 RECIP_DXV_MACROS.h \
 RECIP_DYC_MACROS.h \
 RECIP_DYF_MACROS.h \
 RECIP_DYG_MACROS.h \
 RECIP_DYU_MACROS.h \
 RECIP_HFACC_MACROS.h \
 RECIP_HFACS_MACROS.h \
 RECIP_HFACW_MACROS.h \
 RESTART.h \
 SOLVE_FOR_PRESSURE3D.h \
 SOLVE_FOR_PRESSURE.h \
 TANPHIATU_MACROS.h \
 TANPHIATV_MACROS.h \
 THE_MODEL_COMMON_BLOCKS.h \
 XC_MACROS.h \
 YC_MACROS.h
AD_FLOW_FILES =  \
 cd_code_ad.flow \
 debug_ad.flow \
 diagnostics_ad.flow \
 exf_ad.flow \
 gmredi_ad.flow \
 mdsio_ad.flow \
 monitor_ad.flow \
 obcs_ad.flow \
 ptracers_ad.flow \
 rw_ad.flow \
 thsice_ad.flow \
 eesupp.flow \
 exch1_ad.flow

F77_PP_SRC_FILES = $(F77_SRC_FILES:.F=.f)
F90_PP_SRC_FILES = $(F90_SRC_FILES:.F90=.f90)
OBJFILES= $(F77_SRC_FILES:.F=.o) $(C_SRC_FILES:.c=.o) $(F90_SRC_FILES:.F90=.o)
FLOFILES =  $(AD_FLOW_FILES:.flow=.flowdir)

.SUFFIXES:
.SUFFIXES: .o .f .p .F .c .ff90 .f90 .FF90 .F90 .flowdir .flow

all: $(EXECUTABLE)
$(EXECUTABLE): $(SPECIAL_FILES) $(F77_SRC_FILES) $(C_SRC_FILES) $(H_SRC_FILES) $(F90_SRC_FILES) $(OBJFILES) $(EMBEDDED_FILES)
	@echo Creating $@ ...
	$(LINK) -o $@ $(FFLAGS) $(FOPTIM) $(OBJFILES) $(LIBS)
depend:
	@make links
	$(MAKEDEPEND) -o .f $(DEFINES) $(INCLUDES) $(F77_SRC_FILES)
	$(TOOLSDIR)/f90mkdepend >> $(MAKEFILE)
	-rm -f makedepend.out

lib: libmitgcmuv.a

libmitgcmuv.a: $(OBJFILES)
	ar rcv libmitgcmuv.a $(OBJFILES)
	ar d   libmitgcmuv.a main.o

links: $(F77_SRC_FILES) $(C_SRC_FILES) $(H_SRC_FILES) $(F90_SRC_FILES) $(SPECIAL_FILES)

small_f: $(F77_PP_SRC_FILES) $(F90_PP_SRC_FILES)

output.txt: $(EXECUTABLE)
	@printf 'running ... '
	@$(EXECUTABLE) > $@

# remove most of the files that "make" generates
clean:
	-rm -rf *.p *.f90 *.mod  work.{pc,pcl} *.template
	-rm -rf *.o
	-rm -rf *.f *.flowdir
	-rm -rf *.ff90 $(AD_CLEAN) ad_input*

# remove most of the files that "make" and "make depend" generate
Clean:
	@make clean
	@make cleanlinks
	-rm -f $(SPECIAL_FILES) f90mkdepend.log Makefile.old
	-rm -f taf_command taf_output taf_ad.log taf_ad_flow.log
	-rm -f genmake_warnings genmake_errors make.log

# remove also the executable, files that "genmake2" generates (except Makefile)
#         and output from a run (plus log files from testreport)
CLEAN:
	@make Clean
	-rm -f $(EXECUTABLE) $(EXE_AD) *.bak
	-rm -f genmake.log genmake_state genmake_*optfile
	-rm -f SIZE.h.mpi genmake.tr_log make.tr_log
	-find $(EXEDIR) -name "*.meta" -exec rm {} \;
	-find $(EXEDIR) -name "*.data" -exec rm {} \;
	-find $(EXEDIR) -name "fort.*" -exec rm {} \;
	-rm -f *.txt STD* *diagnostics.log datetime
	-rm -f *_MIT_CE_000.opt0000 costfunction*0000
	-rm -rf mnc_test_*

makefile:
	$(TOOLSDIR)/genmake2  "-ieee" "-mods=../code" "-of=../../MITgcm_c62r/tools/build_options/linux_amd64_intel+mpi_cheyenne2" "-mpi"
cleanlinks:
	-find . -type l -exec rm {} \;

# Special targets (SPECIAL_FILES) which are created by make
PACKAGES_CONFIG.h:
	@echo Creating $@ ...
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Warning - this file is automatically generated - do NOT edit" -bPACKAGES_CONFIG_H "Disabled packages:" $(DISABLED_PACKAGES) " " "Enabled packages:" $(ENABLED_PACKAGES) > $@
AD_CONFIG.h:
	@echo Creating $@ ...
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Warning - this file is automatically generated - do NOT edit" -bAD_CONFIG_H -UALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN -UALLOW_ECCO_OPTIMIZATION > $@
FC_NAMEMANGLE.h:
	@echo Creating $@ ...
	echo "#define FC_NAMEMANGLE(X)  X ## _" > $@

BUILD_INFO.h:
	@echo Creating $@ ...
	-echo "#define THISVER 'checkpoint62r'" > $@
	-echo "#define THISUSER 'chschult'" >> $@
	-echo "#define THISDATE 'Thu Mar 21 14:13:32 MDT 2019'" >> $@
	-echo "#define THISHOST 'cheyenne1'" >> $@

# The normal chain of rules is (  .F - .f - .o  )

## This nullifies any default implicit rules concerning these two file types:
## %.o : %.F

.F.f:
	$(CPP) $(DEFINES) $(INCLUDES) > $@
.f.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<
.F.o:
	$(FC) $(FFLAGS) $(FOPTIM) -c $<
.F90.f90:
	$(CPP) $(DEFINES) $(INCLUDES) > $@
.FF90.ff90:
	$(CPP) $(DEFINES) $(INCLUDES) > $@
.f90.o:
	$(F90C) $(F90FLAGS) $(F90OPTIM) -c $<
.ff90.o:
	cp $< $(basename  $<).f90
	$(F90C) $(F90FLAGS) $(F90OPTIM) -c $(F90FIXEDFORMAT) $(basename  $<).f90
.c.o:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -c $<
.flow.flowdir:
	$(CPP) $(DEFINES) $(INCLUDES) > $@

# Special exceptions that use the ( .F - .p - .f - .o ) rule-chain
.F.p:
	$(CPP) $(DEFINES) $(INCLUDES) > $@
.p.f:
	$(KPP) $(KFLAGS1)$@ $(KFLAGS2) $<


TAMC           = tamc
TAF            = staf

TAF_EXTRA      = 
TAMC_EXTRA     = 

AD_TAMC_FLAGS        = -reverse -admark ad -i4 -r4 -l tamc_ad.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_relaxsst_dummy xx_relaxsss_dummy' -output 'fc'
AD_TAF_FLAGS         = -v1 -reverse -admark ad -i4 -r4 -l taf_ad.log -flow taf_ad_flow.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_relaxsst_dummy xx_relaxsss_dummy' -output 'fc'
FTL_TAMC_FLAGS       = -forward -ftlmark g_ -i4 -r4 -l tamc_ftl.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_relaxsst_dummy xx_relaxsss_dummy' -output 'fc'
FTL_TAF_FLAGS        = -v1 -forward -ftlmark g_ -i4 -r4 -l taf_ftl.log -flow taf_ftl_flow.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_relaxsst_dummy xx_relaxsss_dummy' -output 'fc'
SVD_TAMC_FLAGS       = -reverse -forward -pure -i4 -r4 -l tamc_svd.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_relaxsst_dummy xx_relaxsss_dummy' -output 'fc'
SVD_TAF_FLAGS        = -v1 -reverse -forward -pure -i4 -r4 -l taf_svd.log -flow taf_flow.log -toplevel 'the_main_loop' -input 'xx_theta_dummy xx_salt_dummy xx_tr1_dummy xx_hflux_dummy xx_sflux_dummy xx_tauu_dummy xx_tauv_dummy xx_atemp_dummy xx_aqh_dummy xx_precip_dummy xx_swflux_dummy xx_swdown_dummy xx_lwflux_dummy xx_lwdown_dummy xx_evap_dummy xx_snowprecip_dummy xx_apressure_dummy xx_runoff_dummy xx_uwind_dummy xx_vwind_dummy xx_obcsn_dummy xx_obcss_dummy xx_obcsw_dummy xx_obcse_dummy xx_sst_dummy xx_sss_dummy xx_depth_dummy xx_diffkr_dummy xx_kapgm_dummy xx_kapredi_dummy xx_bottomdrag_dummy xx_efluxy_dummy xx_efluxp_dummy xx_edtaux_dummy xx_edtauy_dummy xx_uvel_dummy xx_vvel_dummy xx_etan_dummy xx_siarea_dummy xx_siheff_dummy xx_sihsnow_dummy xx_relaxsst_dummy xx_relaxsss_dummy' -output 'fc'

AD_FILES =  \
 cal_addtime.f \
 cal_checkdate.f \
 cal_compdates.f \
 cal_convdate.f \
 cal_copydate.f \
 cal_daysformonth.f \
 cal_dayspermonth.f \
 cal_fulldate.f \
 cal_getdate.f \
 cal_getmonthsrec.f \
 cal_intdays.f \
 cal_intmonths.f \
 cal_intsteps.f \
 cal_intyears.f \
 cal_isleap.f \
 cal_monthsforyear.f \
 cal_monthsperyear.f \
 cal_nstepday.f \
 cal_numints.f \
 cal_printdate.f \
 cal_printerror.f \
 cal_stepsforday.f \
 cal_stepsperday.f \
 cal_subdates.f \
 cal_time2dump.f \
 cal_timeinterval.f \
 cal_timepassed.f \
 cal_timestamp.f \
 cal_toseconds.f \
 cal_weekday.f \
 cd_code_scheme.f \
 cd_code_ini_vars.f \
 dwnslp_apply.f \
 dwnslp_calc_flow.f \
 dwnslp_calc_rho.f \
 dwnslp_diagnostics_init.f \
 dwnslp_init_varia.f \
 exf_init.f \
 exf_bulkformulae.f \
 exf_filter_rl.f \
 exf_filter_rs.f \
 exf_getclim.f \
 exf_getffields.f \
 exf_getffieldrec.f \
 exf_getforcing.f \
 exf_getsurfacefluxes.f \
 exf_getyearlyfieldname.f \
 exf_interp.f \
 exf_mapfields.f \
 exf_radiation.f \
 exf_set_gen.f \
 exf_set_runoff.f \
 exf_set_obcs.f \
 exf_set_uv.f \
 exf_swapffields.f \
 exf_wind.f \
 exf_zenithangle.f \
 gchem_add_tendency.f \
 gchem_calc_tendency.f \
 gchem_fields_load.f \
 gchem_forcing_sep.f \
 gchem_init_vari.f \
 gad_advection.f \
 gad_biharm_x.f \
 gad_biharm_y.f \
 gad_c2_adv_r.f \
 gad_c2_impl_r.f \
 gad_c2_adv_x.f \
 gad_c2_adv_y.f \
 gad_c4_adv_r.f \
 gad_c4_adv_x.f \
 gad_c4_adv_y.f \
 gad_calc_rhs.f \
 gad_del2.f \
 gad_diff_r.f \
 gad_diff_x.f \
 gad_diff_y.f \
 gad_dst2u1_adv_r.f \
 gad_dst2u1_impl_r.f \
 gad_dst2u1_adv_x.f \
 gad_dst2u1_adv_y.f \
 gad_dst3_adv_x.f \
 gad_dst3_adv_y.f \
 gad_dst3_adv_r.f \
 gad_dst3fl_adv_x.f \
 gad_dst3fl_adv_y.f \
 gad_dst3fl_adv_r.f \
 gad_dst3fl_impl_r.f \
 gad_fluxlimit_adv_r.f \
 gad_fluxlimit_impl_r.f \
 gad_fluxlimit_adv_x.f \
 gad_fluxlimit_adv_y.f \
 gad_grad_x.f \
 gad_grad_y.f \
 gad_implicit_r.f \
 gad_init_varia.f \
 gad_os7mp_adv_x.f \
 gad_os7mp_adv_y.f \
 gad_os7mp_adv_r.f \
 gad_u3_adv_r.f \
 gad_u3c4_impl_r.f \
 gad_u3_adv_x.f \
 gad_u3_adv_y.f \
 gad_som_exchanges.f \
 gmredi_calc_diff.f \
 gmredi_calc_psi_b.f \
 gmredi_calc_tensor.f \
 gmredi_calc_uvflow.f \
 gmredi_calc_wflow.f \
 gmredi_init_varia.f \
 gmredi_rtransport.f \
 gmredi_slope_limit.f \
 gmredi_slope_psi.f \
 gmredi_xtransport.f \
 gmredi_ytransport.f \
 kpp_calc.f \
 kpp_calc_diff_t.f \
 kpp_calc_diff_s.f \
 kpp_calc_diff_ptr.f \
 kpp_calc_visc.f \
 kpp_output.f \
 kpp_do_exch.f \
 kpp_init_varia.f \
 kpp_routines.f \
 kpp_transport_s.f \
 kpp_transport_t.f \
 kpp_transport_ptr.f \
 kpp_forcing_surf.f \
 mom_calc_absvort3.f \
 mom_calc_hdiv.f \
 mom_calc_hfacz.f \
 mom_calc_ke.f \
 mom_calc_relvort3.f \
 mom_calc_strain.f \
 mom_calc_tension.f \
 mom_calc_visc.f \
 mom_hdissip.f \
 mom_quasihydrostatic.f \
 mom_u_coriolis_nh.f \
 mom_u_metric_nh.f \
 mom_u_bottomdrag.f \
 mom_u_rviscflux.f \
 mom_u_sidedrag.f \
 mom_v_coriolis_nh.f \
 mom_v_metric_nh.f \
 mom_v_bottomdrag.f \
 mom_v_rviscflux.f \
 mom_v_sidedrag.f \
 mom_calc_rtrans.f \
 mom_fluxform.f \
 mom_u_adv_uu.f \
 mom_u_adv_vu.f \
 mom_u_adv_wu.f \
 mom_u_coriolis.f \
 mom_u_del2u.f \
 mom_u_metric_cylinder.f \
 mom_u_metric_sphere.f \
 mom_u_xviscflux.f \
 mom_u_yviscflux.f \
 mom_v_adv_uv.f \
 mom_v_adv_vv.f \
 mom_v_adv_wv.f \
 mom_v_coriolis.f \
 mom_v_del2v.f \
 mom_v_metric_cylinder.f \
 mom_v_metric_sphere.f \
 mom_v_xviscflux.f \
 mom_v_yviscflux.f \
 mom_vecinv.f \
 mom_vi_coriolis.f \
 mom_vi_del2uv.f \
 mom_vi_hdissip.f \
 mom_vi_u_coriolis.f \
 mom_vi_u_coriolis_c4.f \
 mom_vi_u_grad_ke.f \
 mom_vi_u_vertshear.f \
 mom_vi_v_coriolis.f \
 mom_vi_v_coriolis_c4.f \
 mom_vi_v_grad_ke.f \
 mom_vi_v_vertshear.f \
 obcs_apply_eta.f \
 obcs_apply_seaice.f \
 obcs_apply_uvice.f \
 obcs_apply_r_star.f \
 obcs_apply_surf_dr.f \
 obcs_apply_ts.f \
 obcs_apply_uv.f \
 obcs_apply_w.f \
 obcs_apply_ptracer.f \
 obcs_calc.f \
 obcs_copy_tracer.f \
 obcs_external_fields_load.f \
 obcs_init_variables.f \
 obcs_prescribe_exchanges.f \
 obcs_prescribe_read.f \
 obcs_sponge.f \
 orlanski_east.f \
 orlanski_north.f \
 orlanski_south.f \
 orlanski_west.f \
 orlanski_init.f \
 ptracers_advection.f \
 ptracers_calc_diff.f \
 ptracers_convect.f \
 ptracers_cycle.f \
 ptracers_fields_blocking_exchanges.f \
 ptracers_forcing.f \
 ptracers_forcing_surf.f \
 ptracers_implicit.f \
 ptracers_init_varia.f \
 ptracers_integrate.f \
 rbcs_add_tendency.f \
 rbcs_fields_load.f \
 rbcs_init_varia.f \
 read_fld_xyz_rs.f \
 read_fld_xyz_rl.f \
 read_fld_xy_rs.f \
 read_fld_xy_rl.f \
 read_rec.f \
 advect.f \
 diffus.f \
 dynsolver.f \
 ostres.f \
 seaice_advection.f \
 seaice_advdiff.f \
 seaice_solve4temp.f \
 seaice_budget_ice_if.f \
 seaice_budget_ocean.f \
 seaice_budget_ocean_if.f \
 seaice_check.f \
 seaice_output.f \
 seaice_diagnostics_state.f \
 seaice_diffusion.f \
 seaice_get_dynforcing.f \
 seaice_growth.f \
 seaice_growth_if.f \
 seaice_init_varia.f \
 seaice_model.f \
 seaice_read_pickup.f \
 seaice_check_pickup.f \
 seaice_write_pickup.f \
 seaice_readparms.f \
 lsr.f \
 seaice_cost_accumulate_mean.f \
 seaice_cost_areasst.f \
 seaice_cost_concentration.f \
 seaice_cost_driver.f \
 seaice_cost_export.f \
 seaice_cost_final.f \
 seaice_cost_init_varia.f \
 seaice_cost_sensi.f \
 seaice_cost_sss.f \
 seaice_cost_sst.f \
 seaice_ctrl_map_ini.f \
 cost_ice_test.f \
 seaice_calc_strainrates.f \
 seaice_calc_viscosities.f \
 seaice_dynsolver.f \
 seaice_evp.f \
 seaice_lsr.f \
 seaice_freedrift.f \
 seaice_ocean_stress.f \
 seaice_map_thsice.f \
 thsice_advdiff.f \
 thsice_advection.f \
 thsice_albedo.f \
 thsice_ave.f \
 thsice_calc_thickn.f \
 thsice_diffusion.f \
 thsice_do_advect.f \
 thsice_extend.f \
 thsice_get_exf.f \
 thsice_get_precip.f \
 thsice_get_velocity.f \
 thsice_ini_vars.f \
 thsice_main.f \
 thsice_map_exf.f \
 thsice_solve4temp.f \
 thsice_step_fwd.f \
 thsice_step_temp.f \
 timeave_cumul_1k1t.f \
 timeave_cumul_1t.f \
 timeave_cumul_1vfc.f \
 timeave_cumul_2v.f \
 timeave_cumul_2vfc.f \
 timeave_cumulate.f \
 timeave_cumul_dif_1t.f \
 timeave_norma_2v.f \
 timeave_normaliz.f \
 timeave_normalize.f \
 timeave_reset.f \
 timeave_statvars.f \
 timeave_statv_write.f \
 timeave_surf_flux.f \
 different_multiple.f \
 fill_cs_corner_tr_rl.f \
 fill_cs_corner_uv_rs.f \
 lef_zero.f \
 exch_3d_rs.f \
 exch_3d_rl.f \
 exch_xy_rl.f \
 exch_xy_rs.f \
 exch_xyz_rl.f \
 exch_xyz_rs.f \
 exch_uv_3d_rs.f \
 exch_uv_3d_rl.f \
 exch_uv_xy_rs.f \
 exch_uv_xy_rl.f \
 exch_uv_xyz_rs.f \
 exch_uv_xyz_rl.f \
 exch_uv_agrid_3d_rs.f \
 exch_uv_agrid_3d_rl.f \
 exch_uv_dgrid_3d_rs.f \
 exch_uv_dgrid_3d_rl.f \
 adams_bashforth2.f \
 adams_bashforth3.f \
 calc_3d_diffusivity.f \
 calc_buoyancy.f \
 calc_common_factors.f \
 calc_diffusivity.f \
 calc_div_ghat.f \
 calc_grad_phi_hyd.f \
 calc_grad_phi_surf.f \
 calc_gs.f \
 calc_gt.f \
 calc_ivdc.f \
 calc_phi_hyd.f \
 calc_surf_dr.f \
 calc_viscosity.f \
 calc_wsurf_tr.f \
 cg2d_nsa.f \
 convective_adjustment.f \
 convective_adjustment_ini.f \
 convective_weights.f \
 convectively_mixtracer.f \
 correction_step.f \
 cycle_tracer.f \
 diags_phi_hyd.f \
 diags_phi_rlow.f \
 diags_rho.f \
 do_atmospheric_phys.f \
 do_fields_blocking_exchanges.f \
 do_oceanic_phys.f \
 do_stagger_fields_exchanges.f \
 dynamics.f \
 external_fields_load.f \
 external_forcing.f \
 external_forcing_surf.f \
 find_alpha.f \
 find_rho.f \
 forward_step.f \
 freesurf_rescale_g.f \
 freeze.f \
 freeze_surface.f \
 grad_sigma.f \
 impldiff.f \
 ini_autodiff.f \
 ini_cartesian_grid.f \
 ini_cg2d.f \
 ini_cori.f \
 ini_curvilinear_grid.f \
 ini_cylinder_grid.f \
 ini_depths.f \
 ini_fields.f \
 ini_forcing.f \
 ini_grid.f \
 ini_hfac.f \
 ini_linear_phisurf.f \
 ini_masks_etc.f \
 ini_mixing.f \
 ini_nh_fields.f \
 ini_nlfs_vars.f \
 ini_p_ground.f \
 ini_pressure.f \
 ini_psurf.f \
 ini_salt.f \
 ini_sigma_hfac.f \
 ini_spherical_polar_grid.f \
 ini_theta.f \
 ini_dynvars.f \
 ini_vel.f \
 ini_vertical_grid.f \
 initialise_varia.f \
 integrate_for_w.f \
 integr_continuity.f \
 load_fields_driver.f \
 load_grid_spacing.f \
 momentum_correction_step.f \
 packages_init_variables.f \
 pressure_for_eos.f \
 read_pickup.f \
 rotate_uv2en.f \
 seawater.f \
 solve_for_pressure.f \
 state_summary.f \
 solve_pentadiagonal.f \
 solve_tridiagonal.f \
 taueddy_external_forcing.f \
 taueddy_init_varia.f \
 timestep.f \
 the_main_loop.f \
 thermodynamics.f \
 timestep_tracer.f \
 tracers_correction_step.f \
 update_cg2d.f \
 update_etah.f \
 update_masks_etc.f \
 update_surf_dr.f \
 swfrac.f \
 calc_r_star.f \
 update_r_star.f

# ... AD ...
adall: $(EXE_AD)
adtaf: ad_taf_output.f
adtamc: ad_tamc_output.f

ad_input_code.f: $(AD_FILES) $(H_SRC_FILES) $(AD_FLOW_FILES)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Warning - this file is automatically generated - do NOT edit" -DALLOW_ADJOINT_RUN -UALLOW_TANGENTLINEAR_RUN -UALLOW_ECCO_OPTIMIZATION > ad_config.template
	cmp ad_config.template AD_CONFIG.h || cat ad_config.template > AD_CONFIG.h
	-rm -f ad_config.template
	@make $(F77_PP_SRC_FILES)
	@make $(FLOFILES)
	cat $(FLOFILES) $(AD_FILES) | sed -f $(TOOLSDIR)/remove_comments_sed > ad_input_code.f

ad_taf_output.f: ad_input_code.f
	$(TAF) $(AD_TAF_FLAGS) $(TAF_EXTRA) ad_input_code.f
	ls -l ad_input_code_ad.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_taf_output.f

adtafonly:
	$(TAF) $(AD_TAF_FLAGS) $(TAF_EXTRA) ad_input_code.f
	ls -l ad_input_code_ad.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_taf_output.f

${EXE_AD}: ad_taf_output.o $(OBJFILES)
	$(LINK) -o ${EXE_AD} $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_taf_output.o $(LIBS)

ad_tamc_output.f: ad_input_code.f
	$(TAMC) $(AD_TAMC_FLAGS) $(TAMC_EXTRA) ad_input_code.f
	cat ad_input_code_ad.f | sed -f $(TOOLSDIR)/adjoint_sed > ad_tamc_output.f

ad_tamc: ad_tamc_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ad $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_tamc_output.o $(LIBS)

adonlyfwd:
	patch < $(TOOLSDIR)/ad_taf_output.f.onlyfwd.diff

adtrick:
	patch < $(TOOLSDIR)/ad_taf_output.f.adtrick.diff

# ... FTL ...
ftlall: ftl_taf
ftltaf: ftl_taf_output.f
ftltamc: ftl_tamc_output.f

ftl_input_code.f: $(AD_FILES) $(H_SRC_FILES)
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Warning - this file is automatically generated - do NOT edit" -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN -UALLOW_ECCO_OPTIMIZATION > ftl_config.template
	cmp ftl_config.template AD_CONFIG.h || cat ftl_config.template > AD_CONFIG.h
	-rm -f ftl_config.template
	@make $(F77_PP_SRC_FILES)
	@make $(AD_FLOW_FILES)
	cat $(AD_FLOW_FILES) $(AD_FILES) > ftl_input_code.f

ftl_taf_output.f: ftl_input_code.f
	$(TAF) $(FTL_TAF_FLAGS) $(TAF_EXTRA) ftl_input_code.f
	ls -l ftl_input_code_ftl.f
	cat ftl_input_code_ftl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_taf_output.f

ftltafonly:
	$(TAF) $(FTL_TAF_FLAGS) $(TAF_EXTRA) ftl_input_code.f
	ls -l ftl_input_code_ftl.f
	cat ftl_input_code_ftl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_taf_output.f

ftl_taf: ftl_taf_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ftl $(FFLAGS) $(FOPTIM) $(OBJFILES) ftl_taf_output.o $(LIBS)

ftl_tamc_output.f: ftl_input_code.f
	$(TAMC) $(FTL_TAMC_FLAGS) $(TAMC_EXTRA) ftl_input_code.f
	cat ftl_input_code_ftl.f | sed -f $(TOOLSDIR)/adjoint_sed > ftl_tamc_output.f

ftl_tamc: ftl_tamc_output.o $(OBJFILES)
	$(LINK) -o mitgcmuv_ftl $(FFLAGS) $(FOPTIM) $(OBJFILES) ftl_tamc_output.o $(LIBS)

# ... SVD ...
svdtaf: ad_taf_output.f ftl_taf_output.f
	@echo "--->>> Only ran TAF to generate SVD code!    <<<---"
	@echo "--->>> Do make svdall afterwards to compile. <<<---"
svdall: svd_touch svd_taf

svd_taf: $(OBJFILES)
	$(LINK) -o mitgcmuv_svd $(FFLAGS) $(FOPTIM) $(OBJFILES) ad_taf_output.o ftl_taf_output.o $(LIBS)

	@echo "--->>> Only COMPILE svd code! <<<---"
	@echo "--->>> Assumes you previously <<<---"
	@echo "--->>> did make svdtaf        <<<---"

svd_touch:
	@echo "--->>> Only COMPILE svd code! <<<---"
	@echo "--->>> Assumes you previously <<<---"
	@echo "--->>> did make svdtaf        <<<---"
	touch ad_taf_output.f ftl_taf_output.f
	$(FC) $(FFLAGS) $(FOPTIM) -c ad_taf_output.f
	$(FC) $(FFLAGS) $(FOPTIM) -c ftl_taf_output.f
	@$(TOOLSDIR)/convert_cpp_cmd2defines "Warning - this file is automatically generated - do NOT edit" -UALLOW_ADJOINT_RUN -DALLOW_TANGENTLINEAR_RUN -UALLOW_ECCO_OPTIMIZATION > ftl_config.template
	cmp ftl_config.template AD_CONFIG.h || cat ftl_config.template > AD_CONFIG.h
	-rm -f ftl_config.template

# This section creates symbolic links


#  These files are linked from ../code
 CPP_OPTIONS.h DIAGNOSTICS_SIZE.h DIAG_OPTIONS.h EXF_OPTIONS.h GAD_OPTIONS.h GMREDI_OPTIONS.h main.F mon_solution.F OBCS_OPTIONS.h PTRACERS_SIZE.h RBCS.h recom_co2flux.F recom_diagnostics_init.F recom_forcing.F RECOM.h recom_insolation.F recom_iterate_ph.F RECOM_OPTIONS.h RECOM_PARAMS.h recom_readparms.F recom_sinking.F recom_sms.F seaice_diagnostics_init.F seaice_model.F SEAICE_OPTIONS.h shelfice_check.F SHELFICE.h shelfice_init_fixed.F shelfice_init_varia.F SHELFICE_OPTIONS.h shelfice_readparms.F shelfice_thermodynamics.F SIZE.h SURFACE.h THSICE_OPTIONS.h :
	if [ ! -L $@ ]; then $(LN) ../code/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/cal
 cal_addtime.F cal_checkdate.F cal_compdates.F cal_convdate.F cal_copydate.F cal_daysformonth.F cal_dayspermonth.F cal_fulldate.F cal_getdate.F cal_getmonthsrec.F cal.h cal_intdays.F cal_intmonths.F cal_intsteps.F cal_intyears.F cal_isleap.F cal_monthsforyear.F cal_monthsperyear.F cal_nstepday.F cal_numints.F CAL_OPTIONS.h cal_printdate.F cal_printerror.F cal_readparms.F cal_set.F cal_stepsforday.F cal_stepsperday.F cal_subdates.F cal_summary.F cal_time2dump.F cal_timeinterval.F cal_timepassed.F cal_timestamp.F cal_toseconds.F cal_weekday.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/cal/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/cd_code
 cd_code_ad_check_lev1_dir.h cd_code_ad_check_lev2_dir.h cd_code_ad_check_lev3_dir.h cd_code_ad_check_lev4_dir.h cd_code_init_fixed.F cd_code_ini_vars.F CD_CODE_OPTIONS.h cd_code_read_pickup.F cd_code_scheme.F CD_CODE_VARS.h cd_code_write_pickup.F cd_code_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/cd_code/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/debug
 chksum_tiled.F debug_call.F debug_cs_corner_uv.F debug_enter.F debug_fld_stats_rl.F debug_fld_stats_rs.F debug_leave.F debug_msg.F DEBUG_OPTIONS.h debug_stats_rl.F debug_stats_rs.F fill_in_corners_rl.F write_fullarray_rl.F debug_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/debug/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/diagnostics
 diagnostics_addtolist.F diagnostics_check.F diagnostics_clear.F diagnostics_fill.F diagnostics_fill_field.F diagnostics_fill_rs.F diagnostics_fill_state.F diagnostics_fract_fill.F DIAGNOSTICS.h diagnostics_init_early.F diagnostics_init_fixed.F diagnostics_init_varia.F diagnostics_interp_p2p.F diagnostics_interp_vert.F diagnostics_is_on.F diagnostics_list_check.F diagnostics_main_init.F diagnostics_out.F diagnostics_readparms.F diagnostics_read_pickup.F diagnostics_scale_fill.F diagnostics_scale_fill_rs.F diagnostics_setdiag.F diagnostics_set_levels.F diagnostics_set_pointers.F diagnostics_sum_levels.F diagnostics_summary.F diagnostics_switch_onoff.F diagnostics_utils.F diagnostics_write.F diagnostics_write_pickup.F diagstats_ascii_out.F diagstats_calc.F diagstats_clear.F diagstats_close_io.F diagstats_fill.F diagstats_global.F diagstats_ini_io.F diagstats_local.F diagstats_mnc_out.F diagstats_others_calc.F diagstats_output.F DIAGSTATS_REGIONS.h diagstats_setdiag.F diagstats_set_pointers.F diagstats_set_regions.F diag_vegtile_fill.F diagnostics_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/diagnostics/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/down_slope
 dwnslp_apply.F dwnslp_calc_flow.F dwnslp_calc_rho.F dwnslp_diagnostics_init.F dwnslp_init_fixed.F dwnslp_init_varia.F DWNSLP_OPTIONS.h DWNSLP_PARAMS.h dwnslp_readparms.F DWNSLP_SIZE.h DWNSLP_VARS.h :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/down_slope/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/exf
 exf_ad_check_lev1_dir.h exf_ad_check_lev2_dir.h exf_ad_check_lev3_dir.h exf_ad_check_lev4_dir.h exf_ad_dump.F exf_adjoint_snapshots_ad.F exf_adjoint_snapshots.F exf_adjoint_snapshots__g.F exf_bulkformulae.F exf_check.F exf_check_range.F EXF_CONSTANTS.h exf_diagnostics_fill.F exf_diagnostics_init.F EXF_FIELDS.h exf_filter_rl.F exf_filter_rs.F exf_getclim.F exf_getffieldrec.F exf_getffields.F exf_getforcing.F exf_getsurfacefluxes.F exf_getyearlyfieldname.F exf_init.F exf_init_fixed.F exf_interp.F exf_interp_read.F exf_mapfields.F exf_monitor.F EXF_PARAM.h exf_radiation.F exf_readparms.F exf_set_gen.F exf_set_obcs.F exf_set_runoff.F exf_set_uv.F exf_summary.F exf_swapffields.F exf_wind.F exf_zenithangle.F exf_zenithangle_table.F exf_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/exf/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/gchem
 gchem_ad_check_lev1_dir.h gchem_ad_check_lev2_dir.h gchem_ad_check_lev3_dir.h gchem_ad_check_lev4_dir.h gchem_add_tendency.F gchem_calc_tendency.F gchem_check.F gchem_diagnostics_init.F GCHEM_FIELDS.h gchem_fields_load.F gchem_forcing_sep.F GCHEM.h gchem_init_fixed.F gchem_init_vari.F GCHEM_OPTIONS.h gchem_output.F gchem_readparms.F GCHEM.recom.h gchem_write_pickup.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/gchem/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/generic_advdiff
 gad_advection.F gad_biharm_x.F gad_biharm_y.F gad_c2_adv_r.F gad_c2_adv_x.F gad_c2_adv_y.F gad_c2_impl_r.F gad_c4_adv_r.F gad_c4_adv_x.F gad_c4_adv_y.F gad_calc_rhs.F gad_check.F gad_del2.F gad_diagnostics_init.F gad_diagnostics_state.F gad_diff_r.F gad_diff_x.F gad_diff_y.F gad_dst2u1_adv_r.F gad_dst2u1_adv_x.F gad_dst2u1_adv_y.F gad_dst2u1_impl_r.F gad_dst3_adv_r.F gad_dst3_adv_x.F gad_dst3_adv_y.F gad_dst3fl_adv_r.F gad_dst3fl_adv_x.F gad_dst3fl_adv_y.F gad_dst3fl_impl_r.F gad_exch_som.F gad_fluxlimit_adv_r.F gad_fluxlimit_adv_x.F gad_fluxlimit_adv_y.F GAD_FLUX_LIMITER.h gad_fluxlimit_impl_r.F gad_grad_x.F gad_grad_y.F GAD.h gad_implicit_r.F gad_init_fixed.F gad_init_varia.F gad_os7mp_adv_r.F gad_os7mp_adv_x.F gad_os7mp_adv_y.F gad_read_pickup.F gad_som_advect.F gad_som_adv_r.F gad_som_adv_x.F gad_som_adv_y.F gad_som_exchanges.F gad_som_fill_cs_corner.F gad_som_lim_r.F gad_som_prep_cs_corner.F GAD_SOM_VARS.h gad_u3_adv_r.F gad_u3_adv_x.F gad_u3_adv_y.F gad_u3c4_impl_r.F gad_valid_advscheme.F gad_write_pickup.F salt_fill.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/generic_advdiff/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/gmredi
 gmredi_calc_diff.F gmredi_calc_psi_b.F gmredi_calc_tensor.F gmredi_calc_uvflow.F gmredi_calc_wflow.F gmredi_check.F gmredi_diagnostics_fill.F gmredi_diagnostics_init.F GMREDI.h gmredi_init_fixed.F gmredi_init_varia.F gmredi_mnc_init.F gmredi_output.F gmredi_readparms.F gmredi_rtransport.F gmredi_slope_limit.F gmredi_slope_psi.F GMREDI_TAVE.h gmredi_xtransport.F gmredi_ytransport.F gmredi_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/gmredi/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/kpp
 kpp_calc_diff_ptr.F kpp_calc_diff_s.F kpp_calc_diff_t.F kpp_calc.F kpp_calc_visc.F kpp_check.F kpp_diagnostics_init.F kpp_do_exch.F kpp_forcing_surf.F KPP.h kpp_init_fixed.F kpp_init_varia.F KPP_OPTIONS.h kpp_output.F KPP_PARAMS.h kpp_readparms.F kpp_routines.F KPP_TAVE.h kpp_transport_ptr.F kpp_transport_s.F kpp_transport_t.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/kpp/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/mdsio
 MDSIO_BUFF_3D.h mdsio_buffertorl.F mdsio_buffertors.F MDSIO_BUFF_WH.h mdsio_facef_read.F mdsio_gl.F mdsio_gl_slice.F MDSIO_OPTIONS.h mdsio_pass_r4torl.F mdsio_pass_r4tors.F mdsio_pass_r8torl.F mdsio_pass_r8tors.F mdsio_rd_rec_rl.F mdsio_rd_rec_rs.F mdsio_read_field.F mdsio_read_meta.F mdsio_read_section.F mdsio_readvec_loc.F mdsio_readvector.F mdsio_read_whalos.F mdsio_rw_field.F mdsio_rw_slice.F mdsio_seg4torl.F mdsio_seg4tors.F mdsio_seg8torl.F mdsio_seg8tors.F mdsio_segxtorx_2d.F mdsio_write_field.F mdsio_writelocal.F mdsio_write_meta.F mdsio_write_section.F mdsio_writevec_loc.F mdsio_writevector.F mdsio_write_whalos.F mdsio_wr_metafiles.F mdsio_wr_rec_rl.F mdsio_wr_rec_rs.F mdsio_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/mdsio/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/mom_common
 mom_calc_absvort3.F mom_calc_hdiv.F mom_calc_hfacz.F mom_calc_ke.F mom_calc_relvort3.F mom_calc_strain.F mom_calc_tension.F mom_calc_visc.F MOM_COMMON_OPTIONS.h mom_diagnostics_init.F mom_hdissip.F mom_init_fixed.F mom_quasihydrostatic.F mom_u_bottomdrag.F mom_u_coriolis_nh.F mom_u_implicit_r.F mom_u_metric_nh.F mom_u_rviscflux.F mom_u_sidedrag.F mom_v_bottomdrag.F mom_v_coriolis_nh.F mom_v_implicit_r.F MOM_VISC.h mom_v_metric_nh.F mom_v_rviscflux.F mom_v_sidedrag.F mom_w_coriolis_nh.F mom_w_metric_nh.F mom_w_sidedrag.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/mom_common/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/mom_fluxform
 mom_calc_rtrans.F mom_fluxform.F MOM_FLUXFORM.h MOM_FLUXFORM_OPTIONS.h mom_u_adv_uu.F mom_u_adv_vu.F mom_u_adv_wu.F mom_u_coriolis.F mom_u_del2u.F mom_u_metric_cylinder.F mom_u_metric_sphere.F mom_uv_boundary.F mom_u_xviscflux.F mom_u_yviscflux.F mom_v_adv_uv.F mom_v_adv_vv.F mom_v_adv_wv.F mom_v_coriolis.F mom_v_del2v.F mom_v_metric_cylinder.F mom_v_metric_sphere.F mom_v_xviscflux.F mom_v_yviscflux.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/mom_fluxform/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/mom_vecinv
 mom_vecinv.F MOM_VECINV_OPTIONS.h mom_vi_coriolis.F mom_vi_del2uv.F mom_vi_hdissip.F mom_vi_u_coriolis_c4.F mom_vi_u_coriolis.F mom_vi_u_grad_ke.F mom_vi_u_vertshear.F mom_vi_v_coriolis_c4.F mom_vi_v_coriolis.F mom_vi_v_grad_ke.F mom_vi_v_vertshear.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/mom_vecinv/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/monitor
 mon_advcfl.F mon_advcflw2.F mon_advcflw.F mon_calc_stats_rl.F mon_calc_stats_rs.F mon_init.F monitor_ad.F monitor.F monitor_g.F MONITOR.h MONITOR_OPTIONS.h mon_ke.F mon_out.F mon_printstats_rl.F mon_printstats_rs.F mon_set_iounit.F mon_set_pref.F mon_stats_latbnd_rl.F mon_stats_rl.F mon_stats_rs.F mon_surfcor.F mon_vort3.F mon_writestats_rl.F mon_writestats_rs.F monitor_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/monitor/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/obcs
 obcs_ad_check_lev1_dir.h obcs_ad_check_lev2_dir.h obcs_ad_check_lev3_dir.h obcs_ad_check_lev4_dir.h obcs_apply_eta.F obcs_apply_ptracer.F obcs_apply_r_star.F obcs_apply_seaice.F obcs_apply_sloc.F obcs_apply_surf_dr.F obcs_apply_tloc.F obcs_apply_ts.F obcs_apply_uv.F obcs_apply_uvice.F obcs_apply_w.F obcs_calc.F obcs_calc_stevens.F obcs_check_depths.F obcs_check.F obcs_copy_tracer.F obcs_external_fields_load.F OBCS.h obcs_init_fixed.F obcs_init_variables.F obcs_output.F obcs_prescribe_exchanges.F obcs_prescribe_read.F OBCS_PTRACERS.h obcs_readparms.F obcs_read_pickup.F obcs_sponge.F obcs_write_pickup.F orlanski_east.F ORLANSKI.h orlanski_init.F orlanski_north.F orlanski_south.F orlanski_west.F obcs_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/obcs/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/pp81
 pp81_calc_diff.F pp81_calc.F pp81_calc_visc.F pp81_check.F PP81.h pp81_init_varia.F PP81_OPTIONS.h pp81_output.F pp81_readparms.F pp81_ri_number.F PP81_TAVE.h :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/pp81/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/ptracers
 ptracers_ad_check_lev1_dir.h ptracers_ad_check_lev2_dir.h ptracers_ad_check_lev3_dir.h ptracers_ad_check_lev4_dir.h ptracers_advection.F ptracers_calc_diff.F ptracers_check_pickup.F ptracers_convect.F ptracers_cycle.F ptracers_debug.F ptracers_diagnostics_init.F ptracers_diagnostics_state.F ptracers_dwnslp_apply.F ptracers_dyn_state_data_mod.F ptracers_dyn_state_mod.F ptracers_fields_blocking_exchanges.F PTRACERS_FIELDS.h ptracers_forcing.F ptracers_forcing_surf.F ptracers_gterm_blocking_exchanges.F ptracers_implicit.F ptracers_init_fixed.F ptracers_init_varia.F ptracers_integrate.F ptracers_mnc_init.F PTRACERS_MOD.h ptracers_monitor.F PTRACERS_OPTIONS.h ptracers_output.F PTRACERS_PARAMS.h ptracers_readparms.F ptracers_read_pickup.F PTRACERS_RESTART.h ptracers_set_iolabel.F PTRACERS_TAVE.h ptracers_timeave.F ptracers_turnoff_io.F ptracers_write_pickup.F ptracers_write_state.F ptracers_write_timeave.F ptracers_zonal_filt_apply.F ptracers_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/ptracers/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/rbcs
 rbcs_ad_check_lev1_dir.h rbcs_ad_check_lev2_dir.h rbcs_ad_check_lev3_dir.h rbcs_ad_check_lev4_dir.h rbcs_add_tendency.F rbcs_fields_load.F rbcs_init_fixed.F rbcs_init_varia.F RBCS_OPTIONS.h rbcs_readparms.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/rbcs/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/recom
 ep85.F mod_recom_para_def.F recom_checkpoint.F RECOM_EXF.h recom_external_fields_load.F recom_init_fixed.F recom_init_vari.F recom_sumptr.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/recom/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/rw
 get_write_global_fld.F read_fld_xy_rl.F read_fld_xy_rs.F read_fld_xyz_rl.F read_fld_xyz_rs.F read_glvec_rl.F read_glvec_rs.F read_mflds.F read_rec.F RW_MFLDS.h RW_OPTIONS.h set_write_global_fld.F write_fld_3d_rl.F write_fld_3d_rs.F write_fld_s3d_rl.F write_fld_s3d_rs.F write_fld_xy_rl.F write_fld_xy_rs.F write_fld_xyz_rl.F write_fld_xyz_rs.F write_glvec_rl.F write_glvec_rs.F write_local_rl.F write_local_rs.F write_rec.F rw_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/rw/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/seaice
 advect.F cost_ice_test.F diffus.F dynsolver.F lsr.F ostres.F seaice_ad_check_lev1_dir.h seaice_ad_check_lev2_dir.h seaice_ad_check_lev3_dir.h seaice_ad_check_lev4_dir.h seaice_ad_dump.F seaice_advdiff.F seaice_advection.F seaice_budget_ice_if.F seaice_budget_ocean.F seaice_budget_ocean_if.F seaice_calc_strainrates.F seaice_calc_viscosities.F seaice_check.F seaice_check_pickup.F seaice_cost_accumulate_mean.F seaice_cost_areasst.F seaice_cost_concentration.F seaice_cost_driver.F seaice_cost_export.F seaice_cost_final.F SEAICE_COST.h seaice_cost_init_fixed.F seaice_cost_init_varia.F seaice_cost_sensi.F seaice_cost_sss.F seaice_cost_sst.F seaice_cost_weights.F seaice_ctrl_map_ini.F seaice_diagnostics_state.F seaice_diffusion.F seaice_dynsolver.F seaice_evp.F seaice_freedrift.F seaice_get_dynforcing.F seaice_growth.F seaice_growth_if.F SEAICE.h seaice_init_fixed.F seaice_init_varia.F seaice_lsr.F seaice_map_thsice.F seaice_mnc_init.F seaice_monitor.F seaice_obcs_output.F seaice_ocean_stress.F seaice_output.F SEAICE_PARAMS.h seaice_readparms.F seaice_read_pickup.F seaice_solve4temp.F seaice_summary.F SEAICE_TAVE.h seaice_turnoff_io.F seaice_write_pickup.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/seaice/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/shelfice
 shelfice_forcing.F shelfice_mnc_init.F shelfice_output.F SHELFICE_TAVE.h shelfice_u_drag.F shelfice_update_masks.F shelfice_v_drag.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/shelfice/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/thsice
 thsice_ad_check_lev1_dir.h thsice_ad_check_lev2_dir.h thsice_ad_check_lev3_dir.h thsice_ad_check_lev4_dir.h thsice_advdiff.F thsice_advection.F thsice_albedo.F thsice_ave.F thsice_calc_thickn.F thsice_check_conserv.F thsice_check.F THSICE_DEBUG.h thsice_diagnostics_init.F thsice_diagnostics_state.F thsice_diffusion.F thsice_do_advect.F thsice_extend.F thsice_get_bulkf.F thsice_get_exf.F thsice_get_precip.F thsice_get_velocity.F thsice_impl_temp.F thsice_init_fixed.F thsice_ini_vars.F thsice_main.F thsice_map_exf.F thsice_mnc_init.F thsice_monitor.F thsice_output.F THSICE_PARAMS.h thsice_readparms.F thsice_read_pickup.F thsice_reshape_layers.F THSICE_SIZE.h thsice_slab_ocean.F thsice_solve4temp.F thsice_step_fwd.F thsice_step_temp.F THSICE_TAVE.h thsice_test_addfluid.h thsice_turnoff_io.F THSICE_VARS.h thsice_write_pickup.F thsice_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/thsice/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/pkg/timeave
 timeave_cumul_1k1t.F timeave_cumul_1t.F timeave_cumul_1vfc.F timeave_cumul_2v.F timeave_cumul_2vfc.F timeave_cumulate.F timeave_cumul_dif_1t.F timeave_init_fixed.F timeave_norma_2v.F timeave_normalize.F timeave_normaliz.F TIMEAVE_OPTIONS.h timeave_reset.F timeave_statvars.F TIMEAVE_STATV.h timeave_statv_write.F timeave_surf_flux.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/pkg/timeave/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/eesupp/src
 all_proc_die.F bar2.F bar_check.F barrier.F check_threads.F comm_stats.F different_multiple.F diff_phase_multiple.F eeboot.F eeboot_minimal.F eedata_example.F eedie.F eeintro_msg.F eeset_parms.F eewrite_eeenv.F exch1_bg_r4_cube.F exch1_bg_r8_cube.F exch1_bg_rl_cube.F exch1_bg_rs_cube.F exch1_r4_cube.F exch1_r4.F exch1_r8_cube.F exch1_r8.F exch1_rl_ad.F exch1_rl_cube_ad.F exch1_rl_cube.F exch1_rl.F exch1_rs_ad.F exch1_rs_cube_ad.F exch1_rs_cube.F exch1_rs.F exch1_uv_r4_cube.F exch1_uv_r8_cube.F exch1_uv_rl_cube.F exch1_uv_rs_cube.F exch1_z_r4_cube.F exch1_z_r8_cube.F exch1_z_rl_cube.F exch1_z_rs_cube.F exch_3d_r4.F exch_3d_r8.F exch_3d_rl.F exch_3d_rs.F exch_cycle_ebl.F exch_init.F exch_r4_recv_get_x.F exch_r4_recv_get_y.F exch_r4_send_put_x.F exch_r4_send_put_y.F exch_r8_recv_get_x.F exch_r8_recv_get_y.F exch_r8_send_put_x.F exch_r8_send_put_y.F exch_rl_recv_get_x.F exch_rl_recv_get_y.F exch_rl_send_put_x.F exch_rl_send_put_y.F exch_rs_recv_get_x.F exch_rs_recv_get_y.F exch_rs_send_put_x.F exch_rs_send_put_y.F exch_s3d_r4.F exch_s3d_r8.F exch_s3d_rl.F exch_s3d_rs.F exch_sm_3d_r4.F exch_sm_3d_r8.F exch_sm_3d_rl.F exch_sm_3d_rs.F exch_uv_3d_r4.F exch_uv_3d_r8.F exch_uv_3d_rl.F exch_uv_3d_rs.F exch_uv_agrid_3d_r4.F exch_uv_agrid_3d_r8.F exch_uv_agrid_3d_rl.F exch_uv_agrid_3d_rs.F exch_uv_bgrid_3d_r4.F exch_uv_bgrid_3d_r8.F exch_uv_bgrid_3d_rl.F exch_uv_bgrid_3d_rs.F exch_uv_dgrid_3d_r4.F exch_uv_dgrid_3d_r8.F exch_uv_dgrid_3d_rl.F exch_uv_dgrid_3d_rs.F exch_uv_xy_r4.F exch_uv_xy_r8.F exch_uv_xy_rl.F exch_uv_xy_rs.F exch_uv_xyz_r4.F exch_uv_xyz_r8.F exch_uv_xyz_rl.F exch_uv_xyz_rs.F exch_xy_r4.F exch_xy_r8.F exch_xy_rl.F exch_xy_rs.F exch_xyz_r4.F exch_xyz_r8.F exch_xyz_rl.F exch_xyz_rs.F exch_z_3d_r4.F exch_z_3d_r8.F exch_z_3d_rl.F exch_z_3d_rs.F fill_cs_corner_ag_rl.F fill_cs_corner_tr_rl.F fill_cs_corner_uv_rs.F fool_the_compiler.F gather_2d_r4.F gather_2d_r8.F gather_2d_wh_r4.F gather_2d_wh_r8.F gather_vector.F gather_xz.F gather_yz.F global_max.F global_sum.F global_sum_singlecpu.F global_sum_tile.F global_vec_sum.F gsl_ieee_env.c gsum.F ini_communication_patterns.F ini_procs.F ini_threading_environment.F lef_zero.F master_cpu_io.F master_cpu_thread.F mds_byteswapi4.F mds_byteswapr4.F mds_byteswapr8.F mds_check4file.F mdsfindunit.F mds_reclen.F memsync.F nml_change_syntax.F nml_set_terminator.F open_copy_data_file.F print.F ptwrapper.c scatter_2d_r4.F scatter_2d_r8.F scatter_2d_wh_r4.F scatter_2d_wh_r8.F scatter_vector.F scatter_xz.F scatter_yz.F setrlstk.c sigreg.c stop_if_error.F tim.c timers.F timer_stats.c utils.F write_utils.F eesupp.flow exch1_ad.flow :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/eesupp/src/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/model/src
 adams_bashforth2.F adams_bashforth3.F calc_3d_diffusivity.F calc_buoyancy.F calc_common_factors.F calc_diffusivity.F calc_div_ghat.F calc_grad_phi_hyd.F calc_grad_phi_surf.F calc_gs.F calc_gt.F calc_gw.F calc_ivdc.F calc_oce_mxlayer.F calc_phi_hyd.F calc_r_star.F calc_surf_dr.F calc_viscosity.F calc_wsurf_tr.F cg2d.F cg2d_nsa.F cg2d_sr.F cg3d.F check_pickup.F config_check.F config_summary.F convective_adjustment.F convective_adjustment_ini.F convectively_mixtracer.F convective_weights.F correction_step.F cycle_tracer.F diags_oceanic_surf_flux.F diags_phi_hyd.F diags_phi_rlow.F diags_rho.F do_atmospheric_phys.F do_fields_blocking_exchanges.F do_gterm_blocking_exchanges.F do_oceanic_phys.F do_stagger_fields_exchanges.F do_statevars_diags.F do_statevars_tave.F do_the_model_io.F do_write_pickup.F dynamics.F external_fields_load.F external_forcing.F external_forcing_surf.F find_alpha.F find_rho.F forward_step.F freesurf_rescale_g.F freeze.F freeze_surface.F grad_sigma.F impldiff.F ini_cartesian_grid.F ini_cg2d.F ini_cg3d.F ini_cori.F ini_curvilinear_grid.F ini_cylinder_grid.F ini_depths.F ini_dynvars.F ini_eos.F ini_fields.F ini_forcing.F ini_grid.F ini_hfac.F ini_linear_phisurf.F ini_masks_etc.F ini_mixing.F ini_mnc_vars.F ini_model_io.F ini_nh_fields.F ini_nh_vars.F ini_nlfs_vars.F ini_parms.F ini_p_ground.F ini_pressure.F ini_psurf.F ini_salt.F ini_sigma_hfac.F ini_spherical_polar_grid.F ini_theta.F initialise_fixed.F initialise_varia.F ini_vel.F ini_vertical_grid.F integrate_for_w.F integr_continuity.F load_fields_driver.F load_grid_spacing.F load_ref_files.F momentum_correction_step.F packages_boot.F packages_check.F packages_error_msg.F packages_init_fixed.F packages_init_variables.F packages_readparms.F packages_write_pickup.F plot_field.F port_rand.F post_cg3d.F pre_cg3d.F pressure_for_eos.F read_pickup.F remove_mean.F rotate_spherical_polar_grid.F rotate_uv2en.F seawater.F set_defaults.F set_grid_factors.F set_parms.F set_ref_state.F set_write_global_pickup.F solve_for_pressure.F solve_pentadiagonal.F solve_tridiagonal.F state_summary.F swfrac.F taueddy_external_forcing.F taueddy_init_varia.F the_main_loop.F the_model_main.F thermodynamics.F timestep.F timestep_tracer.F timestep_wvel.F tracers_correction_step.F tracers_iigw_correction.F turnoff_model_io.F update_cg2d.F update_etah.F update_masks_etc.F update_r_star.F update_sigma.F update_surf_dr.F write_grid.F write_pickup.F write_state.F :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/model/src/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/eesupp/inc
 BAR2.h BARRIER.h CPP_EEMACROS.h CPP_EEOPTIONS.h EEBUFF_SCPU.h EEPARAMS.h EESUPPORT.h EXCH.h GLOBAL_MAX.h GLOBAL_SUM.h MAIN_PDIRECTIVES1.h MAIN_PDIRECTIVES2.h MPI_INFO.h SIGREG.h :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/eesupp/inc/$@ $@; fi

#  These files are linked from /glade/u/home/chschult/MITgcm_c62r/model/inc
 CG2D.h CG3D.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYNVARS.h DYU_MACROS.h EOS.h FCORI_MACROS.h FFIELDS.h GRID.h GRID_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h MASKS_MACROS.h MASKW_MACROS.h NH_VARS.h PARAMS.h PARAMS_MACROS.h RA_MACROS.h RAS_MACROS.h RAW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h RESTART.h SOLVE_FOR_PRESSURE3D.h SOLVE_FOR_PRESSURE.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h THE_MODEL_COMMON_BLOCKS.h XC_MACROS.h YC_MACROS.h :
	if [ ! -L $@ ]; then $(LN) /glade/u/home/chschult/MITgcm_c62r/model/inc/$@ $@; fi


# DO NOT DELETE

main.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
main.f: EEPARAMS.h EESUPPORT.h
main.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
main.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
main.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
main.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
main.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
main.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
main.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
main.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
main.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
main.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
main.f: DYNVARS.h FFIELDS.h SURFACE.h TIMEAVE_STATV.h TIMEAVE_OPTIONS.h
main.f: SIGREG.h MAIN_PDIRECTIVES1.h MAIN_PDIRECTIVES2.h
mon_solution.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_solution.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mon_solution.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h
mon_solution.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mon_solution.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mon_solution.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mon_solution.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mon_solution.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mon_solution.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mon_solution.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mon_solution.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mon_solution.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mon_solution.f: TANPHIATV_MACROS.h MONITOR.h
recom_co2flux.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_co2flux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GCHEM_OPTIONS.h
recom_co2flux.f: RECOM_OPTIONS.h
recom_diagnostics_init.f: RECOM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
recom_forcing.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_forcing.f: CPP_EEOPTIONS.h CPP_EEMACROS.h RECOM_OPTIONS.h EXF_OPTIONS.h
recom_forcing.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
recom_forcing.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
recom_forcing.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
recom_forcing.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
recom_forcing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
recom_forcing.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
recom_forcing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
recom_forcing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
recom_forcing.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
recom_forcing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
recom_forcing.f: TANPHIATV_MACROS.h DYNVARS.h PTRACERS_SIZE.h
recom_forcing.f: PTRACERS_PARAMS.h PTRACERS_FIELDS.h GCHEM.h RECOM.h
recom_forcing.f: SEAICE_PARAMS.h SEAICE.h THSICE_VARS.h EXF_FIELDS.h
recom_insolation.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_insolation.f: CPP_EEOPTIONS.h CPP_EEMACROS.h RECOM_OPTIONS.h SIZE.h
recom_insolation.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
recom_insolation.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
recom_insolation.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
recom_insolation.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
recom_insolation.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
recom_insolation.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
recom_insolation.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
recom_insolation.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
recom_insolation.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
recom_insolation.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
recom_insolation.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h RECOM.h FFIELDS.h
recom_iterate_ph.f: RECOM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_iterate_ph.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
recom_readparms.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h RECOM_OPTIONS.h
recom_readparms.f: EXF_OPTIONS.h RECOM_PARAMS.h SIZE.h EEPARAMS.h PARAMS.h
recom_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h RECOM.h cal.h GCHEM.h
recom_readparms.f: EXF_CONSTANTS.h EXF_PARAM.h RECOM_EXF.h
recom_sinking.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_sinking.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GCHEM_OPTIONS.h
recom_sinking.f: RECOM_OPTIONS.h RECOM_PARAMS.h SIZE.h
recom_sms.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_sms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GCHEM_OPTIONS.h RECOM_OPTIONS.h
recom_sms.f: RECOM_PARAMS.h SIZE.h EEPARAMS.h RECOM.h SEAICE.h
seaice_diagnostics_init.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
seaice_diagnostics_init.f: SEAICE_PARAMS.h
seaice_model.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_model.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h DYNVARS.h
seaice_model.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
seaice_model.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_model.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_model.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_model.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_model.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_model.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
seaice_model.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
seaice_model.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_model.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_model.f: TANPHIATV_MACROS.h FFIELDS.h SEAICE.h SEAICE_PARAMS.h
seaice_model.f: EXF_OPTIONS.h EXF_FIELDS.h
shelfice_check.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
shelfice_check.f: PARAMS_MACROS.h FCORI_MACROS.h SHELFICE.h
shelfice_init_fixed.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
shelfice_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
shelfice_init_fixed.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
shelfice_init_fixed.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
shelfice_init_fixed.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
shelfice_init_fixed.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shelfice_init_fixed.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shelfice_init_fixed.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shelfice_init_fixed.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shelfice_init_fixed.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shelfice_init_fixed.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
shelfice_init_fixed.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
shelfice_init_fixed.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shelfice_init_fixed.f: SHELFICE.h
shelfice_init_varia.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
shelfice_init_varia.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
shelfice_init_varia.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
shelfice_init_varia.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
shelfice_init_varia.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
shelfice_init_varia.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shelfice_init_varia.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shelfice_init_varia.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shelfice_init_varia.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shelfice_init_varia.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shelfice_init_varia.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
shelfice_init_varia.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
shelfice_init_varia.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
shelfice_init_varia.f: SHELFICE.h
shelfice_readparms.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
shelfice_readparms.f: SHELFICE.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
shelfice_thermodynamics.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_thermodynamics.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
shelfice_thermodynamics.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
shelfice_thermodynamics.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
shelfice_thermodynamics.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shelfice_thermodynamics.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
shelfice_thermodynamics.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shelfice_thermodynamics.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
shelfice_thermodynamics.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shelfice_thermodynamics.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shelfice_thermodynamics.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
shelfice_thermodynamics.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
shelfice_thermodynamics.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
shelfice_thermodynamics.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
shelfice_thermodynamics.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
shelfice_thermodynamics.f: TANPHIATV_MACROS.h DYNVARS.h FFIELDS.h SHELFICE.h
cal_addtime.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_addtime.f: CPP_EEMACROS.h cal.h
cal_checkdate.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_checkdate.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_compdates.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_compdates.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_convdate.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_convdate.f: CPP_EEMACROS.h cal.h
cal_copydate.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_copydate.f: CPP_EEMACROS.h cal.h
cal_daysformonth.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_daysformonth.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_dayspermonth.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_dayspermonth.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_fulldate.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_fulldate.f: CPP_EEMACROS.h cal.h
cal_getdate.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_getdate.f: CPP_EEMACROS.h cal.h
cal_getmonthsrec.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_getmonthsrec.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_intdays.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_intdays.f: CPP_EEMACROS.h cal.h
cal_intmonths.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_intmonths.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_intsteps.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_intsteps.f: CPP_EEMACROS.h cal.h
cal_intyears.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_intyears.f: CPP_EEMACROS.h cal.h
cal_isleap.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_isleap.f: CPP_EEMACROS.h cal.h
cal_monthsforyear.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_monthsforyear.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_monthsperyear.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_monthsperyear.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_nstepday.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_nstepday.f: CPP_EEMACROS.h cal.h
cal_numints.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_numints.f: CPP_EEMACROS.h cal.h
cal_printdate.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_printdate.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
cal_printerror.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_printerror.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
cal_printerror.f: PARAMS_MACROS.h FCORI_MACROS.h
cal_readparms.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
cal_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h cal.h
cal_set.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_set.f: CPP_EEMACROS.h cal.h
cal_stepsforday.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_stepsforday.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_stepsperday.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_stepsperday.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_subdates.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_subdates.f: CPP_EEMACROS.h cal.h
cal_summary.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_summary.f: CPP_EEMACROS.h EEPARAMS.h cal.h
cal_time2dump.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_time2dump.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_timeinterval.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_timeinterval.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_timepassed.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_timepassed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_timestamp.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_timestamp.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
cal_toseconds.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cal_toseconds.f: CPP_EEOPTIONS.h CPP_EEMACROS.h cal.h
cal_weekday.f: CAL_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
cal_weekday.f: CPP_EEMACROS.h cal.h
cd_code_init_fixed.f: CD_CODE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cd_code_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cd_code_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
cd_code_ini_vars.f: CD_CODE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cd_code_ini_vars.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
cd_code_ini_vars.f: PARAMS_MACROS.h FCORI_MACROS.h CD_CODE_VARS.h
cd_code_read_pickup.f: CD_CODE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cd_code_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cd_code_read_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h CD_CODE_VARS.h
cd_code_scheme.f: CD_CODE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cd_code_scheme.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h DYNVARS.h
cd_code_scheme.f: CD_CODE_VARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
cd_code_scheme.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
cd_code_scheme.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
cd_code_scheme.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
cd_code_scheme.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
cd_code_scheme.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
cd_code_scheme.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
cd_code_scheme.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
cd_code_scheme.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
cd_code_scheme.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
cd_code_scheme.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
cd_code_scheme.f: TANPHIATV_MACROS.h SURFACE.h
cd_code_write_pickup.f: CD_CODE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cd_code_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cd_code_write_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
cd_code_write_pickup.f: CD_CODE_VARS.h
chksum_tiled.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
chksum_tiled.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_call.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
debug_call.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_cs_corner_uv.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_cs_corner_uv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_enter.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_enter.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_fld_stats_rl.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_fld_stats_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_fld_stats_rs.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_fld_stats_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_leave.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_leave.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_msg.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
debug_msg.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_stats_rl.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_stats_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
debug_stats_rs.f: DEBUG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
debug_stats_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
fill_in_corners_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
write_fullarray_rl.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
write_fullarray_rl.f: EEPARAMS.h
diagnostics_addtolist.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_addtolist.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_addtolist.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_check.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_check.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diagnostics_check.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
diagnostics_check.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
diagnostics_check.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
diagnostics_check.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_check.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diagnostics_check.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_check.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_check.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
diagnostics_check.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
diagnostics_check.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DIAGNOSTICS_SIZE.h
diagnostics_check.f: DIAGNOSTICS.h
diagnostics_clear.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_clear.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_clear.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_fill.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_fill.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_fill_field.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_fill_field.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_fill_field.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_fill_rs.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_fill_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_fill_rs.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_fill_state.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_fill_state.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_fill_state.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diagnostics_fill_state.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
diagnostics_fill_state.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diagnostics_fill_state.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
diagnostics_fill_state.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
diagnostics_fill_state.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diagnostics_fill_state.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diagnostics_fill_state.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagnostics_fill_state.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagnostics_fill_state.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
diagnostics_fill_state.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
diagnostics_fill_state.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
diagnostics_fill_state.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
diagnostics_fill_state.f: DYNVARS.h NH_VARS.h
diagnostics_fract_fill.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_fract_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_fract_fill.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_init_early.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_init_early.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_init_early.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_init_early.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_init_fixed.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_init_fixed.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_init_varia.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_init_varia.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_init_varia.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_interp_p2p.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_interp_p2p.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
diagnostics_interp_vert.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_interp_vert.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_interp_vert.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diagnostics_interp_vert.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
diagnostics_interp_vert.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diagnostics_interp_vert.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_interp_vert.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_interp_vert.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagnostics_interp_vert.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diagnostics_interp_vert.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_interp_vert.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagnostics_interp_vert.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagnostics_interp_vert.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
diagnostics_interp_vert.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diagnostics_interp_vert.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
diagnostics_interp_vert.f: TANPHIATV_MACROS.h DIAGNOSTICS_SIZE.h
diagnostics_interp_vert.f: DIAGNOSTICS.h
diagnostics_is_on.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_is_on.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_is_on.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_list_check.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_list_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_list_check.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_list_check.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_main_init.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_main_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_main_init.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_out.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_out.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
diagnostics_out.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagnostics_out.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagnostics_out.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagnostics_out.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagnostics_out.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diagnostics_out.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagnostics_out.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagnostics_out.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
diagnostics_out.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diagnostics_out.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
diagnostics_out.f: TANPHIATV_MACROS.h DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_readparms.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_readparms.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_readparms.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h DIAGSTATS_REGIONS.h
diagnostics_read_pickup.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_read_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_read_pickup.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_scale_fill.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_scale_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_scale_fill.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_scale_fill_rs.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_scale_fill_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_scale_fill_rs.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_setdiag.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_setdiag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_setdiag.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_set_levels.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_set_levels.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_set_levels.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_set_levels.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_set_pointers.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_set_pointers.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_set_pointers.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_sum_levels.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_sum_levels.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_sum_levels.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diagnostics_sum_levels.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
diagnostics_sum_levels.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diagnostics_sum_levels.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
diagnostics_sum_levels.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
diagnostics_sum_levels.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diagnostics_sum_levels.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diagnostics_sum_levels.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diagnostics_sum_levels.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagnostics_sum_levels.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
diagnostics_sum_levels.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
diagnostics_sum_levels.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
diagnostics_sum_levels.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diagnostics_sum_levels.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_summary.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_summary.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_summary.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_summary.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_switch_onoff.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_switch_onoff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_switch_onoff.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_switch_onoff.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_utils.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_utils.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_utils.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagnostics_write.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_write.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagnostics_write.f: DIAGNOSTICS_SIZE.h PARAMS.h PARAMS_MACROS.h
diagnostics_write.f: FCORI_MACROS.h DIAGNOSTICS.h
diagnostics_write_pickup.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagnostics_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagnostics_write_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagnostics_write_pickup.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_ascii_out.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_ascii_out.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagstats_ascii_out.f: EESUPPORT.h
diagstats_ascii_out.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
diagstats_ascii_out.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_calc.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_calc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_clear.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_clear.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_clear.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_close_io.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_close_io.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagstats_close_io.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagstats_close_io.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_fill.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_fill.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_global.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_global.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_global.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_ini_io.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_ini_io.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagstats_ini_io.f: EESUPPORT.h
diagstats_ini_io.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
diagstats_ini_io.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagstats_ini_io.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_local.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_local.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_local.f: DIAGNOSTICS_SIZE.h DIAGSTATS_REGIONS.h PARAMS.h
diagstats_local.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagstats_local.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagstats_local.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagstats_local.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagstats_local.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diagstats_local.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagstats_local.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diagstats_local.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
diagstats_local.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diagstats_local.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
diagstats_local.f: TANPHIATV_MACROS.h
diagstats_mnc_out.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_mnc_out.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
diagstats_mnc_out.f: EESUPPORT.h
diagstats_mnc_out.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
diagstats_mnc_out.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diagstats_mnc_out.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
diagstats_mnc_out.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
diagstats_mnc_out.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
diagstats_mnc_out.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diagstats_mnc_out.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diagstats_mnc_out.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagstats_mnc_out.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagstats_mnc_out.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
diagstats_mnc_out.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
diagstats_mnc_out.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DIAGNOSTICS_SIZE.h
diagstats_mnc_out.f: DIAGNOSTICS.h
diagstats_others_calc.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_others_calc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_output.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
diagstats_output.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
diagstats_output.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
diagstats_output.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diagstats_output.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diagstats_output.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diagstats_output.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diagstats_output.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diagstats_output.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diagstats_output.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
diagstats_output.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
diagstats_output.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DIAGNOSTICS_SIZE.h
diagstats_output.f: DIAGNOSTICS.h
diagstats_setdiag.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_setdiag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_setdiag.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_set_pointers.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_set_pointers.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_set_pointers.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
diagstats_set_pointers.f: DIAGSTATS_REGIONS.h
diagstats_set_regions.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diagstats_set_regions.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diagstats_set_regions.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diagstats_set_regions.f: DIAGNOSTICS_SIZE.h DIAGSTATS_REGIONS.h
diag_vegtile_fill.f: DIAG_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
diag_vegtile_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
diag_vegtile_fill.f: DIAGNOSTICS_SIZE.h DIAGNOSTICS.h
dwnslp_apply.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_apply.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
dwnslp_apply.f: PARAMS_MACROS.h FCORI_MACROS.h DWNSLP_SIZE.h DWNSLP_PARAMS.h
dwnslp_apply.f: DWNSLP_VARS.h GAD.h
dwnslp_calc_flow.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_calc_flow.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
dwnslp_calc_flow.f: PARAMS_MACROS.h FCORI_MACROS.h DWNSLP_SIZE.h
dwnslp_calc_flow.f: DWNSLP_PARAMS.h DWNSLP_VARS.h
dwnslp_calc_rho.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_calc_rho.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
dwnslp_calc_rho.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
dwnslp_calc_rho.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
dwnslp_calc_rho.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
dwnslp_calc_rho.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
dwnslp_calc_rho.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
dwnslp_calc_rho.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
dwnslp_calc_rho.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
dwnslp_calc_rho.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
dwnslp_calc_rho.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
dwnslp_calc_rho.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
dwnslp_calc_rho.f: TANPHIATV_MACROS.h
dwnslp_diagnostics_init.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
dwnslp_diagnostics_init.f: GAD.h
dwnslp_init_fixed.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
dwnslp_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
dwnslp_init_fixed.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
dwnslp_init_fixed.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
dwnslp_init_fixed.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
dwnslp_init_fixed.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
dwnslp_init_fixed.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
dwnslp_init_fixed.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
dwnslp_init_fixed.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
dwnslp_init_fixed.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
dwnslp_init_fixed.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
dwnslp_init_fixed.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DWNSLP_SIZE.h
dwnslp_init_fixed.f: DWNSLP_PARAMS.h DWNSLP_VARS.h
dwnslp_init_varia.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
dwnslp_init_varia.f: DWNSLP_SIZE.h DWNSLP_PARAMS.h DWNSLP_VARS.h
dwnslp_readparms.f: DWNSLP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
dwnslp_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
dwnslp_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h DWNSLP_PARAMS.h
exf_ad_dump.f: AD_CONFIG.h PACKAGES_CONFIG.h EXF_OPTIONS.h CPP_OPTIONS.h
exf_ad_dump.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
exf_ad_dump.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
exf_ad_dump.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
exf_ad_dump.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
exf_ad_dump.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_ad_dump.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_ad_dump.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_ad_dump.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_ad_dump.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_ad_dump.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_ad_dump.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_ad_dump.f: TANPHIATV_MACROS.h
exf_adjoint_snapshots_ad.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_adjoint_snapshots_ad.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exf_adjoint_snapshots_ad.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
exf_adjoint_snapshots_ad.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
exf_adjoint_snapshots_ad.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
exf_adjoint_snapshots_ad.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
exf_adjoint_snapshots_ad.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_adjoint_snapshots_ad.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
exf_adjoint_snapshots_ad.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
exf_adjoint_snapshots_ad.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_adjoint_snapshots_ad.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
exf_adjoint_snapshots_ad.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
exf_adjoint_snapshots_ad.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
exf_adjoint_snapshots_ad.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_adjoint_snapshots_ad.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_adjoint_snapshots_ad.f: TANPHIATV_MACROS.h
exf_adjoint_snapshots.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_adjoint_snapshots.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exf_adjoint_snapshots.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
exf_adjoint_snapshots__g.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_adjoint_snapshots__g.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exf_adjoint_snapshots__g.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
exf_bulkformulae.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_bulkformulae.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_bulkformulae.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
exf_bulkformulae.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_bulkformulae.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_bulkformulae.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_bulkformulae.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_bulkformulae.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_bulkformulae.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
exf_bulkformulae.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
exf_bulkformulae.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
exf_bulkformulae.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
exf_bulkformulae.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EXF_PARAM.h
exf_bulkformulae.f: EXF_FIELDS.h EXF_CONSTANTS.h
exf_check.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_check.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h PARAMS_MACROS.h
exf_check.f: FCORI_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h
exf_check_range.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_check_range.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h FFIELDS.h
exf_check_range.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
exf_check_range.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
exf_check_range.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
exf_check_range.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
exf_check_range.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
exf_check_range.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
exf_check_range.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
exf_check_range.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
exf_check_range.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
exf_check_range.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EXF_PARAM.h
exf_check_range.f: EXF_CONSTANTS.h EXF_FIELDS.h
exf_diagnostics_fill.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_diagnostics_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
exf_diagnostics_fill.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
exf_diagnostics_fill.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
exf_diagnostics_fill.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
exf_diagnostics_fill.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
exf_diagnostics_fill.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
exf_diagnostics_fill.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_diagnostics_fill.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
exf_diagnostics_fill.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
exf_diagnostics_fill.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_diagnostics_fill.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_diagnostics_fill.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_diagnostics_fill.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_diagnostics_fill.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h
exf_diagnostics_fill.f: EXF_CONSTANTS.h
exf_diagnostics_init.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h EXF_PARAM.h
exf_filter_rl.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_filter_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h GRID.h
exf_filter_rl.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_filter_rl.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_filter_rl.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_filter_rl.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_filter_rl.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_filter_rl.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_filter_rl.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_filter_rl.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_filter_rl.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_filter_rl.f: TANPHIATV_MACROS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
exf_filter_rl.f: EXF_CONSTANTS.h EXF_PARAM.h
exf_filter_rs.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_filter_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h GRID.h
exf_filter_rs.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_filter_rs.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_filter_rs.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_filter_rs.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_filter_rs.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_filter_rs.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_filter_rs.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_filter_rs.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_filter_rs.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_filter_rs.f: TANPHIATV_MACROS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
exf_filter_rs.f: EXF_CONSTANTS.h EXF_PARAM.h
exf_getclim.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_getclim.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h GRID.h GRID_MACROS.h
exf_getclim.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
exf_getclim.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
exf_getclim.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_getclim.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_getclim.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_getclim.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_getclim.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_getclim.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_getclim.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_getclim.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h EXF_FIELDS.h
exf_getffieldrec.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_getffieldrec.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h cal.h
exf_getffieldrec.f: EXF_PARAM.h
exf_getffields.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_getffields.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_getffields.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
exf_getffields.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_getffields.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_getffields.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_getffields.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_getffields.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_getffields.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_getffields.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_getffields.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_getffields.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_getffields.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h EXF_CONSTANTS.h
exf_getforcing.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_getforcing.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_getforcing.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
exf_getforcing.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
exf_getforcing.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
exf_getforcing.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_getforcing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_getforcing.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_getforcing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_getforcing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_getforcing.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_getforcing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_getforcing.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h EXF_CONSTANTS.h
exf_getsurfacefluxes.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_getsurfacefluxes.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
exf_getsurfacefluxes.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
exf_getsurfacefluxes.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_getsurfacefluxes.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_getsurfacefluxes.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
exf_getsurfacefluxes.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
exf_getsurfacefluxes.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
exf_getsurfacefluxes.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_getsurfacefluxes.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
exf_getsurfacefluxes.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
exf_getsurfacefluxes.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
exf_getsurfacefluxes.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
exf_getsurfacefluxes.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
exf_getsurfacefluxes.f: EXF_FIELDS.h EXF_PARAM.h
exf_getyearlyfieldname.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_getyearlyfieldname.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
exf_init.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_init.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h GRID.h GRID_MACROS.h
exf_init.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
exf_init.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
exf_init.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
exf_init.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
exf_init.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
exf_init.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
exf_init.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
exf_init.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
exf_init.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h cal.h EXF_PARAM.h
exf_init.f: EXF_FIELDS.h
exf_init_fixed.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h OBCS_OPTIONS.h EEPARAMS.h
exf_init_fixed.f: SIZE.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h cal.h
exf_init_fixed.f: EXF_PARAM.h EXF_CONSTANTS.h OBCS.h
exf_interp.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_interp.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
exf_interp.f: FCORI_MACROS.h
exf_interp_read.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_interp_read.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exf_interp_read.f: EXF_PARAM.h EESUPPORT.h
exf_interp_read.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exf_interp_read.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
exf_mapfields.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_mapfields.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_mapfields.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h GRID.h
exf_mapfields.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_mapfields.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_mapfields.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_mapfields.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_mapfields.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_mapfields.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_mapfields.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_mapfields.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_mapfields.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_mapfields.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h EXF_FIELDS.h
exf_monitor.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_monitor.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
exf_monitor.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
exf_monitor.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
exf_monitor.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
exf_monitor.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
exf_monitor.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
exf_monitor.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
exf_monitor.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
exf_monitor.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_monitor.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_monitor.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h MONITOR.h
exf_radiation.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_radiation.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_radiation.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
exf_radiation.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_radiation.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_radiation.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_radiation.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_radiation.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_radiation.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_radiation.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_radiation.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_radiation.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_radiation.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h EXF_CONSTANTS.h
exf_readparms.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h
exf_set_gen.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_set_gen.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h PARAMS_MACROS.h
exf_set_gen.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
exf_set_gen.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
exf_set_gen.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
exf_set_gen.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
exf_set_gen.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
exf_set_gen.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
exf_set_gen.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
exf_set_gen.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_set_gen.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_set_gen.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h
exf_set_obcs.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_set_obcs.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h GRID.h GRID_MACROS.h
exf_set_obcs.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
exf_set_obcs.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
exf_set_obcs.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_set_obcs.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_set_obcs.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_set_obcs.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_set_obcs.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_set_obcs.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_set_obcs.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_set_obcs.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h
exf_set_runoff.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_set_runoff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_set_runoff.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
exf_set_runoff.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
exf_set_runoff.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
exf_set_runoff.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_set_runoff.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_set_runoff.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_set_runoff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_set_runoff.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_set_runoff.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_set_runoff.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_set_runoff.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_CONSTANTS.h
exf_set_uv.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_set_uv.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h PARAMS_MACROS.h
exf_set_uv.f: FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h DXC_MACROS.h
exf_set_uv.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
exf_set_uv.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
exf_set_uv.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
exf_set_uv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
exf_set_uv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
exf_set_uv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
exf_set_uv.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
exf_set_uv.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
exf_set_uv.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h
exf_set_uv.f: EXF_CONSTANTS.h
exf_summary.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_summary.f: CPP_EEMACROS.h EEPARAMS.h SIZE.h cal.h EXF_CONSTANTS.h
exf_summary.f: EXF_PARAM.h
exf_swapffields.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_swapffields.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
exf_wind.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
exf_wind.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
exf_wind.f: FCORI_MACROS.h EXF_PARAM.h EXF_FIELDS.h EXF_CONSTANTS.h
exf_zenithangle.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_zenithangle.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
exf_zenithangle.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
exf_zenithangle.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
exf_zenithangle.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
exf_zenithangle.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
exf_zenithangle.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_zenithangle.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
exf_zenithangle.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_zenithangle.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
exf_zenithangle.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
exf_zenithangle.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
exf_zenithangle.f: TANPHIATV_MACROS.h EXF_PARAM.h EXF_FIELDS.h
exf_zenithangle.f: EXF_CONSTANTS.h cal.h
exf_zenithangle_table.f: EXF_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
exf_zenithangle_table.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
exf_zenithangle_table.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
exf_zenithangle_table.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
exf_zenithangle_table.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
exf_zenithangle_table.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
exf_zenithangle_table.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
exf_zenithangle_table.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
exf_zenithangle_table.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
exf_zenithangle_table.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
exf_zenithangle_table.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
exf_zenithangle_table.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
exf_zenithangle_table.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
exf_zenithangle_table.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
exf_zenithangle_table.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EXF_PARAM.h
exf_zenithangle_table.f: EXF_FIELDS.h EXF_CONSTANTS.h
gchem_add_tendency.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_add_tendency.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gchem_add_tendency.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gchem_add_tendency.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gchem_add_tendency.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gchem_add_tendency.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gchem_add_tendency.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gchem_add_tendency.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gchem_add_tendency.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gchem_add_tendency.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gchem_add_tendency.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gchem_add_tendency.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gchem_add_tendency.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gchem_add_tendency.f: DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gchem_add_tendency.f: FCORI_MACROS.h PTRACERS_SIZE.h PTRACERS_FIELDS.h
gchem_add_tendency.f: GCHEM_FIELDS.h
gchem_calc_tendency.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_calc_tendency.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gchem_calc_tendency.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gchem_calc_tendency.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gchem_calc_tendency.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gchem_calc_tendency.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gchem_calc_tendency.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gchem_calc_tendency.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gchem_calc_tendency.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gchem_calc_tendency.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gchem_calc_tendency.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gchem_calc_tendency.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gchem_calc_tendency.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gchem_calc_tendency.f: DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gchem_calc_tendency.f: FCORI_MACROS.h PTRACERS_SIZE.h PTRACERS_PARAMS.h
gchem_calc_tendency.f: PTRACERS_FIELDS.h GCHEM.h GCHEM_FIELDS.h
gchem_check.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gchem_check.f: PARAMS_MACROS.h FCORI_MACROS.h GCHEM.h
gchem_diagnostics_init.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gchem_fields_load.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_fields_load.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h GCHEM.h
gchem_forcing_sep.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_forcing_sep.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gchem_forcing_sep.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gchem_forcing_sep.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gchem_forcing_sep.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gchem_forcing_sep.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gchem_forcing_sep.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gchem_forcing_sep.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gchem_forcing_sep.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gchem_forcing_sep.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gchem_forcing_sep.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gchem_forcing_sep.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
gchem_forcing_sep.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
gchem_forcing_sep.f: GCHEM.h PTRACERS_SIZE.h PTRACERS_FIELDS.h
gchem_init_fixed.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gchem_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h GCHEM.h
gchem_init_vari.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_init_vari.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gchem_init_vari.f: PARAMS_MACROS.h FCORI_MACROS.h GCHEM.h
gchem_output.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gchem_output.f: PARAMS_MACROS.h FCORI_MACROS.h GCHEM.h
gchem_readparms.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gchem_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h GCHEM.h
gchem_write_pickup.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gchem_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gchem_write_pickup.f: GCHEM.h
gad_advection.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_advection.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_advection.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
gad_advection.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_advection.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_advection.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_advection.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_advection.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_advection.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_advection.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_advection.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_advection.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_advection.f: TANPHIATV_MACROS.h GAD.h
gad_biharm_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_biharm_x.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_biharm_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_biharm_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_biharm_x.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_biharm_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_biharm_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_biharm_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_biharm_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_biharm_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_biharm_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_biharm_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_biharm_y.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_biharm_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_biharm_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_biharm_y.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_biharm_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_biharm_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_biharm_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_biharm_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_biharm_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_biharm_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c2_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_c2_adv_r.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_c2_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_c2_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_c2_adv_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c2_adv_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c2_adv_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c2_adv_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_c2_adv_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_c2_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h
gad_c2_adv_r.f: PARAMS_MACROS.h FCORI_MACROS.h
gad_c2_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_c2_adv_x.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_c2_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_c2_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_c2_adv_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c2_adv_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c2_adv_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c2_adv_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_c2_adv_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_c2_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c2_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_c2_adv_y.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_c2_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c2_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_c2_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_c2_adv_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c2_adv_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c2_adv_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c2_adv_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_c2_adv_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_c2_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_c2_impl_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_c2_impl_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_c2_impl_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_c2_impl_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_c2_impl_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_c2_impl_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_c2_impl_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_c2_impl_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_c2_impl_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_c2_impl_r.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_c2_impl_r.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_c2_impl_r.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_c2_impl_r.f: FCORI_MACROS.h
gad_c4_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_c4_adv_r.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_c4_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c4_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_c4_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_c4_adv_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c4_adv_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c4_adv_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c4_adv_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_c4_adv_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_c4_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_c4_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_c4_adv_x.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_c4_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c4_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_c4_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_c4_adv_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c4_adv_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c4_adv_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c4_adv_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_c4_adv_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_c4_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_c4_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_c4_adv_y.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_c4_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_c4_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_c4_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_c4_adv_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_c4_adv_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_c4_adv_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_c4_adv_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_c4_adv_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_c4_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_calc_rhs.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_calc_rhs.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_calc_rhs.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
gad_calc_rhs.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_calc_rhs.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_calc_rhs.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_calc_rhs.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_calc_rhs.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_calc_rhs.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_calc_rhs.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_calc_rhs.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_calc_rhs.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h GAD.h
gad_check.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_check.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_check.f: FCORI_MACROS.h GAD.h
gad_del2.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_del2.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_del2.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gad_del2.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_del2.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_del2.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_del2.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_del2.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
gad_del2.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_del2.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_del2.f: TANPHIATV_MACROS.h
gad_diagnostics_init.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gad_diagnostics_init.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GAD.h
gad_diagnostics_init.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
gad_diagnostics_state.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_diagnostics_state.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gad_diagnostics_state.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gad_diagnostics_state.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_diagnostics_state.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_diagnostics_state.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_diagnostics_state.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_diagnostics_state.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_diagnostics_state.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_diagnostics_state.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_diagnostics_state.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_diagnostics_state.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gad_diagnostics_state.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gad_diagnostics_state.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_diagnostics_state.f: GAD.h GAD_SOM_VARS.h
gad_diff_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_diff_r.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_diff_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_diff_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_diff_r.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_diff_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_diff_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_diff_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_diff_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_diff_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_diff_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h
gad_diff_r.f: PARAMS_MACROS.h FCORI_MACROS.h
gad_diff_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_diff_x.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_diff_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_diff_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_diff_x.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_diff_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_diff_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_diff_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_diff_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_diff_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_diff_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_diff_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_diff_y.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_diff_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_diff_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_diff_y.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_diff_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_diff_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_diff_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_diff_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_diff_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_diff_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_dst2u1_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst2u1_adv_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst2u1_adv_r.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst2u1_adv_r.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst2u1_adv_r.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst2u1_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst2u1_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst2u1_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_adv_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_adv_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst2u1_adv_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst2u1_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst2u1_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst2u1_adv_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst2u1_adv_x.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst2u1_adv_x.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst2u1_adv_x.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst2u1_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst2u1_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst2u1_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_adv_x.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_adv_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst2u1_adv_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst2u1_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst2u1_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst2u1_adv_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst2u1_adv_y.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst2u1_adv_y.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst2u1_adv_y.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst2u1_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst2u1_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst2u1_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_adv_y.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_adv_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst2u1_adv_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst2u1_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst2u1_impl_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst2u1_impl_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst2u1_impl_r.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst2u1_impl_r.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst2u1_impl_r.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_dst2u1_impl_r.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst2u1_impl_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst2u1_impl_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst2u1_impl_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst2u1_impl_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst2u1_impl_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst2u1_impl_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst3_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3_adv_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_dst3_adv_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_dst3_adv_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_dst3_adv_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_dst3_adv_r.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_dst3_adv_r.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_dst3_adv_r.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_dst3_adv_r.f: FCORI_MACROS.h GAD.h
gad_dst3_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3_adv_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_dst3_adv_x.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_dst3_adv_x.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_dst3_adv_x.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_dst3_adv_x.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_dst3_adv_x.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_dst3_adv_x.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_dst3_adv_x.f: FCORI_MACROS.h GAD.h
gad_dst3_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3_adv_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_dst3_adv_y.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_dst3_adv_y.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_dst3_adv_y.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_dst3_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_dst3_adv_y.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_dst3_adv_y.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_dst3_adv_y.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_dst3_adv_y.f: FCORI_MACROS.h GAD.h
gad_dst3fl_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3fl_adv_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst3fl_adv_r.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst3fl_adv_r.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst3fl_adv_r.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3fl_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3fl_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3fl_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_adv_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_adv_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst3fl_adv_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst3fl_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst3fl_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3fl_adv_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst3fl_adv_x.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst3fl_adv_x.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst3fl_adv_x.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3fl_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3fl_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3fl_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_adv_x.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_adv_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst3fl_adv_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst3fl_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst3fl_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3fl_adv_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst3fl_adv_y.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst3fl_adv_y.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst3fl_adv_y.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_dst3fl_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_dst3fl_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_dst3fl_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_adv_y.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_adv_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst3fl_adv_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst3fl_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_dst3fl_impl_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_dst3fl_impl_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_dst3fl_impl_r.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_dst3fl_impl_r.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_dst3fl_impl_r.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_dst3fl_impl_r.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_dst3fl_impl_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gad_dst3fl_impl_r.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_dst3fl_impl_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_dst3fl_impl_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_dst3fl_impl_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_dst3fl_impl_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EEPARAMS.h
gad_dst3fl_impl_r.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GAD.h
gad_exch_som.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_exch_som.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h GAD.h
gad_fluxlimit_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_fluxlimit_adv_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_fluxlimit_adv_r.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_fluxlimit_adv_r.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_fluxlimit_adv_r.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_fluxlimit_adv_r.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_fluxlimit_adv_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_adv_r.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gad_fluxlimit_adv_r.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_adv_r.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
gad_fluxlimit_adv_r.f: GAD_FLUX_LIMITER.h
gad_fluxlimit_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_fluxlimit_adv_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_fluxlimit_adv_x.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_fluxlimit_adv_x.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_fluxlimit_adv_x.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_fluxlimit_adv_x.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_fluxlimit_adv_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_adv_x.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gad_fluxlimit_adv_x.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_adv_x.f: GAD_FLUX_LIMITER.h
gad_fluxlimit_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_fluxlimit_adv_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_fluxlimit_adv_y.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_fluxlimit_adv_y.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_fluxlimit_adv_y.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_fluxlimit_adv_y.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_fluxlimit_adv_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_adv_y.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gad_fluxlimit_adv_y.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_adv_y.f: GAD_FLUX_LIMITER.h
gad_fluxlimit_impl_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_fluxlimit_impl_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gad_fluxlimit_impl_r.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gad_fluxlimit_impl_r.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gad_fluxlimit_impl_r.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gad_fluxlimit_impl_r.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_fluxlimit_impl_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gad_fluxlimit_impl_r.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gad_fluxlimit_impl_r.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_fluxlimit_impl_r.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
gad_fluxlimit_impl_r.f: GAD_FLUX_LIMITER.h
gad_grad_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_grad_x.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h GRID_MACROS.h
gad_grad_x.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_grad_x.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_grad_x.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_grad_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_grad_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_grad_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_grad_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_grad_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_grad_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_grad_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_grad_y.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h GRID_MACROS.h
gad_grad_y.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_grad_y.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_grad_y.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_grad_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_grad_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_grad_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_grad_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_grad_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_grad_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gad_implicit_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_implicit_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_implicit_r.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
gad_implicit_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_implicit_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_implicit_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_implicit_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_implicit_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_implicit_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_implicit_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_implicit_r.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_implicit_r.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_implicit_r.f: TANPHIATV_MACROS.h GAD.h
gad_init_fixed.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h GAD.h
gad_init_varia.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_init_varia.f: PARAMS_MACROS.h FCORI_MACROS.h GAD.h GAD_SOM_VARS.h
gad_os7mp_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_os7mp_adv_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_os7mp_adv_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_os7mp_adv_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_os7mp_adv_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_os7mp_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_os7mp_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_os7mp_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_os7mp_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_os7mp_adv_r.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_os7mp_adv_r.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_os7mp_adv_r.f: TANPHIATV_MACROS.h GAD.h
gad_os7mp_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_os7mp_adv_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_os7mp_adv_x.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_os7mp_adv_x.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_os7mp_adv_x.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_os7mp_adv_x.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_os7mp_adv_x.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_os7mp_adv_x.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_os7mp_adv_x.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_os7mp_adv_x.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_os7mp_adv_x.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_os7mp_adv_x.f: TANPHIATV_MACROS.h GAD.h
gad_os7mp_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_os7mp_adv_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_os7mp_adv_y.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_os7mp_adv_y.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_os7mp_adv_y.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_os7mp_adv_y.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_os7mp_adv_y.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_os7mp_adv_y.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_os7mp_adv_y.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_os7mp_adv_y.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_os7mp_adv_y.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_os7mp_adv_y.f: TANPHIATV_MACROS.h GAD.h
gad_read_pickup.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_read_pickup.f: PARAMS_MACROS.h FCORI_MACROS.h GAD.h GAD_SOM_VARS.h
gad_som_advect.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_advect.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_som_advect.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
gad_som_advect.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_som_advect.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_som_advect.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_som_advect.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_som_advect.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_som_advect.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_som_advect.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_som_advect.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_som_advect.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_som_advect.f: TANPHIATV_MACROS.h GAD.h
gad_som_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_adv_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_som_adv_r.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
gad_som_adv_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_som_adv_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_som_adv_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_som_adv_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_som_adv_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_som_adv_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_som_adv_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_som_adv_r.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_som_adv_r.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_som_adv_r.f: TANPHIATV_MACROS.h GAD.h
gad_som_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_adv_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GAD.h
gad_som_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_adv_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GAD.h
gad_som_exchanges.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_exchanges.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GAD.h
gad_som_exchanges.f: GAD_SOM_VARS.h
gad_som_fill_cs_corner.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_fill_cs_corner.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gad_som_fill_cs_corner.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GAD.h
gad_som_lim_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_lim_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GAD.h
gad_som_prep_cs_corner.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_som_prep_cs_corner.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gad_som_prep_cs_corner.f: GAD.h
gad_u3_adv_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_u3_adv_r.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_u3_adv_r.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_u3_adv_r.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_u3_adv_r.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_u3_adv_r.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_u3_adv_r.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_u3_adv_r.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_u3_adv_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_u3_adv_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_u3_adv_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_u3_adv_x.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_u3_adv_x.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_u3_adv_x.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_u3_adv_x.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_u3_adv_x.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_u3_adv_x.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_u3_adv_x.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_u3_adv_x.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_u3_adv_x.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_u3_adv_x.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_u3_adv_x.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_u3_adv_y.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
gad_u3_adv_y.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
gad_u3_adv_y.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gad_u3_adv_y.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
gad_u3_adv_y.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
gad_u3_adv_y.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gad_u3_adv_y.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
gad_u3_adv_y.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gad_u3_adv_y.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gad_u3_adv_y.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gad_u3_adv_y.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
gad_u3c4_impl_r.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_u3c4_impl_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
gad_u3c4_impl_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gad_u3c4_impl_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gad_u3c4_impl_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gad_u3c4_impl_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gad_u3c4_impl_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gad_u3c4_impl_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
gad_u3c4_impl_r.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
gad_u3c4_impl_r.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gad_u3c4_impl_r.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gad_u3c4_impl_r.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gad_u3c4_impl_r.f: FCORI_MACROS.h GAD.h
gad_valid_advscheme.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_valid_advscheme.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GAD.h
gad_write_pickup.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gad_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gad_write_pickup.f: PARAMS_MACROS.h FCORI_MACROS.h GAD.h GAD_SOM_VARS.h
salt_fill.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
salt_fill.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
salt_fill.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
salt_fill.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
salt_fill.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
salt_fill.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
salt_fill.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
salt_fill.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
salt_fill.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
salt_fill.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
salt_fill.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gmredi_calc_diff.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_calc_diff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gmredi_calc_diff.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
gmredi_calc_diff.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gmredi_calc_diff.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gmredi_calc_diff.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gmredi_calc_diff.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gmredi_calc_diff.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gmredi_calc_diff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_calc_diff.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_calc_diff.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_calc_diff.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_calc_diff.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h GMREDI.h
gmredi_calc_psi_b.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_calc_psi_b.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gmredi_calc_psi_b.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_calc_psi_b.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_calc_psi_b.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_calc_psi_b.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_calc_psi_b.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gmredi_calc_psi_b.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_calc_psi_b.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_calc_psi_b.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_calc_psi_b.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_calc_psi_b.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
gmredi_calc_psi_b.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
gmredi_calc_psi_b.f: GMREDI.h FFIELDS.h
gmredi_calc_tensor.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_calc_tensor.f: CPP_EEOPTIONS.h CPP_EEMACROS.h KPP_OPTIONS.h SIZE.h
gmredi_calc_tensor.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
gmredi_calc_tensor.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
gmredi_calc_tensor.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_calc_tensor.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_calc_tensor.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gmredi_calc_tensor.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gmredi_calc_tensor.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_calc_tensor.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_calc_tensor.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gmredi_calc_tensor.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gmredi_calc_tensor.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gmredi_calc_tensor.f: DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
gmredi_calc_tensor.f: FCORI_MACROS.h GMREDI.h GMREDI_TAVE.h KPP.h
gmredi_calc_uvflow.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_calc_uvflow.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_calc_uvflow.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_calc_uvflow.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_calc_uvflow.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_calc_uvflow.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_calc_uvflow.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_calc_uvflow.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gmredi_calc_uvflow.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gmredi_calc_uvflow.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_calc_uvflow.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_calc_uvflow.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gmredi_calc_uvflow.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gmredi_calc_uvflow.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gmredi_calc_uvflow.f: GMREDI.h
gmredi_calc_wflow.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_calc_wflow.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_calc_wflow.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_calc_wflow.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_calc_wflow.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_calc_wflow.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_calc_wflow.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_calc_wflow.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gmredi_calc_wflow.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_calc_wflow.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_calc_wflow.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_calc_wflow.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_calc_wflow.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GMREDI.h
gmredi_check.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h PTRACERS_OPTIONS.h SIZE.h
gmredi_check.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GMREDI.h
gmredi_check.f: GAD.h PTRACERS_SIZE.h PTRACERS_PARAMS.h
gmredi_diagnostics_fill.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_diagnostics_fill.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_diagnostics_fill.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_diagnostics_fill.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
gmredi_diagnostics_fill.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
gmredi_diagnostics_fill.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gmredi_diagnostics_fill.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gmredi_diagnostics_fill.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_diagnostics_fill.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gmredi_diagnostics_fill.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gmredi_diagnostics_fill.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_diagnostics_fill.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_diagnostics_fill.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gmredi_diagnostics_fill.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
gmredi_diagnostics_fill.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
gmredi_diagnostics_fill.f: TANPHIATV_MACROS.h GMREDI.h
gmredi_diagnostics_init.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
gmredi_init_fixed.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
gmredi_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GMREDI.h
gmredi_init_varia.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_init_varia.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_init_varia.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_init_varia.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_init_varia.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_init_varia.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_init_varia.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gmredi_init_varia.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_init_varia.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_init_varia.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_init_varia.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_init_varia.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GMREDI.h
gmredi_init_varia.f: GMREDI_TAVE.h
gmredi_mnc_init.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_mnc_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gmredi_mnc_init.f: PARAMS_MACROS.h FCORI_MACROS.h GMREDI.h
gmredi_output.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gmredi_output.f: PARAMS_MACROS.h FCORI_MACROS.h GMREDI.h GMREDI_TAVE.h
gmredi_readparms.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
gmredi_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
gmredi_readparms.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
gmredi_readparms.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
gmredi_readparms.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
gmredi_readparms.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
gmredi_readparms.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gmredi_readparms.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_readparms.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_readparms.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_readparms.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_readparms.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GMREDI.h
gmredi_rtransport.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_rtransport.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_rtransport.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_rtransport.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_rtransport.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_rtransport.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_rtransport.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_rtransport.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gmredi_rtransport.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_rtransport.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_rtransport.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_rtransport.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_rtransport.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GMREDI.h GAD.h
gmredi_slope_limit.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_slope_limit.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
gmredi_slope_limit.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_slope_limit.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_slope_limit.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_slope_limit.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_slope_limit.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
gmredi_slope_limit.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
gmredi_slope_limit.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_slope_limit.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_slope_limit.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
gmredi_slope_limit.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
gmredi_slope_limit.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
gmredi_slope_limit.f: EEPARAMS.h GMREDI.h PARAMS.h PARAMS_MACROS.h
gmredi_slope_limit.f: FCORI_MACROS.h
gmredi_slope_psi.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_slope_psi.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GMREDI.h
gmredi_slope_psi.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
gmredi_xtransport.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_xtransport.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_xtransport.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_xtransport.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_xtransport.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_xtransport.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_xtransport.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_xtransport.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gmredi_xtransport.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_xtransport.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_xtransport.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_xtransport.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_xtransport.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GMREDI.h
gmredi_ytransport.f: GMREDI_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
gmredi_ytransport.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gmredi_ytransport.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
gmredi_ytransport.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
gmredi_ytransport.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
gmredi_ytransport.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
gmredi_ytransport.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
gmredi_ytransport.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
gmredi_ytransport.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
gmredi_ytransport.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
gmredi_ytransport.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
gmredi_ytransport.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
gmredi_ytransport.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GMREDI.h
kpp_calc_diff_ptr.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_calc_diff_ptr.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
kpp_calc_diff_ptr.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
kpp_calc_diff_ptr.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
kpp_calc_diff_ptr.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
kpp_calc_diff_ptr.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
kpp_calc_diff_ptr.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
kpp_calc_diff_ptr.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
kpp_calc_diff_ptr.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
kpp_calc_diff_ptr.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
kpp_calc_diff_ptr.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
kpp_calc_diff_ptr.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
kpp_calc_diff_ptr.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h KPP.h
kpp_calc_diff_s.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_calc_diff_s.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_calc_diff_s.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
kpp_calc_diff_s.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
kpp_calc_diff_s.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
kpp_calc_diff_s.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_calc_diff_s.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_calc_diff_s.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_calc_diff_s.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_calc_diff_s.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_calc_diff_s.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_calc_diff_s.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_calc_diff_s.f: TANPHIATV_MACROS.h KPP.h
kpp_calc_diff_t.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_calc_diff_t.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_calc_diff_t.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
kpp_calc_diff_t.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
kpp_calc_diff_t.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
kpp_calc_diff_t.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_calc_diff_t.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_calc_diff_t.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_calc_diff_t.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_calc_diff_t.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_calc_diff_t.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_calc_diff_t.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_calc_diff_t.f: TANPHIATV_MACROS.h KPP.h
kpp_calc.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
kpp_calc.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
kpp_calc.f: FCORI_MACROS.h DYNVARS.h KPP.h KPP_PARAMS.h FFIELDS.h GRID.h
kpp_calc.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
kpp_calc.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
kpp_calc.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
kpp_calc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
kpp_calc.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
kpp_calc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
kpp_calc.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
kpp_calc.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
kpp_calc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h SHELFICE.h
kpp_calc.f: EXF_FIELDS.h SEAICE.h
kpp_calc_visc.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_calc_visc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_calc_visc.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
kpp_calc_visc.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
kpp_calc_visc.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
kpp_calc_visc.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_calc_visc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_calc_visc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_calc_visc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_calc_visc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_calc_visc.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_calc_visc.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_calc_visc.f: TANPHIATV_MACROS.h KPP.h
kpp_check.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
kpp_check.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
kpp_check.f: FCORI_MACROS.h KPP_PARAMS.h
kpp_diagnostics_init.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
kpp_diagnostics_init.f: GAD.h
kpp_do_exch.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
kpp_do_exch.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h KPP.h
kpp_forcing_surf.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_forcing_surf.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_forcing_surf.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
kpp_forcing_surf.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
kpp_forcing_surf.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
kpp_forcing_surf.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_forcing_surf.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_forcing_surf.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_forcing_surf.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
kpp_forcing_surf.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
kpp_forcing_surf.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
kpp_forcing_surf.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
kpp_forcing_surf.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
kpp_forcing_surf.f: KPP_PARAMS.h
kpp_init_fixed.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
kpp_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
kpp_init_fixed.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
kpp_init_fixed.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
kpp_init_fixed.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_init_fixed.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_init_fixed.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_init_fixed.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_init_fixed.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_init_fixed.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_init_fixed.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_init_fixed.f: TANPHIATV_MACROS.h KPP_PARAMS.h
kpp_init_varia.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_init_varia.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
kpp_init_varia.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
kpp_init_varia.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
kpp_init_varia.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_init_varia.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_init_varia.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_init_varia.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_init_varia.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_init_varia.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_init_varia.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_init_varia.f: TANPHIATV_MACROS.h GAD.h KPP.h KPP_PARAMS.h
kpp_output.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
kpp_output.f: CPP_EEMACROS.h GMREDI_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_output.f: PARAMS_MACROS.h FCORI_MACROS.h KPP.h KPP_PARAMS.h KPP_TAVE.h
kpp_output.f: GMREDI.h
kpp_readparms.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
kpp_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h KPP_PARAMS.h
kpp_routines.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
kpp_routines.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
kpp_routines.f: FCORI_MACROS.h KPP_PARAMS.h GRID.h GRID_MACROS.h DXC_MACROS.h
kpp_routines.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
kpp_routines.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
kpp_routines.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
kpp_routines.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
kpp_routines.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
kpp_routines.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
kpp_routines.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
kpp_routines.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
kpp_routines.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
kpp_transport_ptr.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_transport_ptr.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GMREDI_OPTIONS.h SIZE.h
kpp_transport_ptr.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
kpp_transport_ptr.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
kpp_transport_ptr.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
kpp_transport_ptr.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
kpp_transport_ptr.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
kpp_transport_ptr.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
kpp_transport_ptr.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
kpp_transport_ptr.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
kpp_transport_ptr.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
kpp_transport_ptr.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
kpp_transport_ptr.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h FFIELDS.h KPP.h
kpp_transport_ptr.f: KPP_PARAMS.h PTRACERS_SIZE.h PTRACERS_FIELDS.h GMREDI.h
kpp_transport_s.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_transport_s.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GMREDI_OPTIONS.h SIZE.h
kpp_transport_s.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
kpp_transport_s.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
kpp_transport_s.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
kpp_transport_s.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_transport_s.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_transport_s.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_transport_s.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_transport_s.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_transport_s.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_transport_s.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_transport_s.f: TANPHIATV_MACROS.h FFIELDS.h KPP.h KPP_PARAMS.h GMREDI.h
kpp_transport_t.f: KPP_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
kpp_transport_t.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GMREDI_OPTIONS.h SIZE.h
kpp_transport_t.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
kpp_transport_t.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
kpp_transport_t.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
kpp_transport_t.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
kpp_transport_t.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
kpp_transport_t.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
kpp_transport_t.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
kpp_transport_t.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
kpp_transport_t.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
kpp_transport_t.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
kpp_transport_t.f: TANPHIATV_MACROS.h FFIELDS.h KPP.h KPP_PARAMS.h GMREDI.h
mdsio_buffertorl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
mdsio_buffertors.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
mdsio_facef_read.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_facef_read.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_gl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
mdsio_gl.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
mdsio_gl.f: FCORI_MACROS.h
mdsio_gl_slice.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_gl_slice.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mdsio_gl_slice.f: PARAMS_MACROS.h FCORI_MACROS.h
mdsio_pass_r4torl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_pass_r4torl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
mdsio_pass_r4tors.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_pass_r4tors.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
mdsio_pass_r8torl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_pass_r8torl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
mdsio_pass_r8tors.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_pass_r8tors.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
mdsio_rd_rec_rl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_rd_rec_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
mdsio_rd_rec_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
mdsio_rd_rec_rs.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_rd_rec_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
mdsio_rd_rec_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
mdsio_read_field.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_read_field.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mdsio_read_field.f: PARAMS_MACROS.h FCORI_MACROS.h EEBUFF_SCPU.h
mdsio_read_field.f: MDSIO_BUFF_3D.h
mdsio_read_meta.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_read_meta.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mdsio_read_meta.f: PARAMS_MACROS.h FCORI_MACROS.h
mdsio_read_section.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_read_section.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_read_section.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mdsio_readvec_loc.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_readvec_loc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_readvec_loc.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h MDSIO_BUFF_3D.h
mdsio_readvector.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_readvector.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mdsio_readvector.f: PARAMS_MACROS.h FCORI_MACROS.h EESUPPORT.h
mdsio_readvector.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
mdsio_read_whalos.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_read_whalos.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
mdsio_read_whalos.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mdsio_rw_field.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_rw_field.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_rw_slice.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_rw_slice.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_seg4torl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_seg4torl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_seg4tors.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_seg4tors.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_seg8torl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_seg8torl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_seg8tors.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_seg8tors.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_segxtorx_2d.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_segxtorx_2d.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mdsio_write_field.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_write_field.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_write_field.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EEBUFF_SCPU.h
mdsio_write_field.f: MDSIO_BUFF_3D.h
mdsio_writelocal.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_writelocal.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mdsio_writelocal.f: PARAMS_MACROS.h FCORI_MACROS.h MDSIO_BUFF_3D.h
mdsio_write_meta.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_write_meta.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_write_section.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_write_section.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_write_section.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mdsio_writevec_loc.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_writevec_loc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_writevec_loc.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h MDSIO_BUFF_3D.h
mdsio_writevector.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_writevector.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_writevector.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EESUPPORT.h
mdsio_writevector.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
mdsio_write_whalos.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_write_whalos.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
mdsio_write_whalos.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mdsio_wr_metafiles.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_wr_metafiles.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsio_wr_metafiles.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mdsio_wr_rec_rl.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_wr_rec_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
mdsio_wr_rec_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
mdsio_wr_rec_rs.f: MDSIO_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mdsio_wr_rec_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
mdsio_wr_rec_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
mom_calc_absvort3.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_absvort3.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_calc_absvort3.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_calc_absvort3.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_calc_absvort3.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_calc_absvort3.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_calc_absvort3.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_calc_absvort3.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_calc_absvort3.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_calc_absvort3.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_absvort3.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_calc_absvort3.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_calc_absvort3.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_hdiv.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_hdiv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_calc_hdiv.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_calc_hdiv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_hdiv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_calc_hdiv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_hdiv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_hdiv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_hdiv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_hdiv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_calc_hdiv.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_calc_hdiv.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_calc_hdiv.f: TANPHIATV_MACROS.h
mom_calc_hfacz.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_hfacz.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_calc_hfacz.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_calc_hfacz.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_hfacz.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_calc_hfacz.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_hfacz.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_hfacz.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_hfacz.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_hfacz.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_calc_hfacz.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_calc_hfacz.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_calc_hfacz.f: TANPHIATV_MACROS.h
mom_calc_ke.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_ke.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
mom_calc_ke.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_ke.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_calc_ke.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_ke.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_ke.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_ke.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_ke.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_calc_ke.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_calc_ke.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_calc_ke.f: TANPHIATV_MACROS.h
mom_calc_relvort3.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_relvort3.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_calc_relvort3.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_calc_relvort3.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_calc_relvort3.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_calc_relvort3.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_calc_relvort3.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_calc_relvort3.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_calc_relvort3.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_calc_relvort3.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_relvort3.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_calc_relvort3.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_calc_relvort3.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_strain.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_strain.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_calc_strain.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_calc_strain.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_strain.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_calc_strain.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_strain.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_strain.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_strain.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_strain.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_calc_strain.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_calc_strain.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_calc_strain.f: TANPHIATV_MACROS.h
mom_calc_tension.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_tension.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_calc_tension.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_calc_tension.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_tension.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_calc_tension.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_tension.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_tension.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_tension.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_calc_tension.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_calc_tension.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_calc_tension.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_calc_tension.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_calc_visc.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_visc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
mom_calc_visc.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_calc_visc.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_calc_visc.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_visc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_visc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_visc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_visc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_calc_visc.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_calc_visc.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_calc_visc.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
mom_calc_visc.f: FCORI_MACROS.h MOM_VISC.h
mom_diagnostics_init.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_diagnostics_init.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mom_hdissip.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_hdissip.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_hdissip.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_hdissip.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_hdissip.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_hdissip.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_hdissip.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_hdissip.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_hdissip.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_hdissip.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_hdissip.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_hdissip.f: TANPHIATV_MACROS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mom_init_fixed.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_init_fixed.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_init_fixed.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_init_fixed.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_init_fixed.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_init_fixed.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_init_fixed.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_init_fixed.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_init_fixed.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_init_fixed.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_init_fixed.f: TANPHIATV_MACROS.h SURFACE.h MOM_VISC.h
mom_quasihydrostatic.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_quasihydrostatic.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_quasihydrostatic.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_quasihydrostatic.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_quasihydrostatic.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_quasihydrostatic.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_quasihydrostatic.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_quasihydrostatic.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_quasihydrostatic.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_quasihydrostatic.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_quasihydrostatic.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_quasihydrostatic.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_quasihydrostatic.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_quasihydrostatic.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_bottomdrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_bottomdrag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_bottomdrag.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_bottomdrag.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_bottomdrag.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_bottomdrag.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_bottomdrag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_bottomdrag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_bottomdrag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_bottomdrag.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_bottomdrag.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_u_bottomdrag.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_u_bottomdrag.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_coriolis_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_coriolis_nh.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_u_coriolis_nh.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_u_coriolis_nh.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_u_coriolis_nh.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_u_coriolis_nh.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_u_coriolis_nh.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_coriolis_nh.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_u_coriolis_nh.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_coriolis_nh.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_coriolis_nh.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_u_coriolis_nh.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_u_coriolis_nh.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_implicit_r.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_implicit_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_implicit_r.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_implicit_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_implicit_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_implicit_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_implicit_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_implicit_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_implicit_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_implicit_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_implicit_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_u_implicit_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_u_implicit_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
mom_u_metric_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_metric_nh.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_metric_nh.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_metric_nh.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_metric_nh.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_metric_nh.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_metric_nh.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_metric_nh.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_metric_nh.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_metric_nh.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_metric_nh.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_metric_nh.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_metric_nh.f: TANPHIATV_MACROS.h
mom_u_rviscflux.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_rviscflux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_rviscflux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_rviscflux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_rviscflux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_rviscflux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_rviscflux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_rviscflux.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_rviscflux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_rviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_rviscflux.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_rviscflux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_rviscflux.f: TANPHIATV_MACROS.h
mom_u_sidedrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_sidedrag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_sidedrag.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_sidedrag.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_sidedrag.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_sidedrag.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_sidedrag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_sidedrag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_sidedrag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_sidedrag.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_sidedrag.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_sidedrag.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_sidedrag.f: TANPHIATV_MACROS.h SURFACE.h
mom_v_bottomdrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_bottomdrag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_bottomdrag.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_bottomdrag.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_bottomdrag.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_bottomdrag.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_bottomdrag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_bottomdrag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_bottomdrag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_bottomdrag.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_bottomdrag.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_v_bottomdrag.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_v_bottomdrag.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_coriolis_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_coriolis_nh.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_v_coriolis_nh.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_v_coriolis_nh.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_v_coriolis_nh.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_v_coriolis_nh.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_v_coriolis_nh.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_coriolis_nh.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_v_coriolis_nh.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_coriolis_nh.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_coriolis_nh.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_v_coriolis_nh.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_v_coriolis_nh.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_implicit_r.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_implicit_r.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_implicit_r.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_implicit_r.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_implicit_r.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_implicit_r.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_implicit_r.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_implicit_r.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_implicit_r.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_implicit_r.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_implicit_r.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_v_implicit_r.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_v_implicit_r.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
mom_v_metric_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_metric_nh.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_metric_nh.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_metric_nh.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_metric_nh.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_metric_nh.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_metric_nh.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_metric_nh.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_metric_nh.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_metric_nh.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_metric_nh.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_metric_nh.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_metric_nh.f: TANPHIATV_MACROS.h
mom_v_rviscflux.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_rviscflux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_rviscflux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_rviscflux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_rviscflux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_rviscflux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_rviscflux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_rviscflux.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_rviscflux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_rviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_rviscflux.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_rviscflux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_rviscflux.f: TANPHIATV_MACROS.h
mom_v_sidedrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_sidedrag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_sidedrag.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_sidedrag.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_sidedrag.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_sidedrag.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_sidedrag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_sidedrag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_sidedrag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_sidedrag.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_sidedrag.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_sidedrag.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_sidedrag.f: TANPHIATV_MACROS.h SURFACE.h
mom_w_coriolis_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_w_coriolis_nh.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_w_coriolis_nh.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_w_coriolis_nh.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_w_coriolis_nh.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_w_coriolis_nh.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_w_coriolis_nh.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_w_coriolis_nh.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_w_coriolis_nh.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_w_coriolis_nh.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_w_coriolis_nh.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_w_coriolis_nh.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_w_coriolis_nh.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_w_metric_nh.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_w_metric_nh.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_w_metric_nh.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_w_metric_nh.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_w_metric_nh.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_w_metric_nh.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_w_metric_nh.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_w_metric_nh.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_w_metric_nh.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_w_metric_nh.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_w_metric_nh.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_w_metric_nh.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_w_metric_nh.f: TANPHIATV_MACROS.h
mom_w_sidedrag.f: MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_w_sidedrag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_w_sidedrag.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_w_sidedrag.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_w_sidedrag.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_w_sidedrag.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_w_sidedrag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_w_sidedrag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_w_sidedrag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_w_sidedrag.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_w_sidedrag.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_w_sidedrag.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_w_sidedrag.f: TANPHIATV_MACROS.h SURFACE.h
mom_calc_rtrans.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_calc_rtrans.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h DYNVARS.h EEPARAMS.h
mom_calc_rtrans.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_calc_rtrans.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_calc_rtrans.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_calc_rtrans.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_calc_rtrans.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_calc_rtrans.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_calc_rtrans.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_calc_rtrans.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_calc_rtrans.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_calc_rtrans.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_calc_rtrans.f: TANPHIATV_MACROS.h SURFACE.h MOM_FLUXFORM.h
mom_fluxform.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_fluxform.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h DYNVARS.h FFIELDS.h
mom_fluxform.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_fluxform.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_fluxform.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_fluxform.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_fluxform.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_fluxform.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_fluxform.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_fluxform.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_fluxform.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_fluxform.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_fluxform.f: TANPHIATV_MACROS.h SURFACE.h
mom_u_adv_uu.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_adv_uu.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_adv_uu.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_adv_uu.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_adv_uu.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_adv_uu.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_adv_uu.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_adv_uu.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_adv_uu.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_adv_uu.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_adv_uu.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_adv_uu.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_adv_uu.f: TANPHIATV_MACROS.h
mom_u_adv_vu.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_adv_vu.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_adv_vu.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_adv_vu.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_adv_vu.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_adv_vu.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_adv_vu.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_adv_vu.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_adv_vu.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_adv_vu.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_adv_vu.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_adv_vu.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_adv_vu.f: TANPHIATV_MACROS.h
mom_u_adv_wu.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_adv_wu.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_adv_wu.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_adv_wu.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_adv_wu.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_adv_wu.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_adv_wu.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_adv_wu.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_adv_wu.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_adv_wu.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_adv_wu.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_adv_wu.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_adv_wu.f: TANPHIATV_MACROS.h
mom_u_coriolis.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_coriolis.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_coriolis.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_coriolis.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_coriolis.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_coriolis.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_coriolis.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_coriolis.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_coriolis.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_coriolis.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_coriolis.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_coriolis.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_coriolis.f: TANPHIATV_MACROS.h SURFACE.h
mom_u_del2u.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_del2u.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_del2u.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_del2u.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_del2u.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_del2u.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_del2u.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_del2u.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_del2u.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_del2u.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_del2u.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_del2u.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_del2u.f: TANPHIATV_MACROS.h
mom_u_metric_cylinder.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mom_u_metric_cylinder.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mom_u_metric_cylinder.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
mom_u_metric_cylinder.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
mom_u_metric_cylinder.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
mom_u_metric_cylinder.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
mom_u_metric_cylinder.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_metric_cylinder.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_u_metric_cylinder.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_u_metric_cylinder.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_metric_cylinder.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mom_u_metric_cylinder.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
mom_u_metric_cylinder.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_u_metric_cylinder.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_u_metric_sphere.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_metric_sphere.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_u_metric_sphere.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_u_metric_sphere.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_u_metric_sphere.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_u_metric_sphere.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_u_metric_sphere.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_u_metric_sphere.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_u_metric_sphere.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_metric_sphere.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_u_metric_sphere.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_u_metric_sphere.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_u_metric_sphere.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_u_metric_sphere.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_uv_boundary.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_uv_boundary.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_uv_boundary.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_uv_boundary.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_uv_boundary.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_uv_boundary.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_uv_boundary.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_uv_boundary.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_uv_boundary.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_uv_boundary.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_uv_boundary.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_uv_boundary.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_uv_boundary.f: TANPHIATV_MACROS.h
mom_u_xviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_xviscflux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_xviscflux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_xviscflux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_xviscflux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_xviscflux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_xviscflux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_xviscflux.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_xviscflux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_xviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_xviscflux.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_xviscflux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_xviscflux.f: TANPHIATV_MACROS.h
mom_u_yviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_u_yviscflux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_u_yviscflux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_u_yviscflux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_u_yviscflux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_u_yviscflux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_u_yviscflux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_u_yviscflux.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_u_yviscflux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_u_yviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_u_yviscflux.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_u_yviscflux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_u_yviscflux.f: TANPHIATV_MACROS.h
mom_v_adv_uv.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_adv_uv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_adv_uv.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_adv_uv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_adv_uv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_adv_uv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_adv_uv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_adv_uv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_adv_uv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_adv_uv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_adv_uv.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_adv_uv.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_adv_uv.f: TANPHIATV_MACROS.h
mom_v_adv_vv.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_adv_vv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_adv_vv.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_adv_vv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_adv_vv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_adv_vv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_adv_vv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_adv_vv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_adv_vv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_adv_vv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_adv_vv.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_adv_vv.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_adv_vv.f: TANPHIATV_MACROS.h
mom_v_adv_wv.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_adv_wv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_adv_wv.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_adv_wv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_adv_wv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_adv_wv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_adv_wv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_adv_wv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_adv_wv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_adv_wv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_adv_wv.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_adv_wv.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_adv_wv.f: TANPHIATV_MACROS.h
mom_v_coriolis.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_coriolis.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_coriolis.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_coriolis.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_coriolis.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_coriolis.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_coriolis.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_coriolis.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_coriolis.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_coriolis.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_coriolis.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_coriolis.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_coriolis.f: TANPHIATV_MACROS.h SURFACE.h
mom_v_del2v.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_del2v.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_del2v.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_del2v.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_del2v.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_del2v.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_del2v.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_del2v.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_del2v.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_del2v.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_del2v.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_del2v.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_del2v.f: TANPHIATV_MACROS.h
mom_v_metric_cylinder.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
mom_v_metric_cylinder.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mom_v_metric_cylinder.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
mom_v_metric_cylinder.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
mom_v_metric_cylinder.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
mom_v_metric_cylinder.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
mom_v_metric_cylinder.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_metric_cylinder.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_v_metric_cylinder.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_v_metric_cylinder.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_metric_cylinder.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mom_v_metric_cylinder.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
mom_v_metric_cylinder.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_v_metric_cylinder.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_metric_sphere.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_metric_sphere.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_v_metric_sphere.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_v_metric_sphere.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_v_metric_sphere.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_v_metric_sphere.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_v_metric_sphere.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_v_metric_sphere.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_v_metric_sphere.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_metric_sphere.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_v_metric_sphere.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_v_metric_sphere.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_v_metric_sphere.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_v_metric_sphere.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_v_xviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_xviscflux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_xviscflux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_xviscflux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_xviscflux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_xviscflux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_xviscflux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_xviscflux.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_xviscflux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_xviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_xviscflux.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_xviscflux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_xviscflux.f: TANPHIATV_MACROS.h
mom_v_yviscflux.f: MOM_FLUXFORM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_v_yviscflux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mom_v_yviscflux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_v_yviscflux.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_v_yviscflux.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_v_yviscflux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_v_yviscflux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_v_yviscflux.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_v_yviscflux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_v_yviscflux.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_v_yviscflux.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_v_yviscflux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_v_yviscflux.f: TANPHIATV_MACROS.h
mom_vecinv.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vecinv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h DYNVARS.h EEPARAMS.h
mom_vecinv.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
mom_vecinv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vecinv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vecinv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
mom_vecinv.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vecinv.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mom_vecinv.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vecinv.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_vecinv.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_vecinv.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h TIMEAVE_STATV.h
mom_vecinv.f: TIMEAVE_OPTIONS.h
mom_vi_coriolis.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_coriolis.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_coriolis.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_coriolis.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_coriolis.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_coriolis.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_vi_coriolis.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_coriolis.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_coriolis.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_vi_coriolis.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_vi_coriolis.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_vi_coriolis.f: TANPHIATV_MACROS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mom_vi_del2uv.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_del2uv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
mom_vi_del2uv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vi_del2uv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vi_del2uv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_del2uv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_vi_del2uv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_del2uv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_del2uv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_vi_del2uv.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_vi_del2uv.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_vi_del2uv.f: TANPHIATV_MACROS.h EEPARAMS.h
mom_vi_hdissip.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_hdissip.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h
mom_vi_hdissip.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
mom_vi_hdissip.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mom_vi_hdissip.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_hdissip.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_vi_hdissip.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_hdissip.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mom_vi_hdissip.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mom_vi_hdissip.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mom_vi_hdissip.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mom_vi_hdissip.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
mom_vi_hdissip.f: FCORI_MACROS.h
mom_vi_u_coriolis_c4.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_u_coriolis_c4.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_vi_u_coriolis_c4.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_vi_u_coriolis_c4.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_u_coriolis_c4.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_u_coriolis_c4.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vi_u_coriolis_c4.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_u_coriolis_c4.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_vi_u_coriolis_c4.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_vi_u_coriolis_c4.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_u_coriolis.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_u_coriolis.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_u_coriolis.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_u_coriolis.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_u_coriolis.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vi_u_coriolis.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_u_coriolis.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_vi_u_coriolis.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_u_coriolis.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_u_coriolis.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_vi_u_coriolis.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_vi_u_coriolis.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h PARAMS.h
mom_vi_u_coriolis.f: PARAMS_MACROS.h FCORI_MACROS.h
mom_vi_u_grad_ke.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_u_grad_ke.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_u_grad_ke.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_u_grad_ke.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_u_grad_ke.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_u_grad_ke.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_vi_u_grad_ke.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_u_grad_ke.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_u_grad_ke.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_u_grad_ke.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_vi_u_grad_ke.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_vi_u_grad_ke.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_u_vertshear.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_u_vertshear.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_u_vertshear.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_u_vertshear.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_u_vertshear.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vi_u_vertshear.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_u_vertshear.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_u_vertshear.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_u_vertshear.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_u_vertshear.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_u_vertshear.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_vi_u_vertshear.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_vi_u_vertshear.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_u_vertshear.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mom_vi_v_coriolis_c4.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_v_coriolis_c4.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mom_vi_v_coriolis_c4.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
mom_vi_v_coriolis_c4.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_v_coriolis_c4.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_v_coriolis_c4.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vi_v_coriolis_c4.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_v_coriolis_c4.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_vi_v_coriolis_c4.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_vi_v_coriolis_c4.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_v_coriolis.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_v_coriolis.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_v_coriolis.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_v_coriolis.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_v_coriolis.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vi_v_coriolis.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_v_coriolis.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mom_vi_v_coriolis.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_v_coriolis.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_v_coriolis.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_vi_v_coriolis.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_vi_v_coriolis.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h PARAMS.h
mom_vi_v_coriolis.f: PARAMS_MACROS.h FCORI_MACROS.h
mom_vi_v_grad_ke.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_v_grad_ke.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_v_grad_ke.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_v_grad_ke.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_v_grad_ke.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mom_vi_v_grad_ke.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mom_vi_v_grad_ke.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_v_grad_ke.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_v_grad_ke.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_v_grad_ke.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mom_vi_v_grad_ke.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mom_vi_v_grad_ke.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_v_vertshear.f: MOM_VECINV_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mom_vi_v_vertshear.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
mom_vi_v_vertshear.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mom_vi_v_vertshear.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mom_vi_v_vertshear.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
mom_vi_v_vertshear.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mom_vi_v_vertshear.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mom_vi_v_vertshear.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mom_vi_v_vertshear.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mom_vi_v_vertshear.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mom_vi_v_vertshear.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
mom_vi_v_vertshear.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
mom_vi_v_vertshear.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mom_vi_v_vertshear.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
mon_advcfl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_advcfl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h MONITOR.h
mon_advcflw2.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_advcflw2.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h MONITOR.h
mon_advcflw.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_advcflw.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h MONITOR.h
mon_calc_stats_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_calc_stats_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_calc_stats_rs.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_calc_stats_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_init.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
mon_init.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
mon_init.f: FCORI_MACROS.h MONITOR.h
monitor_ad.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
monitor_ad.f: CPP_EEOPTIONS.h CPP_EEMACROS.h AD_CONFIG.h SIZE.h EEPARAMS.h
monitor_ad.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
monitor_ad.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
monitor_ad.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
monitor_ad.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
monitor_ad.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
monitor_ad.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
monitor_ad.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
monitor_ad.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
monitor_ad.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
monitor_ad.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h FFIELDS.h
monitor_ad.f: MONITOR.h
monitor.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
monitor.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
monitor.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
monitor.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
monitor.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
monitor.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
monitor.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
monitor.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
monitor.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
monitor.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
monitor.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
monitor.f: FFIELDS.h MONITOR.h
monitor_g.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
monitor_g.f: CPP_EEOPTIONS.h CPP_EEMACROS.h AD_CONFIG.h SIZE.h EEPARAMS.h
monitor_g.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
monitor_g.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
monitor_g.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
monitor_g.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
monitor_g.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
monitor_g.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
monitor_g.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
monitor_g.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
monitor_g.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
monitor_g.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h FFIELDS.h
monitor_g.f: MONITOR.h
mon_ke.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
mon_ke.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
mon_ke.f: FCORI_MACROS.h DYNVARS.h MONITOR.h GRID.h GRID_MACROS.h
mon_ke.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
mon_ke.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
mon_ke.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
mon_ke.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
mon_ke.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
mon_ke.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
mon_ke.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mon_ke.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mon_ke.f: SURFACE.h
mon_out.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
mon_out.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
mon_out.f: FCORI_MACROS.h MONITOR.h
mon_printstats_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_printstats_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_printstats_rl.f: MONITOR.h
mon_printstats_rs.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_printstats_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_printstats_rs.f: MONITOR.h
mon_set_iounit.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_set_iounit.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h MONITOR.h
mon_set_pref.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_set_pref.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h MONITOR.h
mon_stats_latbnd_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_stats_latbnd_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_stats_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_stats_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_stats_rs.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_stats_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_surfcor.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_surfcor.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mon_surfcor.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h SURFACE.h GRID.h
mon_surfcor.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mon_surfcor.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
mon_surfcor.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
mon_surfcor.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
mon_surfcor.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
mon_surfcor.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
mon_surfcor.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
mon_surfcor.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
mon_surfcor.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
mon_surfcor.f: TANPHIATV_MACROS.h MONITOR.h
mon_vort3.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_vort3.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
mon_vort3.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h MONITOR.h GRID.h
mon_vort3.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
mon_vort3.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
mon_vort3.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
mon_vort3.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
mon_vort3.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
mon_vort3.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
mon_vort3.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
mon_vort3.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
mon_vort3.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
mon_writestats_rl.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_writestats_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_writestats_rl.f: MONITOR.h
mon_writestats_rs.f: MONITOR_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mon_writestats_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mon_writestats_rs.f: MONITOR.h
obcs_apply_eta.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_eta.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_eta.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_eta.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_eta.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_eta.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_eta.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_eta.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_eta.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_apply_eta.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_apply_eta.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_apply_eta.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_apply_eta.f: TANPHIATV_MACROS.h SURFACE.h OBCS.h
obcs_apply_ptracer.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_ptracer.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_apply_ptracer.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_apply_ptracer.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
obcs_apply_ptracer.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_apply_ptracer.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
obcs_apply_ptracer.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_apply_ptracer.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
obcs_apply_ptracer.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_ptracer.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_apply_ptracer.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_apply_ptracer.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
obcs_apply_ptracer.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
obcs_apply_ptracer.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
obcs_apply_ptracer.f: OBCS.h PTRACERS_SIZE.h OBCS_PTRACERS.h
obcs_apply_r_star.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_r_star.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_apply_r_star.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_apply_r_star.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
obcs_apply_r_star.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_apply_r_star.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
obcs_apply_r_star.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_apply_r_star.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
obcs_apply_r_star.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_apply_r_star.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_apply_r_star.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
obcs_apply_r_star.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
obcs_apply_r_star.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h OBCS.h
obcs_apply_seaice.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_seaice.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_apply_seaice.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_apply_seaice.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
obcs_apply_seaice.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_apply_seaice.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
obcs_apply_seaice.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_apply_seaice.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
obcs_apply_seaice.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_apply_seaice.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_apply_seaice.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
obcs_apply_seaice.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
obcs_apply_seaice.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h OBCS.h
obcs_apply_seaice.f: SEAICE_OPTIONS.h SEAICE.h SEAICE_PARAMS.h
obcs_apply_sloc.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_sloc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_sloc.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_sloc.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_sloc.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_sloc.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_sloc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_sloc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_sloc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_apply_sloc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_apply_sloc.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_apply_sloc.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_apply_sloc.f: TANPHIATV_MACROS.h OBCS.h
obcs_apply_surf_dr.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_surf_dr.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_apply_surf_dr.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_apply_surf_dr.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
obcs_apply_surf_dr.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_apply_surf_dr.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
obcs_apply_surf_dr.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_apply_surf_dr.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
obcs_apply_surf_dr.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_surf_dr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_apply_surf_dr.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_apply_surf_dr.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
obcs_apply_surf_dr.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
obcs_apply_surf_dr.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
obcs_apply_surf_dr.f: OBCS.h
obcs_apply_tloc.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_tloc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_tloc.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_tloc.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_tloc.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_tloc.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_tloc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_tloc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_tloc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_apply_tloc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_apply_tloc.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_apply_tloc.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_apply_tloc.f: TANPHIATV_MACROS.h OBCS.h
obcs_apply_ts.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_ts.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_ts.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_ts.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_ts.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_ts.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_ts.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_ts.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_ts.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_apply_ts.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_apply_ts.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_apply_ts.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_apply_ts.f: TANPHIATV_MACROS.h OBCS.h
obcs_apply_uv.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_uv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_uv.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_uv.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_uv.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_uv.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_uv.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_uv.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_uv.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_apply_uv.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_apply_uv.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_apply_uv.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_apply_uv.f: TANPHIATV_MACROS.h OBCS.h
obcs_apply_uvice.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_uvice.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_uvice.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_uvice.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_uvice.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_uvice.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_uvice.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_uvice.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_uvice.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_apply_uvice.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_apply_uvice.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
obcs_apply_uvice.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
obcs_apply_uvice.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h OBCS.h
obcs_apply_w.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_apply_w.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_apply_w.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_apply_w.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_apply_w.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_apply_w.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_apply_w.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_apply_w.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_apply_w.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_apply_w.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_apply_w.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_apply_w.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_apply_w.f: TANPHIATV_MACROS.h OBCS.h
obcs_calc.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
obcs_calc.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
obcs_calc.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
obcs_calc.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_calc.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_calc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_calc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_calc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_calc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_calc.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
obcs_calc.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h OBCS.h
obcs_calc.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
obcs_calc.f: OBCS_PTRACERS.h
obcs_calc_stevens.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_calc_stevens.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_calc_stevens.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_calc_stevens.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
obcs_calc_stevens.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_calc_stevens.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
obcs_calc_stevens.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_calc_stevens.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
obcs_calc_stevens.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_calc_stevens.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_calc_stevens.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
obcs_calc_stevens.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
obcs_calc_stevens.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h OBCS.h DYNVARS.h
obcs_calc_stevens.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
obcs_calc_stevens.f: OBCS_PTRACERS.h
obcs_check_depths.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_check_depths.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_check_depths.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_check_depths.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
obcs_check_depths.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
obcs_check_depths.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
obcs_check_depths.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_check_depths.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
obcs_check_depths.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_check_depths.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_check_depths.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
obcs_check_depths.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
obcs_check_depths.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h OBCS.h
obcs_check.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
obcs_check.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
obcs_check.f: FCORI_MACROS.h OBCS.h
obcs_copy_tracer.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_copy_tracer.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_copy_tracer.f: PARAMS_MACROS.h FCORI_MACROS.h OBCS.h
obcs_external_fields_load.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_external_fields_load.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_external_fields_load.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
obcs_external_fields_load.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
obcs_external_fields_load.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
obcs_external_fields_load.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_external_fields_load.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_external_fields_load.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
obcs_external_fields_load.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
obcs_external_fields_load.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_external_fields_load.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
obcs_external_fields_load.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
obcs_external_fields_load.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
obcs_external_fields_load.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_external_fields_load.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_external_fields_load.f: TANPHIATV_MACROS.h OBCS.h PTRACERS_SIZE.h
obcs_external_fields_load.f: OBCS_PTRACERS.h PTRACERS_PARAMS.h
obcs_init_fixed.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h OBCS.h GRID.h GRID_MACROS.h
obcs_init_fixed.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_init_fixed.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_init_fixed.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_init_fixed.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_init_fixed.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_init_fixed.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_init_fixed.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_init_fixed.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_init_fixed.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_init_fixed.f: TANPHIATV_MACROS.h
obcs_init_variables.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_init_variables.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_init_variables.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
obcs_init_variables.f: OBCS.h PTRACERS_SIZE.h PTRACERS_PARAMS.h
obcs_init_variables.f: PTRACERS_FIELDS.h OBCS_PTRACERS.h
obcs_output.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
obcs_output.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
obcs_output.f: FCORI_MACROS.h OBCS.h
obcs_prescribe_exchanges.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_prescribe_exchanges.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_prescribe_exchanges.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
obcs_prescribe_exchanges.f: OBCS.h
obcs_prescribe_read.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_prescribe_read.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_prescribe_read.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h OBCS.h
obcs_prescribe_read.f: EXF_PARAM.h PTRACERS_SIZE.h OBCS_PTRACERS.h
obcs_prescribe_read.f: PTRACERS_PARAMS.h
obcs_readparms.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h OBCS.h ORLANSKI.h
obcs_readparms.f: PTRACERS_SIZE.h OBCS_PTRACERS.h
obcs_read_pickup.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
obcs_read_pickup.f: PARAMS_MACROS.h FCORI_MACROS.h OBCS.h ORLANSKI.h
obcs_sponge.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
obcs_sponge.f: CPP_EEMACROS.h AD_CONFIG.h SIZE.h EEPARAMS.h PARAMS.h
obcs_sponge.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
obcs_sponge.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
obcs_sponge.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
obcs_sponge.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
obcs_sponge.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
obcs_sponge.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
obcs_sponge.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
obcs_sponge.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
obcs_sponge.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
obcs_sponge.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
obcs_sponge.f: TANPHIATV_MACROS.h DYNVARS.h OBCS.h
obcs_write_pickup.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
obcs_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
obcs_write_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h RESTART.h OBCS.h
obcs_write_pickup.f: ORLANSKI.h
orlanski_east.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
orlanski_east.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
orlanski_east.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
orlanski_east.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
orlanski_east.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
orlanski_east.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
orlanski_east.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
orlanski_east.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
orlanski_east.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
orlanski_east.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
orlanski_east.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
orlanski_east.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
orlanski_east.f: TANPHIATV_MACROS.h OBCS.h ORLANSKI.h
orlanski_init.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
orlanski_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
orlanski_init.f: PARAMS_MACROS.h FCORI_MACROS.h ORLANSKI.h
orlanski_north.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
orlanski_north.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
orlanski_north.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
orlanski_north.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
orlanski_north.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
orlanski_north.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
orlanski_north.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
orlanski_north.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
orlanski_north.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
orlanski_north.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
orlanski_north.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
orlanski_north.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
orlanski_north.f: TANPHIATV_MACROS.h OBCS.h ORLANSKI.h
orlanski_south.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
orlanski_south.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
orlanski_south.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
orlanski_south.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
orlanski_south.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
orlanski_south.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
orlanski_south.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
orlanski_south.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
orlanski_south.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
orlanski_south.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
orlanski_south.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
orlanski_south.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
orlanski_south.f: TANPHIATV_MACROS.h OBCS.h ORLANSKI.h
orlanski_west.f: OBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
orlanski_west.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
orlanski_west.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
orlanski_west.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
orlanski_west.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
orlanski_west.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
orlanski_west.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
orlanski_west.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
orlanski_west.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
orlanski_west.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
orlanski_west.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
orlanski_west.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
orlanski_west.f: TANPHIATV_MACROS.h OBCS.h ORLANSKI.h
pp81_calc_diff.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
pp81_calc_diff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
pp81_calc_diff.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
pp81_calc_diff.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
pp81_calc_diff.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
pp81_calc_diff.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
pp81_calc_diff.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
pp81_calc_diff.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
pp81_calc_diff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
pp81_calc_diff.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
pp81_calc_diff.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
pp81_calc_diff.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
pp81_calc_diff.f: TANPHIATV_MACROS.h PP81.h
pp81_calc.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
pp81_calc.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
pp81_calc.f: FCORI_MACROS.h DYNVARS.h PP81.h FFIELDS.h GRID.h GRID_MACROS.h
pp81_calc.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
pp81_calc.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
pp81_calc.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
pp81_calc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
pp81_calc.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
pp81_calc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
pp81_calc.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
pp81_calc.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
pp81_calc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
pp81_calc_visc.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
pp81_calc_visc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
pp81_calc_visc.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
pp81_calc_visc.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
pp81_calc_visc.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
pp81_calc_visc.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
pp81_calc_visc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
pp81_calc_visc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
pp81_calc_visc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
pp81_calc_visc.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
pp81_calc_visc.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
pp81_calc_visc.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
pp81_calc_visc.f: TANPHIATV_MACROS.h PP81.h
pp81_check.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
pp81_check.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
pp81_check.f: FCORI_MACROS.h
pp81_init_varia.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
pp81_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
pp81_init_varia.f: PARAMS_MACROS.h FCORI_MACROS.h PP81.h
pp81_output.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
pp81_output.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
pp81_output.f: FCORI_MACROS.h PP81.h PP81_TAVE.h
pp81_readparms.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
pp81_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PP81.h
pp81_readparms.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
pp81_ri_number.f: PP81_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
pp81_ri_number.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
pp81_ri_number.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h PP81.h GRID.h
pp81_ri_number.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
pp81_ri_number.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
pp81_ri_number.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
pp81_ri_number.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
pp81_ri_number.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
pp81_ri_number.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
pp81_ri_number.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
pp81_ri_number.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
pp81_ri_number.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
pp81_ri_number.f: TANPHIATV_MACROS.h
ptracers_advection.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_advection.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h
ptracers_advection.f: PTRACERS_MOD.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_advection.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
ptracers_advection.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_advection.f: GAD.h
ptracers_calc_diff.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_calc_diff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_calc_diff.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ptracers_calc_diff.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ptracers_calc_diff.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ptracers_calc_diff.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ptracers_calc_diff.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ptracers_calc_diff.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ptracers_calc_diff.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_calc_diff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_calc_diff.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_calc_diff.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ptracers_calc_diff.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
ptracers_calc_diff.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ptracers_calc_diff.f: DYNVARS.h PTRACERS_SIZE.h PTRACERS_PARAMS.h GAD.h
ptracers_check_pickup.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_check_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_check_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ptracers_check_pickup.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_RESTART.h
ptracers_convect.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_convect.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_convect.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_cycle.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_cycle.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_cycle.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_debug.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_debug.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_debug.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_diagnostics_init.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h
ptracers_diagnostics_init.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ptracers_diagnostics_init.f: SIZE.h PTRACERS_SIZE.h EEPARAMS.h PARAMS.h
ptracers_diagnostics_init.f: PARAMS_MACROS.h FCORI_MACROS.h PTRACERS_PARAMS.h
ptracers_diagnostics_init.f: GAD.h
ptracers_diagnostics_state.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h
ptracers_diagnostics_state.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ptracers_diagnostics_state.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
ptracers_diagnostics_state.f: FCORI_MACROS.h GRID.h GRID_MACROS.h
ptracers_diagnostics_state.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ptracers_diagnostics_state.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ptracers_diagnostics_state.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
ptracers_diagnostics_state.f: HFACS_MACROS.h HFACW_MACROS.h
ptracers_diagnostics_state.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ptracers_diagnostics_state.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ptracers_diagnostics_state.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_diagnostics_state.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_diagnostics_state.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_diagnostics_state.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ptracers_diagnostics_state.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ptracers_diagnostics_state.f: MASKW_MACROS.h MASKS_MACROS.h
ptracers_diagnostics_state.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
ptracers_diagnostics_state.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
ptracers_diagnostics_state.f: PTRACERS_FIELDS.h
ptracers_dwnslp_apply.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_dwnslp_apply.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h SIZE.h
ptracers_dwnslp_apply.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ptracers_dwnslp_apply.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
ptracers_dwnslp_apply.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ptracers_dwnslp_apply.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
ptracers_dwnslp_apply.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ptracers_dwnslp_apply.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ptracers_dwnslp_apply.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ptracers_dwnslp_apply.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ptracers_dwnslp_apply.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ptracers_dwnslp_apply.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ptracers_dwnslp_apply.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
ptracers_dwnslp_apply.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ptracers_dwnslp_apply.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ptracers_dwnslp_apply.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_dwnslp_apply.f: GAD.h
ptracers_dyn_state_data_mod.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h
ptracers_dyn_state_data_mod.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ptracers_dyn_state_mod.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_dyn_state_mod.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
ptracers_fields_blocking_exchanges.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h
ptracers_fields_blocking_exchanges.f: CPP_OPTIONS.h CPP_EEOPTIONS.h
ptracers_fields_blocking_exchanges.f: CPP_EEMACROS.h GAD_OPTIONS.h
ptracers_fields_blocking_exchanges.f: PTRACERS_MOD.h SIZE.h EEPARAMS.h
ptracers_fields_blocking_exchanges.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ptracers_fields_blocking_exchanges.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
ptracers_fields_blocking_exchanges.f: PTRACERS_FIELDS.h
ptracers_forcing.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_forcing.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_forcing.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ptracers_forcing.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ptracers_forcing.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ptracers_forcing.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ptracers_forcing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ptracers_forcing.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_forcing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_forcing.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_forcing.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ptracers_forcing.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ptracers_forcing.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ptracers_forcing_surf.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_forcing_surf.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_forcing_surf.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ptracers_forcing_surf.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ptracers_forcing_surf.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ptracers_forcing_surf.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ptracers_forcing_surf.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ptracers_forcing_surf.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ptracers_forcing_surf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_forcing_surf.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_forcing_surf.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_forcing_surf.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ptracers_forcing_surf.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
ptracers_forcing_surf.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ptracers_forcing_surf.f: SURFACE.h DYNVARS.h FFIELDS.h PTRACERS_SIZE.h
ptracers_forcing_surf.f: PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_gterm_blocking_exchanges.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h
ptracers_gterm_blocking_exchanges.f: CPP_OPTIONS.h CPP_EEOPTIONS.h
ptracers_gterm_blocking_exchanges.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_gterm_blocking_exchanges.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
ptracers_gterm_blocking_exchanges.f: PTRACERS_FIELDS.h
ptracers_implicit.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_implicit.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_implicit.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_implicit.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ptracers_implicit.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ptracers_implicit.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ptracers_implicit.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ptracers_implicit.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ptracers_implicit.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ptracers_implicit.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_implicit.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_implicit.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ptracers_implicit.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ptracers_implicit.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h DYNVARS.h
ptracers_init_fixed.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h
ptracers_init_fixed.f: PTRACERS_MOD.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h PTRACERS_SIZE.h
ptracers_init_fixed.f: PTRACERS_PARAMS.h PTRACERS_RESTART.h GAD.h
ptracers_init_varia.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h
ptracers_init_varia.f: PTRACERS_MOD.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_init_varia.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ptracers_init_varia.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ptracers_init_varia.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ptracers_init_varia.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ptracers_init_varia.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ptracers_init_varia.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ptracers_init_varia.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_init_varia.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_init_varia.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_init_varia.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ptracers_init_varia.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
ptracers_init_varia.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ptracers_init_varia.f: GAD.h PTRACERS_SIZE.h PTRACERS_PARAMS.h
ptracers_init_varia.f: PTRACERS_FIELDS.h
ptracers_integrate.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_integrate.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_integrate.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
ptracers_integrate.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_RESTART.h
ptracers_integrate.f: PTRACERS_FIELDS.h GAD.h
ptracers_mnc_init.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_mnc_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_mnc_init.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PARAMS.h
ptracers_mnc_init.f: PARAMS_MACROS.h FCORI_MACROS.h
ptracers_monitor.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_monitor.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_monitor.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ptracers_monitor.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ptracers_monitor.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ptracers_monitor.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ptracers_monitor.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ptracers_monitor.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_monitor.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_monitor.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_monitor.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ptracers_monitor.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ptracers_monitor.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h PTRACERS_SIZE.h
ptracers_monitor.f: PTRACERS_PARAMS.h PTRACERS_FIELDS.h MONITOR.h
ptracers_output.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_output.f: PARAMS_MACROS.h FCORI_MACROS.h PTRACERS_SIZE.h
ptracers_output.f: PTRACERS_PARAMS.h
ptracers_readparms.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_readparms.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PARAMS.h
ptracers_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h
ptracers_read_pickup.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h PTRACERS_OPTIONS.h
ptracers_read_pickup.f: PTRACERS_MOD.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_read_pickup.f: PARAMS_MACROS.h FCORI_MACROS.h GAD.h PTRACERS_SIZE.h
ptracers_read_pickup.f: PTRACERS_PARAMS.h PTRACERS_RESTART.h
ptracers_read_pickup.f: PTRACERS_FIELDS.h
ptracers_timeave.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_timeave.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_timeave.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ptracers_timeave.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ptracers_timeave.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ptracers_timeave.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ptracers_timeave.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ptracers_timeave.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ptracers_timeave.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ptracers_timeave.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ptracers_timeave.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ptracers_timeave.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ptracers_timeave.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h PTRACERS_SIZE.h
ptracers_timeave.f: PTRACERS_PARAMS.h PTRACERS_FIELDS.h PTRACERS_TAVE.h
ptracers_turnoff_io.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_turnoff_io.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_turnoff_io.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
ptracers_write_pickup.f: GAD_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h PTRACERS_OPTIONS.h
ptracers_write_pickup.f: PTRACERS_MOD.h SIZE.h EEPARAMS.h PARAMS.h
ptracers_write_pickup.f: PARAMS_MACROS.h FCORI_MACROS.h GAD.h PTRACERS_SIZE.h
ptracers_write_pickup.f: PTRACERS_PARAMS.h PTRACERS_RESTART.h
ptracers_write_pickup.f: PTRACERS_FIELDS.h
ptracers_write_state.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_write_state.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_write_state.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ptracers_write_state.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_FIELDS.h
ptracers_write_timeave.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
ptracers_write_timeave.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ptracers_write_timeave.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ptracers_write_timeave.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h PTRACERS_TAVE.h
ptracers_zonal_filt_apply.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h
ptracers_zonal_filt_apply.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ptracers_zonal_filt_apply.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
ptracers_zonal_filt_apply.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
ptracers_zonal_filt_apply.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ptracers_zonal_filt_apply.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ptracers_zonal_filt_apply.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ptracers_zonal_filt_apply.f: HFACW_MACROS.h RECIP_DXC_MACROS.h
ptracers_zonal_filt_apply.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ptracers_zonal_filt_apply.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ptracers_zonal_filt_apply.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ptracers_zonal_filt_apply.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ptracers_zonal_filt_apply.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ptracers_zonal_filt_apply.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
ptracers_zonal_filt_apply.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ptracers_zonal_filt_apply.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ptracers_zonal_filt_apply.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
ptracers_zonal_filt_apply.f: PTRACERS_FIELDS.h
rbcs_add_tendency.f: RBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
rbcs_add_tendency.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
rbcs_add_tendency.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
rbcs_add_tendency.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
rbcs_add_tendency.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
rbcs_add_tendency.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
rbcs_add_tendency.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
rbcs_add_tendency.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
rbcs_add_tendency.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
rbcs_add_tendency.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
rbcs_add_tendency.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
rbcs_add_tendency.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
rbcs_add_tendency.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
rbcs_add_tendency.f: PTRACERS_SIZE.h PTRACERS_FIELDS.h RBCS.h
rbcs_fields_load.f: RBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
rbcs_fields_load.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
rbcs_fields_load.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h GRID.h
rbcs_fields_load.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
rbcs_fields_load.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
rbcs_fields_load.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
rbcs_fields_load.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
rbcs_fields_load.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
rbcs_fields_load.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
rbcs_fields_load.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
rbcs_fields_load.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
rbcs_fields_load.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
rbcs_fields_load.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
rbcs_fields_load.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h RBCS.h
rbcs_init_fixed.f: RBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
rbcs_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
rbcs_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h PTRACERS_SIZE.h RBCS.h
rbcs_init_varia.f: RBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
rbcs_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
rbcs_init_varia.f: PARAMS_MACROS.h FCORI_MACROS.h PTRACERS_SIZE.h RBCS.h
rbcs_readparms.f: RBCS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
rbcs_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
rbcs_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h PTRACERS_SIZE.h RBCS.h
ep85.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ep85.f: CPP_EEMACROS.h GCHEM_OPTIONS.h RECOM_OPTIONS.h
mod_recom_para_def.f: PTRACERS_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
mod_recom_para_def.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GCHEM_OPTIONS.h
mod_recom_para_def.f: RECOM_OPTIONS.h
recom_checkpoint.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
recom_checkpoint.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h RECOM_OPTIONS.h SIZE.h
recom_checkpoint.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
recom_checkpoint.f: RECOM.h
recom_external_fields_load.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_external_fields_load.f: CPP_EEOPTIONS.h CPP_EEMACROS.h RECOM_OPTIONS.h
recom_external_fields_load.f: EXF_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h
recom_external_fields_load.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h
recom_external_fields_load.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
recom_external_fields_load.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
recom_external_fields_load.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
recom_external_fields_load.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
recom_external_fields_load.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
recom_external_fields_load.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
recom_external_fields_load.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
recom_external_fields_load.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
recom_external_fields_load.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
recom_external_fields_load.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
recom_external_fields_load.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
recom_external_fields_load.f: MASKW_MACROS.h MASKS_MACROS.h
recom_external_fields_load.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GCHEM.h
recom_external_fields_load.f: RECOM.h EXF_PARAM.h EXF_FIELDS.h
recom_external_fields_load.f: EXF_CONSTANTS.h RECOM_EXF.h
recom_init_fixed.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h RECOM_OPTIONS.h SIZE.h
recom_init_fixed.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
recom_init_fixed.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
recom_init_fixed.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
recom_init_fixed.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
recom_init_fixed.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
recom_init_fixed.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
recom_init_fixed.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
recom_init_fixed.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
recom_init_fixed.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
recom_init_fixed.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
recom_init_fixed.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h RECOM.h RECOM_EXF.h
recom_init_fixed.f: cal.h EXF_PARAM.h EXF_CONSTANTS.h
recom_init_vari.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
recom_init_vari.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h RECOM_OPTIONS.h
recom_init_vari.f: EXF_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
recom_init_vari.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
recom_init_vari.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
recom_init_vari.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
recom_init_vari.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
recom_init_vari.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
recom_init_vari.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
recom_init_vari.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
recom_init_vari.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
recom_init_vari.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
recom_init_vari.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
recom_init_vari.f: TANPHIATV_MACROS.h PTRACERS_SIZE.h PTRACERS_PARAMS.h
recom_init_vari.f: RECOM.h EXF_PARAM.h RECOM_EXF.h RECOM_PARAMS.h
recom_sumptr.f: GCHEM_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
recom_sumptr.f: CPP_EEOPTIONS.h CPP_EEMACROS.h RECOM_OPTIONS.h SIZE.h
recom_sumptr.f: EEPARAMS.h RECOM.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
recom_sumptr.f: PTRACERS_SIZE.h PTRACERS_FIELDS.h
get_write_global_fld.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
read_fld_xy_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
read_fld_xy_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
read_fld_xy_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
read_fld_xy_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
read_fld_xy_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
read_fld_xy_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
read_fld_xyz_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
read_fld_xyz_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
read_fld_xyz_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
read_fld_xyz_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
read_fld_xyz_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
read_fld_xyz_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
read_glvec_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
read_glvec_rl.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
read_glvec_rl.f: FCORI_MACROS.h
read_glvec_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
read_glvec_rs.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
read_glvec_rs.f: FCORI_MACROS.h
read_mflds.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
read_mflds.f: CPP_EEMACROS.h EEPARAMS.h RW_MFLDS.h SIZE.h PARAMS.h
read_mflds.f: PARAMS_MACROS.h FCORI_MACROS.h
read_rec.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
read_rec.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
read_rec.f: FCORI_MACROS.h
set_write_global_fld.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
write_fld_3d_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_3d_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_3d_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_3d_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_3d_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_3d_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_s3d_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_s3d_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_s3d_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_s3d_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_s3d_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_s3d_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_xy_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_xy_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_xy_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_xy_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_xy_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_xy_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_xyz_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_xyz_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_xyz_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
write_fld_xyz_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_fld_xyz_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_fld_xyz_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
write_glvec_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_glvec_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_glvec_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
write_glvec_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_glvec_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_glvec_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
write_local_rl.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_local_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_local_rl.f: PARAMS_MACROS.h FCORI_MACROS.h
write_local_rs.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
write_local_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
write_local_rs.f: PARAMS_MACROS.h FCORI_MACROS.h
write_rec.f: RW_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
write_rec.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
write_rec.f: FCORI_MACROS.h
advect.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
advect.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
advect.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
advect.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
advect.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
advect.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
advect.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
advect.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
advect.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
advect.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
advect.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE_PARAMS.h
cost_ice_test.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
cost_ice_test.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
diffus.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
diffus.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h GRID_MACROS.h DXC_MACROS.h
diffus.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
diffus.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
diffus.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diffus.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
diffus.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diffus.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
diffus.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diffus.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
diffus.f: SEAICE_PARAMS.h
dynsolver.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
dynsolver.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
dynsolver.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
dynsolver.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
dynsolver.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
dynsolver.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
dynsolver.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
dynsolver.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
dynsolver.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
dynsolver.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
dynsolver.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
dynsolver.f: FFIELDS.h SEAICE.h SEAICE_PARAMS.h EXF_OPTIONS.h EXF_FIELDS.h
lsr.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
lsr.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
lsr.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
lsr.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
lsr.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
lsr.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
lsr.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
lsr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
lsr.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
lsr.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
lsr.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE.h SEAICE_PARAMS.h
ostres.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ostres.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
ostres.f: FCORI_MACROS.h FFIELDS.h SEAICE.h SEAICE_PARAMS.h
seaice_ad_dump.f: AD_CONFIG.h PACKAGES_CONFIG.h SEAICE_OPTIONS.h
seaice_ad_dump.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
seaice_ad_dump.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
seaice_ad_dump.f: SEAICE_PARAMS.h GRID.h GRID_MACROS.h DXC_MACROS.h
seaice_ad_dump.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
seaice_ad_dump.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
seaice_ad_dump.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
seaice_ad_dump.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_ad_dump.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
seaice_ad_dump.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
seaice_ad_dump.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
seaice_ad_dump.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_ad_dump.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_ad_dump.f: TANPHIATV_MACROS.h
seaice_advdiff.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_advdiff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_advdiff.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
seaice_advdiff.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_advdiff.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_advdiff.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_advdiff.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_advdiff.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_advdiff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
seaice_advdiff.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
seaice_advdiff.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_advdiff.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_advdiff.f: TANPHIATV_MACROS.h GAD.h SEAICE_PARAMS.h SEAICE.h
seaice_advection.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_advection.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h SIZE.h
seaice_advection.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_advection.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_advection.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_advection.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_advection.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_advection.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_advection.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_advection.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_advection.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_advection.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_advection.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE_PARAMS.h
seaice_advection.f: GAD.h
seaice_budget_ice_if.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_budget_ice_if.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
seaice_budget_ice_if.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_budget_ice_if.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_budget_ice_if.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_budget_ice_if.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_budget_ice_if.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_budget_ice_if.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_budget_ice_if.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_budget_ice_if.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_budget_ice_if.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_budget_ice_if.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
seaice_budget_ice_if.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
seaice_budget_ice_if.f: EEPARAMS.h FFIELDS.h SEAICE.h SEAICE_PARAMS.h
seaice_budget_ice_if.f: DYNVARS.h EXF_OPTIONS.h EXF_FIELDS.h
seaice_budget_ocean.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_budget_ocean.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_budget_ocean.f: FFIELDS.h SEAICE_PARAMS.h EXF_OPTIONS.h EXF_FIELDS.h
seaice_budget_ocean_if.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_budget_ocean_if.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_budget_ocean_if.f: FFIELDS.h SEAICE.h SEAICE_PARAMS.h DYNVARS.h
seaice_budget_ocean_if.f: EXF_OPTIONS.h EXF_FIELDS.h
seaice_calc_strainrates.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_calc_strainrates.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_calc_strainrates.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_calc_strainrates.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
seaice_calc_strainrates.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
seaice_calc_strainrates.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_calc_strainrates.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_calc_strainrates.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_calc_strainrates.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_calc_strainrates.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_calc_strainrates.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_calc_strainrates.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_calc_strainrates.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_calc_strainrates.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_calc_strainrates.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_calc_strainrates.f: TANPHIATV_MACROS.h SEAICE_PARAMS.h SEAICE.h
seaice_calc_viscosities.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_calc_viscosities.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_calc_viscosities.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_calc_viscosities.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
seaice_calc_viscosities.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
seaice_calc_viscosities.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_calc_viscosities.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_calc_viscosities.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_calc_viscosities.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_calc_viscosities.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_calc_viscosities.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_calc_viscosities.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_calc_viscosities.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_calc_viscosities.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_calc_viscosities.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_calc_viscosities.f: TANPHIATV_MACROS.h SEAICE_PARAMS.h
seaice_check.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_check.f: PARAMS_MACROS.h FCORI_MACROS.h SEAICE_PARAMS.h SEAICE.h GAD.h
seaice_check.f: EXF_OPTIONS.h
seaice_check_pickup.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_check_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_check_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
seaice_check_pickup.f: SEAICE_PARAMS.h SEAICE.h
seaice_cost_accumulate_mean.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h
seaice_cost_accumulate_mean.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
seaice_cost_accumulate_mean.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
seaice_cost_accumulate_mean.f: FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h
seaice_cost_accumulate_mean.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_cost_accumulate_mean.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
seaice_cost_accumulate_mean.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
seaice_cost_accumulate_mean.f: HFACS_MACROS.h HFACW_MACROS.h
seaice_cost_accumulate_mean.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_cost_accumulate_mean.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_cost_accumulate_mean.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_cost_accumulate_mean.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_cost_accumulate_mean.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_cost_accumulate_mean.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_cost_accumulate_mean.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_cost_accumulate_mean.f: MASKW_MACROS.h MASKS_MACROS.h
seaice_cost_accumulate_mean.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE.h
seaice_cost_areasst.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_areasst.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
seaice_cost_areasst.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h cal.h SEAICE.h
seaice_cost_areasst.f: SEAICE_PARAMS.h SEAICE_COST.h
seaice_cost_concentration.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_concentration.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
seaice_cost_concentration.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h cal.h
seaice_cost_driver.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_driver.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
seaice_cost_driver.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_cost_driver.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_cost_driver.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_cost_driver.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_cost_driver.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_cost_driver.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_cost_driver.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_cost_driver.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_cost_driver.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_cost_driver.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_cost_driver.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
seaice_cost_driver.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
seaice_cost_driver.f: cal.h
seaice_cost_export.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_export.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_cost_export.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_cost_export.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_cost_export.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_cost_export.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_cost_export.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_cost_export.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_cost_export.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_cost_export.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_cost_export.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_cost_export.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_cost_export.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
seaice_cost_export.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
seaice_cost_export.f: SEAICE.h SEAICE_COST.h
seaice_cost_final.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_final.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
seaice_cost_final.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
seaice_cost_final.f: SEAICE_PARAMS.h
seaice_cost_init_fixed.f: PACKAGES_CONFIG.h AD_CONFIG.h SEAICE_OPTIONS.h
seaice_cost_init_fixed.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
seaice_cost_init_fixed.f: EEPARAMS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
seaice_cost_init_fixed.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
seaice_cost_init_fixed.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_cost_init_fixed.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_cost_init_fixed.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_cost_init_fixed.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_cost_init_fixed.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_cost_init_fixed.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_cost_init_fixed.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_cost_init_fixed.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_cost_init_fixed.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_cost_init_fixed.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_cost_init_fixed.f: TANPHIATV_MACROS.h PARAMS.h PARAMS_MACROS.h
seaice_cost_init_fixed.f: FCORI_MACROS.h cal.h
seaice_cost_init_varia.f: AD_CONFIG.h SEAICE_OPTIONS.h PACKAGES_CONFIG.h
seaice_cost_init_varia.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
seaice_cost_init_varia.f: EEPARAMS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
seaice_cost_init_varia.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
seaice_cost_init_varia.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_cost_init_varia.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_cost_init_varia.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_cost_init_varia.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_cost_init_varia.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_cost_init_varia.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_cost_init_varia.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_cost_init_varia.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_cost_init_varia.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_cost_init_varia.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_cost_init_varia.f: TANPHIATV_MACROS.h
seaice_cost_sensi.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_sensi.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_cost_sensi.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
seaice_cost_sss.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_sss.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
seaice_cost_sss.f: PARAMS_MACROS.h FCORI_MACROS.h cal.h
seaice_cost_sst.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_sst.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h PARAMS.h
seaice_cost_sst.f: PARAMS_MACROS.h FCORI_MACROS.h cal.h
seaice_cost_weights.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_cost_weights.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
seaice_cost_weights.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_cost_weights.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_cost_weights.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_cost_weights.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_cost_weights.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_cost_weights.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_cost_weights.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_cost_weights.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_cost_weights.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_cost_weights.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_cost_weights.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
seaice_cost_weights.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
seaice_ctrl_map_ini.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_ctrl_map_ini.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_ctrl_map_ini.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_ctrl_map_ini.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_ctrl_map_ini.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_ctrl_map_ini.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_ctrl_map_ini.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_ctrl_map_ini.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_ctrl_map_ini.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_ctrl_map_ini.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_ctrl_map_ini.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_ctrl_map_ini.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_ctrl_map_ini.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
seaice_ctrl_map_ini.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
seaice_ctrl_map_ini.f: DYNVARS.h FFIELDS.h SEAICE.h
seaice_diagnostics_state.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_diagnostics_state.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_diagnostics_state.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h
seaice_diagnostics_state.f: SEAICE_PARAMS.h SEAICE.h EXF_OPTIONS.h
seaice_diagnostics_state.f: EXF_FIELDS.h
seaice_diffusion.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_diffusion.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_diffusion.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
seaice_diffusion.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_diffusion.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_diffusion.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_diffusion.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_diffusion.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_diffusion.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_diffusion.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_diffusion.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_diffusion.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_diffusion.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE_PARAMS.h
seaice_dynsolver.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_dynsolver.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_dynsolver.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
seaice_dynsolver.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_dynsolver.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_dynsolver.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_dynsolver.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_dynsolver.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_dynsolver.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_dynsolver.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_dynsolver.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_dynsolver.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_dynsolver.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h DYNVARS.h
seaice_dynsolver.f: FFIELDS.h SEAICE.h SEAICE_PARAMS.h
seaice_evp.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_evp.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_evp.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h
seaice_evp.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_evp.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_evp.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
seaice_evp.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_evp.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
seaice_evp.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_evp.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_evp.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_evp.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE.h SEAICE_PARAMS.h
seaice_freedrift.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_freedrift.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_freedrift.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
seaice_freedrift.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_freedrift.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_freedrift.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_freedrift.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_freedrift.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_freedrift.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_freedrift.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_freedrift.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_freedrift.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_freedrift.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE.h
seaice_freedrift.f: SEAICE_PARAMS.h
seaice_get_dynforcing.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_get_dynforcing.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_get_dynforcing.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_get_dynforcing.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_get_dynforcing.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_get_dynforcing.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_get_dynforcing.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_get_dynforcing.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_get_dynforcing.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_get_dynforcing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_get_dynforcing.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_get_dynforcing.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
seaice_get_dynforcing.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
seaice_get_dynforcing.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
seaice_get_dynforcing.f: FFIELDS.h DYNVARS.h SEAICE_PARAMS.h EXF_OPTIONS.h
seaice_get_dynforcing.f: EXF_FIELDS.h EXF_PARAM.h
seaice_growth.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_growth.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_growth.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
seaice_growth.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_growth.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_growth.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_growth.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_growth.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_growth.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
seaice_growth.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
seaice_growth.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_growth.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_growth.f: TANPHIATV_MACROS.h FFIELDS.h SEAICE_PARAMS.h SEAICE.h
seaice_growth.f: EXF_OPTIONS.h EXF_FIELDS.h EXF_PARAM.h
seaice_growth_if.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_growth_if.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_growth_if.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
seaice_growth_if.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_growth_if.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_growth_if.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_growth_if.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_growth_if.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_growth_if.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_growth_if.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_growth_if.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_growth_if.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_growth_if.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h FFIELDS.h
seaice_growth_if.f: SEAICE_PARAMS.h SEAICE.h EXF_OPTIONS.h EXF_FIELDS.h
seaice_growth_if.f: EXF_PARAM.h
seaice_init_fixed.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_init_fixed.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_init_fixed.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_init_fixed.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_init_fixed.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_init_fixed.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
seaice_init_fixed.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_init_fixed.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_init_fixed.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_init_fixed.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_init_fixed.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h FFIELDS.h
seaice_init_fixed.f: SEAICE_PARAMS.h SEAICE.h
seaice_init_varia.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_init_varia.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_init_varia.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
seaice_init_varia.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_init_varia.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_init_varia.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_init_varia.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_init_varia.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
seaice_init_varia.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_init_varia.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_init_varia.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_init_varia.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_init_varia.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
seaice_init_varia.f: FFIELDS.h SEAICE_PARAMS.h SEAICE.h SEAICE_TAVE.h
seaice_init_varia.f: OBCS_OPTIONS.h OBCS.h
seaice_lsr.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_lsr.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_lsr.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h
seaice_lsr.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_lsr.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_lsr.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
seaice_lsr.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
seaice_lsr.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
seaice_lsr.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_lsr.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_lsr.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_lsr.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE.h SEAICE_PARAMS.h
seaice_map_thsice.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_map_thsice.f: CPP_EEOPTIONS.h CPP_EEMACROS.h THSICE_OPTIONS.h SIZE.h
seaice_map_thsice.f: EEPARAMS.h SEAICE.h THSICE_VARS.h
seaice_mnc_init.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_mnc_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_mnc_init.f: PARAMS_MACROS.h FCORI_MACROS.h SEAICE_PARAMS.h
seaice_monitor.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_monitor.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_monitor.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
seaice_monitor.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_monitor.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_monitor.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_monitor.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_monitor.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_monitor.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
seaice_monitor.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
seaice_monitor.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_monitor.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_monitor.f: TANPHIATV_MACROS.h SEAICE_PARAMS.h SEAICE.h MONITOR.h
seaice_obcs_output.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_obcs_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h OBCS_OPTIONS.h SIZE.h
seaice_obcs_output.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
seaice_obcs_output.f: OBCS.h
seaice_ocean_stress.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_ocean_stress.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_ocean_stress.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
seaice_ocean_stress.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
seaice_ocean_stress.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
seaice_ocean_stress.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
seaice_ocean_stress.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
seaice_ocean_stress.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_ocean_stress.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
seaice_ocean_stress.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
seaice_ocean_stress.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
seaice_ocean_stress.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
seaice_ocean_stress.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
seaice_ocean_stress.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
seaice_ocean_stress.f: TANPHIATV_MACROS.h FFIELDS.h SEAICE.h SEAICE_PARAMS.h
seaice_output.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_output.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h SEAICE_PARAMS.h
seaice_output.f: SEAICE.h SEAICE_TAVE.h EXF_OPTIONS.h EXF_FIELDS.h
seaice_readparms.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
seaice_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
seaice_readparms.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
seaice_readparms.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
seaice_readparms.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
seaice_readparms.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
seaice_readparms.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
seaice_readparms.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_readparms.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_readparms.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_readparms.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_readparms.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SEAICE_PARAMS.h
seaice_readparms.f: EXF_CONSTANTS.h cal.h
seaice_read_pickup.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_read_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h SEAICE_PARAMS.h
seaice_read_pickup.f: SEAICE.h
seaice_solve4temp.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_solve4temp.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
seaice_solve4temp.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
seaice_solve4temp.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
seaice_solve4temp.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
seaice_solve4temp.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
seaice_solve4temp.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
seaice_solve4temp.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
seaice_solve4temp.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
seaice_solve4temp.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
seaice_solve4temp.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
seaice_solve4temp.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EEPARAMS.h
seaice_solve4temp.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h
seaice_solve4temp.f: SEAICE.h SEAICE_PARAMS.h DYNVARS.h EXF_OPTIONS.h
seaice_solve4temp.f: EXF_FIELDS.h
seaice_summary.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_summary.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SEAICE_PARAMS.h
seaice_turnoff_io.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_turnoff_io.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_turnoff_io.f: SEAICE_PARAMS.h
seaice_write_pickup.f: SEAICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
seaice_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
seaice_write_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
seaice_write_pickup.f: SEAICE_PARAMS.h SEAICE.h
shelfice_forcing.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
shelfice_forcing.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
shelfice_forcing.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
shelfice_forcing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
shelfice_forcing.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
shelfice_forcing.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
shelfice_forcing.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
shelfice_forcing.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
shelfice_forcing.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
shelfice_forcing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
shelfice_forcing.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
shelfice_forcing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
shelfice_forcing.f: TANPHIATV_MACROS.h DYNVARS.h FFIELDS.h SHELFICE.h
shelfice_mnc_init.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_mnc_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
shelfice_mnc_init.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
shelfice_output.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
shelfice_output.f: PARAMS_MACROS.h FCORI_MACROS.h SHELFICE.h SHELFICE_TAVE.h
shelfice_u_drag.f: SHELFICE.h MOM_COMMON_OPTIONS.h PACKAGES_CONFIG.h
shelfice_u_drag.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
shelfice_u_drag.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
shelfice_u_drag.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
shelfice_u_drag.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
shelfice_u_drag.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shelfice_u_drag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
shelfice_u_drag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shelfice_u_drag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
shelfice_u_drag.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
shelfice_u_drag.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
shelfice_u_drag.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
shelfice_u_drag.f: TANPHIATV_MACROS.h
shelfice_update_masks.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_update_masks.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
shelfice_update_masks.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h SHELFICE.h
shelfice_v_drag.f: SHELFICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
shelfice_v_drag.f: CPP_EEOPTIONS.h CPP_EEMACROS.h MOM_COMMON_OPTIONS.h SIZE.h
shelfice_v_drag.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
shelfice_v_drag.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
shelfice_v_drag.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
shelfice_v_drag.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
shelfice_v_drag.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
shelfice_v_drag.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
shelfice_v_drag.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
shelfice_v_drag.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
shelfice_v_drag.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
shelfice_v_drag.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
shelfice_v_drag.f: TANPHIATV_MACROS.h SHELFICE.h
thsice_advdiff.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_advdiff.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h SIZE.h
thsice_advdiff.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
thsice_advdiff.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
thsice_advdiff.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
thsice_advdiff.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thsice_advdiff.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thsice_advdiff.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thsice_advdiff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
thsice_advdiff.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
thsice_advdiff.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
thsice_advdiff.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
thsice_advdiff.f: TANPHIATV_MACROS.h THSICE_SIZE.h THSICE_PARAMS.h
thsice_advdiff.f: THSICE_VARS.h GAD.h THSICE_DEBUG.h
thsice_advection.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_advection.f: CPP_EEOPTIONS.h CPP_EEMACROS.h GAD_OPTIONS.h SIZE.h
thsice_advection.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
thsice_advection.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
thsice_advection.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
thsice_advection.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thsice_advection.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thsice_advection.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thsice_advection.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
thsice_advection.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
thsice_advection.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
thsice_advection.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
thsice_advection.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h THSICE_SIZE.h GAD.h
thsice_albedo.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_albedo.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h THSICE_PARAMS.h
thsice_ave.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_ave.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_ave.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h THSICE_PARAMS.h
thsice_ave.f: THSICE_VARS.h THSICE_TAVE.h
thsice_calc_thickn.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_calc_thickn.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_calc_thickn.f: THSICE_SIZE.h THSICE_PARAMS.h THSICE_DEBUG.h
thsice_check_conserv.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_check_conserv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_check_conserv.f: THSICE_SIZE.h THSICE_PARAMS.h THSICE_VARS.h
thsice_check_conserv.f: THSICE_TAVE.h THSICE_DEBUG.h
thsice_check.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
thsice_check.f: THSICE_SIZE.h THSICE_PARAMS.h
thsice_diagnostics_init.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_diagnostics_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
thsice_diagnostics_init.f: THSICE_SIZE.h
thsice_diagnostics_state.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_diagnostics_state.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_diagnostics_state.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
thsice_diagnostics_state.f: THSICE_PARAMS.h THSICE_VARS.h
thsice_diffusion.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_diffusion.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_diffusion.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
thsice_diffusion.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
thsice_diffusion.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
thsice_diffusion.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thsice_diffusion.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thsice_diffusion.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thsice_diffusion.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
thsice_diffusion.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
thsice_diffusion.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
thsice_diffusion.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
thsice_diffusion.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h THSICE_SIZE.h
thsice_diffusion.f: THSICE_PARAMS.h THSICE_VARS.h
thsice_do_advect.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_do_advect.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_do_advect.f: PARAMS_MACROS.h FCORI_MACROS.h THSICE_PARAMS.h
thsice_extend.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_extend.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
thsice_extend.f: THSICE_SIZE.h THSICE_PARAMS.h THSICE_DEBUG.h
thsice_get_bulkf.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_get_bulkf.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
thsice_get_exf.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_get_exf.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EXF_OPTIONS.h SIZE.h
thsice_get_exf.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
thsice_get_exf.f: EXF_CONSTANTS.h EXF_PARAM.h EXF_FIELDS.h THSICE_DEBUG.h
thsice_get_precip.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_get_precip.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_get_velocity.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_get_velocity.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SEAICE_OPTIONS.h SIZE.h
thsice_get_velocity.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
thsice_get_velocity.f: SEAICE.h
thsice_impl_temp.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_impl_temp.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_impl_temp.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h THSICE_SIZE.h
thsice_impl_temp.f: THSICE_PARAMS.h THSICE_VARS.h THSICE_DEBUG.h
thsice_init_fixed.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
thsice_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
thsice_ini_vars.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_ini_vars.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_ini_vars.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h THSICE_PARAMS.h
thsice_ini_vars.f: THSICE_VARS.h
thsice_main.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_main.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_main.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
thsice_main.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
thsice_main.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
thsice_main.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thsice_main.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thsice_main.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thsice_main.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
thsice_main.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
thsice_main.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
thsice_main.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
thsice_main.f: TANPHIATV_MACROS.h SURFACE.h DYNVARS.h FFIELDS.h
thsice_main.f: THSICE_PARAMS.h THSICE_SIZE.h THSICE_VARS.h
thsice_map_exf.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_map_exf.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EXF_OPTIONS.h SIZE.h
thsice_map_exf.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
thsice_map_exf.f: FFIELDS.h EXF_CONSTANTS.h EXF_PARAM.h EXF_FIELDS.h
thsice_mnc_init.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_mnc_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
thsice_monitor.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_monitor.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_monitor.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
thsice_monitor.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
thsice_monitor.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
thsice_monitor.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thsice_monitor.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thsice_monitor.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thsice_monitor.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
thsice_monitor.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
thsice_monitor.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
thsice_monitor.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
thsice_monitor.f: TANPHIATV_MACROS.h THSICE_PARAMS.h THSICE_VARS.h MONITOR.h
thsice_output.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_output.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_output.f: PARAMS_MACROS.h FCORI_MACROS.h THSICE_PARAMS.h THSICE_VARS.h
thsice_output.f: THSICE_TAVE.h
thsice_readparms.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_readparms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
thsice_readparms.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
thsice_readparms.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
thsice_readparms.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thsice_readparms.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thsice_readparms.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thsice_readparms.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
thsice_readparms.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
thsice_readparms.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
thsice_readparms.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
thsice_readparms.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h THSICE_PARAMS.h
thsice_read_pickup.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_read_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_read_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h THSICE_PARAMS.h
thsice_read_pickup.f: THSICE_VARS.h
thsice_reshape_layers.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_reshape_layers.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
thsice_reshape_layers.f: THSICE_PARAMS.h
thsice_slab_ocean.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_slab_ocean.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_slab_ocean.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h
thsice_slab_ocean.f: THSICE_PARAMS.h THSICE_VARS.h
thsice_solve4temp.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_solve4temp.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h SIZE.h
thsice_solve4temp.f: THSICE_SIZE.h THSICE_PARAMS.h THSICE_DEBUG.h
thsice_step_fwd.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_step_fwd.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_step_fwd.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h THSICE_SIZE.h
thsice_step_fwd.f: THSICE_PARAMS.h THSICE_VARS.h THSICE_TAVE.h THSICE_DEBUG.h
thsice_step_temp.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_step_temp.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
thsice_step_temp.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h THSICE_SIZE.h
thsice_step_temp.f: THSICE_PARAMS.h THSICE_VARS.h THSICE_TAVE.h
thsice_step_temp.f: THSICE_DEBUG.h
thsice_turnoff_io.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_turnoff_io.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_turnoff_io.f: THSICE_PARAMS.h
thsice_write_pickup.f: THSICE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
thsice_write_pickup.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
thsice_write_pickup.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
thsice_write_pickup.f: THSICE_PARAMS.h THSICE_VARS.h
timeave_cumul_1k1t.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_cumul_1t.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_cumul_1vfc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_cumul_2v.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_cumul_2v.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h GRID.h
timeave_cumul_2v.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
timeave_cumul_2v.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
timeave_cumul_2v.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timeave_cumul_2v.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timeave_cumul_2v.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
timeave_cumul_2v.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
timeave_cumul_2v.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timeave_cumul_2v.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
timeave_cumul_2v.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
timeave_cumul_2v.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
timeave_cumul_2vfc.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_cumulate.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_cumul_dif_1t.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_cumul_dif_1t.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_cumul_dif_1t.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
timeave_cumul_dif_1t.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
timeave_cumul_dif_1t.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
timeave_cumul_dif_1t.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timeave_cumul_dif_1t.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timeave_cumul_dif_1t.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
timeave_cumul_dif_1t.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
timeave_cumul_dif_1t.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
timeave_cumul_dif_1t.f: TANPHIATV_MACROS.h
timeave_init_fixed.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_init_fixed.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_init_fixed.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
timeave_norma_2v.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_normalize.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_normaliz.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_reset.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_reset.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_statvars.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_statvars.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
timeave_statvars.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
timeave_statvars.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
timeave_statvars.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
timeave_statvars.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timeave_statvars.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timeave_statvars.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
timeave_statvars.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
timeave_statvars.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timeave_statvars.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
timeave_statvars.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
timeave_statvars.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h TIMEAVE_STATV.h
timeave_statv_write.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_statv_write.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_statv_write.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
timeave_statv_write.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
timeave_statv_write.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
timeave_statv_write.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
timeave_statv_write.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
timeave_statv_write.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timeave_statv_write.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
timeave_statv_write.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timeave_statv_write.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timeave_statv_write.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
timeave_statv_write.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
timeave_statv_write.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
timeave_statv_write.f: TANPHIATV_MACROS.h TIMEAVE_STATV.h
timeave_surf_flux.f: TIMEAVE_OPTIONS.h PACKAGES_CONFIG.h CPP_OPTIONS.h
timeave_surf_flux.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timeave_surf_flux.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
timeave_surf_flux.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
timeave_surf_flux.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
timeave_surf_flux.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
timeave_surf_flux.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
timeave_surf_flux.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
timeave_surf_flux.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
timeave_surf_flux.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timeave_surf_flux.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
timeave_surf_flux.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
timeave_surf_flux.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
timeave_surf_flux.f: SURFACE.h FFIELDS.h TIMEAVE_STATV.h
all_proc_die.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
all_proc_die.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
bar2.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
bar2.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
bar2.f: BAR2.h
bar_check.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
barrier.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
barrier.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
barrier.f: BARRIER.h
check_threads.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
check_threads.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
comm_stats.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
comm_stats.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
comm_stats.f: EXCH.h BAR2.h
different_multiple.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
diff_phase_multiple.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
eeboot.f: CPP_EEOPTIONS.h CPP_EEMACROS.h PACKAGES_CONFIG.h SIZE.h EEPARAMS.h
eeboot.f: EESUPPORT.h
eeboot.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
eeboot_minimal.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
eeboot_minimal.f: EEPARAMS.h EESUPPORT.h
eeboot_minimal.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
eedata_example.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
eedie.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
eedie.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
eeintro_msg.f: CPP_EEOPTIONS.h CPP_EEMACROS.h BUILD_INFO.h SIZE.h EEPARAMS.h
eeintro_msg.f: EESUPPORT.h
eeintro_msg.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
eeset_parms.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
eeset_parms.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
eewrite_eeenv.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
eewrite_eeenv.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch1_bg_r4_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_bg_r8_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_bg_rl_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_bg_rs_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_r4_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_r4.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EXCH.h
exch1_r8_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_r8.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EXCH.h
exch1_rl_ad.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EXCH.h
exch1_rl_cube_ad.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_rl_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_rl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EXCH.h
exch1_rs_ad.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EXCH.h
exch1_rs_cube_ad.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_rs_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_rs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EXCH.h
exch1_uv_r4_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_uv_r8_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_uv_rl_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_uv_rs_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_z_r4_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_z_r8_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_z_rl_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch1_z_rs_cube.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_3d_r4.f: EEPARAMS.h
exch_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_3d_r8.f: EEPARAMS.h
exch_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_3d_rl.f: EEPARAMS.h
exch_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_3d_rs.f: EEPARAMS.h
exch_cycle_ebl.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_cycle_ebl.f: EESUPPORT.h
exch_cycle_ebl.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_cycle_ebl.f: EXCH.h
exch_init.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
exch_init.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_init.f: EXCH.h
exch_r4_recv_get_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r4_recv_get_x.f: EESUPPORT.h
exch_r4_recv_get_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r4_recv_get_x.f: EXCH.h
exch_r4_recv_get_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r4_recv_get_y.f: EESUPPORT.h
exch_r4_recv_get_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r4_recv_get_y.f: EXCH.h
exch_r4_send_put_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r4_send_put_x.f: EESUPPORT.h
exch_r4_send_put_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r4_send_put_x.f: EXCH.h
exch_r4_send_put_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r4_send_put_y.f: EESUPPORT.h
exch_r4_send_put_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r4_send_put_y.f: EXCH.h
exch_r8_recv_get_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r8_recv_get_x.f: EESUPPORT.h
exch_r8_recv_get_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r8_recv_get_x.f: EXCH.h
exch_r8_recv_get_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r8_recv_get_y.f: EESUPPORT.h
exch_r8_recv_get_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r8_recv_get_y.f: EXCH.h
exch_r8_send_put_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r8_send_put_x.f: EESUPPORT.h
exch_r8_send_put_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r8_send_put_x.f: EXCH.h
exch_r8_send_put_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_r8_send_put_y.f: EESUPPORT.h
exch_r8_send_put_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_r8_send_put_y.f: EXCH.h
exch_rl_recv_get_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rl_recv_get_x.f: EESUPPORT.h
exch_rl_recv_get_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rl_recv_get_x.f: EXCH.h
exch_rl_recv_get_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rl_recv_get_y.f: EESUPPORT.h
exch_rl_recv_get_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rl_recv_get_y.f: EXCH.h
exch_rl_send_put_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rl_send_put_x.f: EESUPPORT.h
exch_rl_send_put_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rl_send_put_x.f: EXCH.h
exch_rl_send_put_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rl_send_put_y.f: EESUPPORT.h
exch_rl_send_put_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rl_send_put_y.f: EXCH.h
exch_rs_recv_get_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rs_recv_get_x.f: EESUPPORT.h
exch_rs_recv_get_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rs_recv_get_x.f: EXCH.h
exch_rs_recv_get_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rs_recv_get_y.f: EESUPPORT.h
exch_rs_recv_get_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rs_recv_get_y.f: EXCH.h
exch_rs_send_put_x.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rs_send_put_x.f: EESUPPORT.h
exch_rs_send_put_x.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rs_send_put_x.f: EXCH.h
exch_rs_send_put_y.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
exch_rs_send_put_y.f: EESUPPORT.h
exch_rs_send_put_y.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
exch_rs_send_put_y.f: EXCH.h
exch_s3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_s3d_r4.f: EEPARAMS.h
exch_s3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_s3d_r8.f: EEPARAMS.h
exch_s3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_s3d_rl.f: EEPARAMS.h
exch_s3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_s3d_rs.f: EEPARAMS.h
exch_sm_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_sm_3d_r4.f: EEPARAMS.h
exch_sm_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_sm_3d_r8.f: EEPARAMS.h
exch_sm_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_sm_3d_rl.f: EEPARAMS.h
exch_sm_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_sm_3d_rs.f: EEPARAMS.h
exch_uv_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_3d_r4.f: EEPARAMS.h
exch_uv_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_3d_r8.f: EEPARAMS.h
exch_uv_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_3d_rl.f: EEPARAMS.h
exch_uv_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_3d_rs.f: EEPARAMS.h
exch_uv_agrid_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_agrid_3d_r4.f: SIZE.h EEPARAMS.h
exch_uv_agrid_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_agrid_3d_r8.f: SIZE.h EEPARAMS.h
exch_uv_agrid_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_agrid_3d_rl.f: SIZE.h EEPARAMS.h
exch_uv_agrid_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_agrid_3d_rs.f: SIZE.h EEPARAMS.h
exch_uv_bgrid_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_bgrid_3d_r4.f: SIZE.h EEPARAMS.h
exch_uv_bgrid_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_bgrid_3d_r8.f: SIZE.h EEPARAMS.h
exch_uv_bgrid_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_bgrid_3d_rl.f: SIZE.h EEPARAMS.h
exch_uv_bgrid_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_bgrid_3d_rs.f: SIZE.h EEPARAMS.h
exch_uv_dgrid_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_dgrid_3d_r4.f: SIZE.h EEPARAMS.h
exch_uv_dgrid_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_dgrid_3d_r8.f: SIZE.h EEPARAMS.h
exch_uv_dgrid_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_dgrid_3d_rl.f: SIZE.h EEPARAMS.h
exch_uv_dgrid_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
exch_uv_dgrid_3d_rs.f: SIZE.h EEPARAMS.h
exch_uv_xy_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xy_r4.f: EEPARAMS.h
exch_uv_xy_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xy_r8.f: EEPARAMS.h
exch_uv_xy_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xy_rl.f: EEPARAMS.h
exch_uv_xy_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xy_rs.f: EEPARAMS.h
exch_uv_xyz_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xyz_r4.f: EEPARAMS.h
exch_uv_xyz_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xyz_r8.f: EEPARAMS.h
exch_uv_xyz_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xyz_rl.f: EEPARAMS.h
exch_uv_xyz_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_uv_xyz_rs.f: EEPARAMS.h
exch_xy_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xy_r4.f: EEPARAMS.h
exch_xy_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xy_r8.f: EEPARAMS.h
exch_xy_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xy_rl.f: EEPARAMS.h
exch_xy_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xy_rs.f: EEPARAMS.h
exch_xyz_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xyz_r4.f: EEPARAMS.h
exch_xyz_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xyz_r8.f: EEPARAMS.h
exch_xyz_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xyz_rl.f: EEPARAMS.h
exch_xyz_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_xyz_rs.f: EEPARAMS.h
exch_z_3d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_z_3d_r4.f: EEPARAMS.h
exch_z_3d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_z_3d_r8.f: EEPARAMS.h
exch_z_3d_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_z_3d_rl.f: EEPARAMS.h
exch_z_3d_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
exch_z_3d_rs.f: EEPARAMS.h
fill_cs_corner_ag_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
fill_cs_corner_ag_rl.f: SIZE.h EEPARAMS.h
fill_cs_corner_tr_rl.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
fill_cs_corner_tr_rl.f: SIZE.h EEPARAMS.h
fill_cs_corner_uv_rs.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
fill_cs_corner_uv_rs.f: SIZE.h EEPARAMS.h
fool_the_compiler.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
gather_2d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
gather_2d_r4.f: EEPARAMS.h EESUPPORT.h
gather_2d_r4.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
gather_2d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
gather_2d_r8.f: EEPARAMS.h EESUPPORT.h
gather_2d_r8.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
gather_2d_wh_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
gather_2d_wh_r4.f: EEPARAMS.h EESUPPORT.h
gather_2d_wh_r4.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
gather_2d_wh_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
gather_2d_wh_r8.f: EEPARAMS.h EESUPPORT.h
gather_2d_wh_r8.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
gather_vector.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
gather_vector.f: EEPARAMS.h EESUPPORT.h
gather_vector.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
gather_xz.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gather_xz.f: EESUPPORT.h
gather_xz.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
gather_yz.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
gather_yz.f: EESUPPORT.h
gather_yz.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
global_max.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
global_max.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
global_max.f: GLOBAL_MAX.h
global_sum.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
global_sum.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
global_sum.f: GLOBAL_SUM.h
global_sum_singlecpu.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h
global_sum_singlecpu.f: SIZE.h EEPARAMS.h EESUPPORT.h
global_sum_singlecpu.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
global_sum_singlecpu.f: GLOBAL_SUM.h EEBUFF_SCPU.h
global_sum_tile.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
global_sum_tile.f: EESUPPORT.h
global_sum_tile.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
global_sum_tile.f: GLOBAL_SUM.h
global_vec_sum.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
global_vec_sum.f: EESUPPORT.h
global_vec_sum.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
global_vec_sum.f: GLOBAL_SUM.h
gsum.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
gsum.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
ini_communication_patterns.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h
ini_communication_patterns.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
ini_communication_patterns.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
ini_communication_patterns.f: EXCH.h
ini_procs.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
ini_procs.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
ini_threading_environment.f: CPP_EEOPTIONS.h CPP_EEMACROS.h PACKAGES_CONFIG.h
ini_threading_environment.f: SIZE.h EEPARAMS.h EESUPPORT.h
ini_threading_environment.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
lef_zero.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
master_cpu_io.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
master_cpu_thread.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
master_cpu_thread.f: EESUPPORT.h
master_cpu_thread.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
mds_byteswapi4.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
mds_byteswapr4.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
mds_byteswapr8.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
mds_check4file.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
mdsfindunit.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
mds_reclen.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
memsync.f: CPP_EEOPTIONS.h CPP_EEMACROS.h
nml_change_syntax.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
nml_set_terminator.f: CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
open_copy_data_file.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
print.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
print.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_2d_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
scatter_2d_r4.f: EEPARAMS.h EESUPPORT.h
scatter_2d_r4.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_2d_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
scatter_2d_r8.f: EEPARAMS.h EESUPPORT.h
scatter_2d_r8.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_2d_wh_r4.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
scatter_2d_wh_r4.f: EEPARAMS.h EESUPPORT.h
scatter_2d_wh_r4.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_2d_wh_r8.f: PACKAGES_CONFIG.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
scatter_2d_wh_r8.f: EEPARAMS.h EESUPPORT.h
scatter_2d_wh_r8.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_vector.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
scatter_vector.f: EESUPPORT.h
scatter_vector.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_xz.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
scatter_xz.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
scatter_yz.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
scatter_yz.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
stop_if_error.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
timers.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
timers.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
utils.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
write_utils.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
adams_bashforth2.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
adams_bashforth2.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
adams_bashforth3.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
adams_bashforth3.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
calc_3d_diffusivity.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
calc_3d_diffusivity.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
calc_3d_diffusivity.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
calc_3d_diffusivity.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
calc_3d_diffusivity.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
calc_3d_diffusivity.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
calc_3d_diffusivity.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_3d_diffusivity.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_3d_diffusivity.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_3d_diffusivity.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_3d_diffusivity.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_3d_diffusivity.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
calc_3d_diffusivity.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
calc_3d_diffusivity.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_3d_diffusivity.f: GAD.h PTRACERS_SIZE.h PTRACERS_PARAMS.h
calc_buoyancy.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_buoyancy.f: DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
calc_common_factors.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_common_factors.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
calc_common_factors.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
calc_common_factors.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
calc_common_factors.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
calc_common_factors.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
calc_common_factors.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_common_factors.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_common_factors.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_common_factors.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_common_factors.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_common_factors.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_common_factors.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_common_factors.f: TANPHIATV_MACROS.h
calc_diffusivity.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
calc_diffusivity.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
calc_diffusivity.f: FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h
calc_diffusivity.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
calc_diffusivity.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
calc_diffusivity.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_diffusivity.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_diffusivity.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_diffusivity.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_diffusivity.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_diffusivity.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
calc_diffusivity.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
calc_diffusivity.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
calc_div_ghat.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_div_ghat.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
calc_div_ghat.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
calc_div_ghat.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
calc_div_ghat.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_div_ghat.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_div_ghat.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_div_ghat.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_div_ghat.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_div_ghat.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_div_ghat.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_div_ghat.f: TANPHIATV_MACROS.h DYNVARS.h
calc_grad_phi_hyd.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_grad_phi_hyd.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
calc_grad_phi_hyd.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
calc_grad_phi_hyd.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
calc_grad_phi_hyd.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
calc_grad_phi_hyd.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_grad_phi_hyd.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
calc_grad_phi_hyd.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_grad_phi_hyd.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_grad_phi_hyd.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
calc_grad_phi_hyd.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
calc_grad_phi_hyd.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
calc_grad_phi_hyd.f: DYNVARS.h
calc_grad_phi_surf.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_grad_phi_surf.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
calc_grad_phi_surf.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
calc_grad_phi_surf.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
calc_grad_phi_surf.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
calc_grad_phi_surf.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
calc_grad_phi_surf.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_grad_phi_surf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_grad_phi_surf.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
calc_grad_phi_surf.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_grad_phi_surf.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
calc_grad_phi_surf.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
calc_grad_phi_surf.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_grad_phi_surf.f: SURFACE.h
calc_gs.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
calc_gs.f: SIZE.h DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
calc_gs.f: FCORI_MACROS.h RESTART.h GAD.h
calc_gt.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
calc_gt.f: SIZE.h DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
calc_gt.f: FCORI_MACROS.h RESTART.h GAD.h
calc_gw.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
calc_gw.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
calc_gw.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
calc_gw.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
calc_gw.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
calc_gw.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_gw.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_gw.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_gw.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
calc_gw.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
calc_gw.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h RESTART.h SURFACE.h
calc_gw.f: DYNVARS.h NH_VARS.h
calc_ivdc.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
calc_ivdc.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
calc_ivdc.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
calc_ivdc.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
calc_ivdc.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
calc_ivdc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_ivdc.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_ivdc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_ivdc.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
calc_ivdc.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
calc_ivdc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
calc_oce_mxlayer.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
calc_oce_mxlayer.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
calc_oce_mxlayer.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
calc_oce_mxlayer.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_oce_mxlayer.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
calc_oce_mxlayer.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
calc_oce_mxlayer.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_oce_mxlayer.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_oce_mxlayer.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_oce_mxlayer.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_oce_mxlayer.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_oce_mxlayer.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_oce_mxlayer.f: TANPHIATV_MACROS.h DYNVARS.h GMREDI.h
calc_phi_hyd.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
calc_phi_hyd.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
calc_phi_hyd.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_phi_hyd.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
calc_phi_hyd.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
calc_phi_hyd.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_phi_hyd.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_phi_hyd.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
calc_phi_hyd.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
calc_phi_hyd.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
calc_phi_hyd.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h
calc_phi_hyd.f: PARAMS_MACROS.h FCORI_MACROS.h SURFACE.h DYNVARS.h
calc_r_star.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
calc_r_star.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
calc_r_star.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
calc_r_star.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
calc_r_star.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_r_star.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_r_star.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_r_star.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_r_star.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_r_star.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_r_star.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_r_star.f: TANPHIATV_MACROS.h SURFACE.h
calc_surf_dr.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_surf_dr.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
calc_surf_dr.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
calc_surf_dr.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
calc_surf_dr.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_surf_dr.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_surf_dr.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_surf_dr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_surf_dr.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_surf_dr.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_surf_dr.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_surf_dr.f: TANPHIATV_MACROS.h SURFACE.h
calc_viscosity.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
calc_viscosity.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
calc_viscosity.f: FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h DXC_MACROS.h
calc_viscosity.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
calc_viscosity.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
calc_viscosity.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
calc_viscosity.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
calc_viscosity.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
calc_viscosity.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_viscosity.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_viscosity.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_viscosity.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_viscosity.f: TANPHIATV_MACROS.h
calc_wsurf_tr.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
calc_wsurf_tr.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
calc_wsurf_tr.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
calc_wsurf_tr.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
calc_wsurf_tr.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
calc_wsurf_tr.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
calc_wsurf_tr.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
calc_wsurf_tr.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
calc_wsurf_tr.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
calc_wsurf_tr.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
calc_wsurf_tr.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
calc_wsurf_tr.f: TANPHIATV_MACROS.h SURFACE.h
cg2d.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cg2d.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h CG2D.h
cg2d_nsa.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cg2d_nsa.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h CG2D.h
cg2d_sr.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cg2d_sr.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h CG2D.h
cg3d.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
cg3d.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
cg3d.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
cg3d.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
cg3d.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
cg3d.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
cg3d.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
cg3d.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
cg3d.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
cg3d.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
cg3d.f: SURFACE.h CG3D.h
check_pickup.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
check_pickup.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h RESTART.h
config_check.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
config_check.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
config_check.f: FCORI_MACROS.h
config_summary.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
config_summary.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
config_summary.f: FCORI_MACROS.h EOS.h GRID.h GRID_MACROS.h DXC_MACROS.h
config_summary.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
config_summary.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
config_summary.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
config_summary.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
config_summary.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
config_summary.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
config_summary.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
config_summary.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
config_summary.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
config_summary.f: TANPHIATV_MACROS.h
convective_adjustment.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
convective_adjustment.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
convective_adjustment.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
convective_adjustment.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
convective_adjustment.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
convective_adjustment.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
convective_adjustment.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
convective_adjustment.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
convective_adjustment.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
convective_adjustment.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
convective_adjustment.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
convective_adjustment.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
convective_adjustment.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
convective_adjustment.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
convective_adjustment.f: TIMEAVE_STATV.h TIMEAVE_OPTIONS.h
convective_adjustment_ini.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
convective_adjustment_ini.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
convective_adjustment_ini.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
convective_adjustment_ini.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
convective_adjustment_ini.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
convective_adjustment_ini.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
convective_adjustment_ini.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
convective_adjustment_ini.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
convective_adjustment_ini.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
convective_adjustment_ini.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
convective_adjustment_ini.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
convective_adjustment_ini.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
convective_adjustment_ini.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
convective_adjustment_ini.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
convective_adjustment_ini.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
convective_adjustment_ini.f: TANPHIATV_MACROS.h TIMEAVE_STATV.h
convective_adjustment_ini.f: TIMEAVE_OPTIONS.h
convectively_mixtracer.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
convectively_mixtracer.f: EEPARAMS.h
convective_weights.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
convective_weights.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
convective_weights.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
convective_weights.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
convective_weights.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
convective_weights.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
convective_weights.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
convective_weights.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
convective_weights.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
convective_weights.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
convective_weights.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
convective_weights.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
convective_weights.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
correction_step.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
correction_step.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
correction_step.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
correction_step.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
correction_step.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
correction_step.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
correction_step.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
correction_step.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
correction_step.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
correction_step.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
correction_step.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
correction_step.f: TANPHIATV_MACROS.h DYNVARS.h
cycle_tracer.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
cycle_tracer.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
diags_oceanic_surf_flux.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
diags_oceanic_surf_flux.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
diags_oceanic_surf_flux.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diags_oceanic_surf_flux.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
diags_oceanic_surf_flux.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
diags_oceanic_surf_flux.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diags_oceanic_surf_flux.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diags_oceanic_surf_flux.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
diags_oceanic_surf_flux.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diags_oceanic_surf_flux.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
diags_oceanic_surf_flux.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diags_oceanic_surf_flux.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
diags_oceanic_surf_flux.f: TANPHIATV_MACROS.h DYNVARS.h SURFACE.h FFIELDS.h
diags_phi_hyd.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
diags_phi_hyd.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diags_phi_hyd.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
diags_phi_hyd.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
diags_phi_hyd.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diags_phi_hyd.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diags_phi_hyd.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diags_phi_hyd.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diags_phi_hyd.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
diags_phi_hyd.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diags_phi_hyd.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
diags_phi_hyd.f: TANPHIATV_MACROS.h SURFACE.h DYNVARS.h
diags_phi_rlow.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
diags_phi_rlow.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diags_phi_rlow.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
diags_phi_rlow.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
diags_phi_rlow.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
diags_phi_rlow.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
diags_phi_rlow.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
diags_phi_rlow.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
diags_phi_rlow.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
diags_phi_rlow.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
diags_phi_rlow.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
diags_phi_rlow.f: TANPHIATV_MACROS.h SURFACE.h DYNVARS.h
diags_rho.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
diags_rho.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
diags_rho.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
diags_rho.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
diags_rho.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
diags_rho.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
diags_rho.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
diags_rho.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
diags_rho.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
diags_rho.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
diags_rho.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
do_atmospheric_phys.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
do_atmospheric_phys.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
do_atmospheric_phys.f: PARAMS_MACROS.h FCORI_MACROS.h
do_fields_blocking_exchanges.f: PACKAGES_CONFIG.h CPP_OPTIONS.h
do_fields_blocking_exchanges.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
do_fields_blocking_exchanges.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h
do_fields_blocking_exchanges.f: FCORI_MACROS.h DYNVARS.h GAD.h CD_CODE_VARS.h
do_gterm_blocking_exchanges.f: PACKAGES_CONFIG.h CPP_OPTIONS.h
do_gterm_blocking_exchanges.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
do_gterm_blocking_exchanges.f: EEPARAMS.h DYNVARS.h
do_oceanic_phys.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
do_oceanic_phys.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
do_oceanic_phys.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
do_oceanic_phys.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
do_oceanic_phys.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
do_oceanic_phys.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
do_oceanic_phys.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
do_oceanic_phys.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
do_oceanic_phys.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
do_oceanic_phys.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
do_oceanic_phys.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
do_oceanic_phys.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
do_oceanic_phys.f: TANPHIATV_MACROS.h DYNVARS.h TIMEAVE_STATV.h
do_oceanic_phys.f: TIMEAVE_OPTIONS.h
do_stagger_fields_exchanges.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
do_stagger_fields_exchanges.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
do_stagger_fields_exchanges.f: FCORI_MACROS.h DYNVARS.h
do_statevars_diags.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
do_statevars_diags.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
do_statevars_diags.f: PARAMS_MACROS.h FCORI_MACROS.h
do_statevars_tave.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
do_statevars_tave.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
do_statevars_tave.f: PARAMS_MACROS.h FCORI_MACROS.h
do_the_model_io.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
do_the_model_io.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
do_the_model_io.f: FCORI_MACROS.h DYNVARS.h
do_write_pickup.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
do_write_pickup.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
do_write_pickup.f: FCORI_MACROS.h RESTART.h
dynamics.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
dynamics.f: OBCS_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
dynamics.f: FCORI_MACROS.h DYNVARS.h CD_CODE_VARS.h GRID.h GRID_MACROS.h
dynamics.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
dynamics.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
dynamics.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
dynamics.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
dynamics.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
dynamics.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
dynamics.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
dynamics.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
dynamics.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
external_fields_load.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
external_fields_load.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
external_fields_load.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h GRID.h
external_fields_load.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
external_fields_load.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
external_fields_load.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
external_fields_load.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
external_fields_load.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
external_fields_load.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
external_fields_load.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
external_fields_load.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
external_fields_load.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
external_fields_load.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
external_fields_load.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
external_fields_load.f: DYNVARS.h
external_forcing.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
external_forcing.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
external_forcing.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
external_forcing.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
external_forcing.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
external_forcing.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
external_forcing.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
external_forcing.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
external_forcing.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
external_forcing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
external_forcing.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
external_forcing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
external_forcing.f: TANPHIATV_MACROS.h DYNVARS.h FFIELDS.h SURFACE.h
external_forcing_surf.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
external_forcing_surf.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
external_forcing_surf.f: PARAMS_MACROS.h FCORI_MACROS.h FFIELDS.h DYNVARS.h
external_forcing_surf.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
external_forcing_surf.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
external_forcing_surf.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
external_forcing_surf.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
external_forcing_surf.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
external_forcing_surf.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
external_forcing_surf.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
external_forcing_surf.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
external_forcing_surf.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
external_forcing_surf.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
external_forcing_surf.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
external_forcing_surf.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
external_forcing_surf.f: SEAICE_PARAMS.h SEAICE.h SHELFICE.h
find_alpha.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h DYNVARS.h
find_alpha.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EOS.h GRID.h
find_alpha.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
find_alpha.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
find_alpha.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
find_alpha.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
find_alpha.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
find_alpha.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
find_alpha.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
find_alpha.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
find_alpha.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
find_alpha.f: TANPHIATV_MACROS.h
find_rho.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
find_rho.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EOS.h
forward_step.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
forward_step.f: CPP_EEMACROS.h GMREDI_OPTIONS.h OBCS_OPTIONS.h
forward_step.f: SEAICE_OPTIONS.h PTRACERS_OPTIONS.h SIZE.h EEPARAMS.h
forward_step.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h SIGREG.h
freesurf_rescale_g.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
freesurf_rescale_g.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
freesurf_rescale_g.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
freesurf_rescale_g.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
freesurf_rescale_g.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
freesurf_rescale_g.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
freesurf_rescale_g.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
freesurf_rescale_g.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
freesurf_rescale_g.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
freesurf_rescale_g.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
freesurf_rescale_g.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
freesurf_rescale_g.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
freesurf_rescale_g.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
freesurf_rescale_g.f: SURFACE.h
freeze.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
freeze.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
freeze_surface.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
freeze_surface.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
freeze_surface.f: FCORI_MACROS.h DYNVARS.h GRID.h GRID_MACROS.h DXC_MACROS.h
freeze_surface.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
freeze_surface.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
freeze_surface.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
freeze_surface.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
freeze_surface.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
freeze_surface.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
freeze_surface.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
freeze_surface.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
freeze_surface.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
freeze_surface.f: TANPHIATV_MACROS.h FFIELDS.h
grad_sigma.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
grad_sigma.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
grad_sigma.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
grad_sigma.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
grad_sigma.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
grad_sigma.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
grad_sigma.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
grad_sigma.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
grad_sigma.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
grad_sigma.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
grad_sigma.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
grad_sigma.f: FCORI_MACROS.h
impldiff.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
impldiff.f: SIZE.h DYNVARS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
impldiff.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
impldiff.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
impldiff.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
impldiff.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
impldiff.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
impldiff.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
impldiff.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
impldiff.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
impldiff.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h GAD.h
impldiff.f: PTRACERS_SIZE.h PTRACERS_PARAMS.h
ini_cartesian_grid.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_cartesian_grid.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_cartesian_grid.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
ini_cartesian_grid.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_cartesian_grid.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ini_cartesian_grid.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_cartesian_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cartesian_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_cartesian_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_cartesian_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cartesian_grid.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ini_cartesian_grid.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
ini_cartesian_grid.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_cg2d.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_cg2d.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_cg2d.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_cg2d.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_cg2d.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_cg2d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cg2d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_cg2d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cg2d.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_cg2d.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_cg2d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h CG2D.h OBCS.h
ini_cg3d.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_cg3d.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_cg3d.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_cg3d.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_cg3d.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_cg3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cg3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_cg3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cg3d.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_cg3d.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_cg3d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h CG3D.h
ini_cg3d.f: SOLVE_FOR_PRESSURE3D.h OBCS.h
ini_cori.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_cori.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_cori.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_cori.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_cori.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_cori.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_cori.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_cori.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cori.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_cori.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_cori.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h MONITOR.h
ini_curvilinear_grid.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ini_curvilinear_grid.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
ini_curvilinear_grid.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ini_curvilinear_grid.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_curvilinear_grid.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_curvilinear_grid.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_curvilinear_grid.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_curvilinear_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_curvilinear_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_curvilinear_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_curvilinear_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_curvilinear_grid.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ini_curvilinear_grid.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
ini_curvilinear_grid.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_cylinder_grid.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_cylinder_grid.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_cylinder_grid.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
ini_cylinder_grid.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_cylinder_grid.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ini_cylinder_grid.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_cylinder_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_cylinder_grid.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_cylinder_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_cylinder_grid.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_cylinder_grid.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_cylinder_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_depths.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_depths.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_depths.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_depths.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_depths.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_depths.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_depths.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_depths.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_depths.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_depths.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_depths.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_depths.f: TANPHIATV_MACROS.h SURFACE.h
ini_dynvars.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ini_dynvars.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
ini_eos.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ini_eos.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EOS.h GRID.h GRID_MACROS.h
ini_eos.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_eos.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
ini_eos.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_eos.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_eos.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_eos.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_eos.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_eos.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_eos.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
ini_fields.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_fields.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_forcing.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_forcing.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_forcing.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_forcing.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_forcing.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_forcing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_forcing.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_forcing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_forcing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_forcing.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_forcing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_forcing.f: TANPHIATV_MACROS.h SURFACE.h FFIELDS.h
ini_grid.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_grid.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_grid.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_grid.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_grid.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_grid.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_grid.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_grid.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_grid.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h MONITOR.h
ini_hfac.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ini_hfac.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_hfac.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_hfac.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_hfac.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_hfac.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_hfac.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_hfac.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_hfac.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_hfac.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_linear_phisurf.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ini_linear_phisurf.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
ini_linear_phisurf.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ini_linear_phisurf.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_linear_phisurf.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_linear_phisurf.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_linear_phisurf.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_linear_phisurf.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_linear_phisurf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_linear_phisurf.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_linear_phisurf.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_linear_phisurf.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
ini_linear_phisurf.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
ini_linear_phisurf.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_linear_phisurf.f: SURFACE.h
ini_masks_etc.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ini_masks_etc.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
ini_masks_etc.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
ini_masks_etc.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_masks_etc.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
ini_masks_etc.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_masks_etc.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_masks_etc.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_masks_etc.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_masks_etc.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_masks_etc.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_masks_etc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
ini_mixing.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_mixing.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_mixing.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_mixing.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_mixing.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_mixing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_mixing.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_mixing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_mixing.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_mixing.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_mixing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_mixing.f: TANPHIATV_MACROS.h DYNVARS.h
ini_mnc_vars.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ini_mnc_vars.f: CPP_EEMACROS.h SIZE.h GRID.h GRID_MACROS.h DXC_MACROS.h
ini_mnc_vars.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_mnc_vars.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
ini_mnc_vars.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_mnc_vars.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_mnc_vars.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_mnc_vars.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_mnc_vars.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_mnc_vars.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_mnc_vars.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h
ini_mnc_vars.f: PARAMS_MACROS.h FCORI_MACROS.h cal.h
ini_model_io.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
ini_model_io.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h EESUPPORT.h
ini_model_io.f: /glade/u/apps/ch/opt/mpt/2.19/opt/hpe/hpc/mpt/mpt-2.19/include/mpif.h
ini_model_io.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h RESTART.h
ini_model_io.f: EEBUFF_SCPU.h
ini_nh_fields.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_nh_fields.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_nh_fields.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_nh_fields.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_nh_fields.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_nh_fields.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_nh_fields.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_nh_fields.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_nh_fields.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_nh_fields.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_nh_fields.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_nh_fields.f: TANPHIATV_MACROS.h RESTART.h NH_VARS.h
ini_nh_vars.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ini_nh_vars.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h NH_VARS.h
ini_nlfs_vars.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_nlfs_vars.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_nlfs_vars.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_nlfs_vars.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_nlfs_vars.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_nlfs_vars.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_nlfs_vars.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_nlfs_vars.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_nlfs_vars.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_nlfs_vars.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_nlfs_vars.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_nlfs_vars.f: TANPHIATV_MACROS.h SURFACE.h DYNVARS.h
ini_parms.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ini_parms.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EOS.h
ini_p_ground.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h GRID.h
ini_p_ground.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_p_ground.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_p_ground.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_p_ground.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_p_ground.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_p_ground.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_p_ground.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_p_ground.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_p_ground.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_p_ground.f: TANPHIATV_MACROS.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
ini_p_ground.f: FCORI_MACROS.h SURFACE.h
ini_pressure.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_pressure.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EOS.h
ini_pressure.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_pressure.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_pressure.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_pressure.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_pressure.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_pressure.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_pressure.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_pressure.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_pressure.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_pressure.f: TANPHIATV_MACROS.h DYNVARS.h
ini_psurf.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_psurf.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_psurf.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_psurf.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_psurf.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_psurf.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_psurf.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_psurf.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_psurf.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_psurf.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_psurf.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h SURFACE.h
ini_psurf.f: CD_CODE_VARS.h
ini_salt.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_salt.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_salt.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_salt.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_salt.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_salt.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_salt.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_salt.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_salt.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_salt.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_salt.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
ini_sigma_hfac.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_sigma_hfac.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_sigma_hfac.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_sigma_hfac.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_sigma_hfac.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
ini_sigma_hfac.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_sigma_hfac.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
ini_sigma_hfac.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_sigma_hfac.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
ini_sigma_hfac.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
ini_sigma_hfac.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
ini_sigma_hfac.f: TANPHIATV_MACROS.h SURFACE.h
ini_spherical_polar_grid.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_spherical_polar_grid.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
ini_spherical_polar_grid.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
ini_spherical_polar_grid.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
ini_spherical_polar_grid.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
ini_spherical_polar_grid.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ini_spherical_polar_grid.f: HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_spherical_polar_grid.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
ini_spherical_polar_grid.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_spherical_polar_grid.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_spherical_polar_grid.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
ini_spherical_polar_grid.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
ini_spherical_polar_grid.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
ini_spherical_polar_grid.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_spherical_polar_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
ini_theta.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
ini_theta.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
ini_theta.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
ini_theta.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
ini_theta.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_theta.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_theta.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_theta.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_theta.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_theta.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_theta.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
initialise_fixed.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
initialise_fixed.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
initialise_fixed.f: FCORI_MACROS.h
initialise_varia.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
initialise_varia.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
initialise_varia.f: FCORI_MACROS.h DYNVARS.h SURFACE.h
ini_vel.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
ini_vel.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
ini_vel.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
ini_vel.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
ini_vel.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
ini_vel.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
ini_vel.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
ini_vel.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_vel.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_vel.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_vel.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
ini_vertical_grid.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
ini_vertical_grid.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
ini_vertical_grid.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
ini_vertical_grid.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
ini_vertical_grid.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
ini_vertical_grid.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
ini_vertical_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
ini_vertical_grid.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
ini_vertical_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
ini_vertical_grid.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
ini_vertical_grid.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
ini_vertical_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
integrate_for_w.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
integrate_for_w.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
integrate_for_w.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
integrate_for_w.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
integrate_for_w.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
integrate_for_w.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
integrate_for_w.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
integrate_for_w.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
integrate_for_w.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
integrate_for_w.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
integrate_for_w.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
integrate_for_w.f: TANPHIATV_MACROS.h SURFACE.h
integr_continuity.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
integr_continuity.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
integr_continuity.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h GRID.h
integr_continuity.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
integr_continuity.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
integr_continuity.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
integr_continuity.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
integr_continuity.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
integr_continuity.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
integr_continuity.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
integr_continuity.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
integr_continuity.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
integr_continuity.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
integr_continuity.f: FFIELDS.h
load_fields_driver.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
load_fields_driver.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
load_fields_driver.f: PARAMS_MACROS.h FCORI_MACROS.h
load_grid_spacing.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
load_grid_spacing.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
load_grid_spacing.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
load_grid_spacing.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
load_grid_spacing.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
load_grid_spacing.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
load_grid_spacing.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
load_grid_spacing.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
load_grid_spacing.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
load_grid_spacing.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
load_grid_spacing.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
load_grid_spacing.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
load_ref_files.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
load_ref_files.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
momentum_correction_step.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
momentum_correction_step.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
momentum_correction_step.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
packages_boot.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
packages_boot.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
packages_boot.f: FCORI_MACROS.h
packages_check.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
packages_check.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
packages_check.f: FCORI_MACROS.h
packages_error_msg.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
packages_error_msg.f: EEPARAMS.h
packages_init_fixed.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
packages_init_fixed.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
packages_init_fixed.f: PARAMS_MACROS.h FCORI_MACROS.h
packages_init_variables.f: PACKAGES_CONFIG.h AD_CONFIG.h CPP_OPTIONS.h
packages_init_variables.f: CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
packages_init_variables.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
packages_readparms.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
packages_readparms.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
packages_readparms.f: PARAMS_MACROS.h FCORI_MACROS.h
packages_write_pickup.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
packages_write_pickup.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
packages_write_pickup.f: PARAMS_MACROS.h FCORI_MACROS.h RESTART.h
plot_field.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
plot_field.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
post_cg3d.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
post_cg3d.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
post_cg3d.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
post_cg3d.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
post_cg3d.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
post_cg3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
post_cg3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
post_cg3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
post_cg3d.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
post_cg3d.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
post_cg3d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h DYNVARS.h
pre_cg3d.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
pre_cg3d.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
pre_cg3d.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
pre_cg3d.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
pre_cg3d.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
pre_cg3d.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
pre_cg3d.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
pre_cg3d.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
pre_cg3d.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
pre_cg3d.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
pre_cg3d.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h FFIELDS.h
pre_cg3d.f: DYNVARS.h OBCS.h
pressure_for_eos.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
pressure_for_eos.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
pressure_for_eos.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
pressure_for_eos.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
pressure_for_eos.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
pressure_for_eos.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
pressure_for_eos.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
pressure_for_eos.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
pressure_for_eos.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
pressure_for_eos.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
pressure_for_eos.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
pressure_for_eos.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
read_pickup.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
read_pickup.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
read_pickup.f: RESTART.h DYNVARS.h SURFACE.h GAD.h
remove_mean.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h EEPARAMS.h
remove_mean.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
rotate_spherical_polar_grid.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
rotate_spherical_polar_grid.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
rotate_spherical_polar_grid.f: FCORI_MACROS.h GRID.h GRID_MACROS.h
rotate_spherical_polar_grid.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
rotate_spherical_polar_grid.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
rotate_spherical_polar_grid.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
rotate_spherical_polar_grid.f: HFACS_MACROS.h HFACW_MACROS.h
rotate_spherical_polar_grid.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
rotate_spherical_polar_grid.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
rotate_spherical_polar_grid.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
rotate_spherical_polar_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
rotate_spherical_polar_grid.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
rotate_spherical_polar_grid.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
rotate_spherical_polar_grid.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
rotate_spherical_polar_grid.f: MASKW_MACROS.h MASKS_MACROS.h
rotate_spherical_polar_grid.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
rotate_uv2en.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h EEPARAMS.h
rotate_uv2en.f: SIZE.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
rotate_uv2en.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
rotate_uv2en.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
rotate_uv2en.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
rotate_uv2en.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
rotate_uv2en.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
rotate_uv2en.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
rotate_uv2en.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
rotate_uv2en.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
rotate_uv2en.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
rotate_uv2en.f: TANPHIATV_MACROS.h
seawater.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
set_defaults.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
set_defaults.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
set_grid_factors.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
set_grid_factors.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
set_grid_factors.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
set_grid_factors.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
set_grid_factors.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
set_grid_factors.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
set_grid_factors.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
set_grid_factors.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
set_grid_factors.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
set_grid_factors.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
set_grid_factors.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
set_grid_factors.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h
set_parms.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
set_parms.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h EOS.h
set_ref_state.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
set_ref_state.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
set_ref_state.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
set_ref_state.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
set_ref_state.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
set_ref_state.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
set_ref_state.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
set_ref_state.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
set_ref_state.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
set_ref_state.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
set_ref_state.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
set_ref_state.f: TANPHIATV_MACROS.h EOS.h
set_write_global_pickup.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
solve_for_pressure.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
solve_for_pressure.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
solve_for_pressure.f: PARAMS_MACROS.h FCORI_MACROS.h GRID.h GRID_MACROS.h
solve_for_pressure.f: DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
solve_for_pressure.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
solve_for_pressure.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
solve_for_pressure.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
solve_for_pressure.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
solve_for_pressure.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
solve_for_pressure.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
solve_for_pressure.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
solve_for_pressure.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
solve_for_pressure.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
solve_for_pressure.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h
solve_for_pressure.f: SURFACE.h FFIELDS.h DYNVARS.h SOLVE_FOR_PRESSURE.h
solve_for_pressure.f: CD_CODE_VARS.h OBCS.h
solve_pentadiagonal.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
solve_pentadiagonal.f: EEPARAMS.h
solve_tridiagonal.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
solve_tridiagonal.f: EEPARAMS.h
state_summary.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
state_summary.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
state_summary.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
state_summary.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
state_summary.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
state_summary.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
state_summary.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
state_summary.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
state_summary.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
state_summary.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
state_summary.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
state_summary.f: TANPHIATV_MACROS.h DYNVARS.h
swfrac.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
taueddy_external_forcing.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
taueddy_external_forcing.f: CPP_EEMACROS.h GMREDI_OPTIONS.h SIZE.h EEPARAMS.h
taueddy_external_forcing.f: PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
taueddy_external_forcing.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
taueddy_external_forcing.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
taueddy_external_forcing.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h
taueddy_external_forcing.f: HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
taueddy_external_forcing.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
taueddy_external_forcing.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
taueddy_external_forcing.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
taueddy_external_forcing.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
taueddy_external_forcing.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
taueddy_external_forcing.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
taueddy_external_forcing.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
taueddy_external_forcing.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
taueddy_external_forcing.f: TANPHIATV_MACROS.h DYNVARS.h FFIELDS.h GMREDI.h
taueddy_init_varia.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
taueddy_init_varia.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
taueddy_init_varia.f: FFIELDS.h
the_main_loop.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
the_main_loop.f: CPP_EEMACROS.h OBCS_OPTIONS.h SEAICE_OPTIONS.h
the_main_loop.f: GMREDI_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
the_main_loop.f: FCORI_MACROS.h
the_model_main.f: AD_CONFIG.h PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
the_model_main.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
the_model_main.f: FCORI_MACROS.h DYNVARS.h
thermodynamics.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
thermodynamics.f: CPP_EEMACROS.h GAD_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h
thermodynamics.f: PARAMS_MACROS.h FCORI_MACROS.h RESTART.h DYNVARS.h GRID.h
thermodynamics.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
thermodynamics.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
thermodynamics.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
thermodynamics.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
thermodynamics.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
thermodynamics.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
thermodynamics.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
thermodynamics.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
thermodynamics.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
thermodynamics.f: TANPHIATV_MACROS.h GAD.h GAD_SOM_VARS.h PTRACERS_SIZE.h
thermodynamics.f: PTRACERS_PARAMS.h PTRACERS_FIELDS.h TIMEAVE_STATV.h
thermodynamics.f: TIMEAVE_OPTIONS.h
timestep.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
timestep.f: CD_CODE_OPTIONS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
timestep.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
timestep.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
timestep.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
timestep.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
timestep.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
timestep.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
timestep.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h
timestep.f: RA_MACROS.h RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h
timestep.f: MASKS_MACROS.h TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
timestep.f: RESTART.h DYNVARS.h
timestep_tracer.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
timestep_tracer.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
timestep_wvel.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
timestep_wvel.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
timestep_wvel.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
timestep_wvel.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
timestep_wvel.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
timestep_wvel.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
timestep_wvel.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
timestep_wvel.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
timestep_wvel.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
timestep_wvel.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
timestep_wvel.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
timestep_wvel.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h NH_VARS.h
tracers_correction_step.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
tracers_correction_step.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h
tracers_correction_step.f: PARAMS_MACROS.h FCORI_MACROS.h DYNVARS.h
tracers_iigw_correction.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
tracers_iigw_correction.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
tracers_iigw_correction.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
tracers_iigw_correction.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h
tracers_iigw_correction.f: DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
tracers_iigw_correction.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
tracers_iigw_correction.f: HFACW_MACROS.h RECIP_DXC_MACROS.h
tracers_iigw_correction.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
tracers_iigw_correction.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
tracers_iigw_correction.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
tracers_iigw_correction.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
tracers_iigw_correction.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
tracers_iigw_correction.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h
tracers_iigw_correction.f: RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
tracers_iigw_correction.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h DYNVARS.h
turnoff_model_io.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
turnoff_model_io.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
turnoff_model_io.f: FCORI_MACROS.h EXF_PARAM.h
update_cg2d.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
update_cg2d.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
update_cg2d.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
update_cg2d.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
update_cg2d.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
update_cg2d.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
update_cg2d.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
update_cg2d.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
update_cg2d.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
update_cg2d.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
update_cg2d.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
update_cg2d.f: TANPHIATV_MACROS.h SURFACE.h CG2D.h OBCS.h
update_etah.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
update_etah.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
update_etah.f: DYNVARS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
update_etah.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
update_etah.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
update_etah.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
update_etah.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
update_etah.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
update_etah.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h
update_etah.f: XC_MACROS.h YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
update_etah.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
update_etah.f: TANPHIATV_MACROS.h SURFACE.h FFIELDS.h
update_masks_etc.f: CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h SIZE.h
update_masks_etc.f: EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h GRID.h
update_masks_etc.f: GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
update_masks_etc.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
update_masks_etc.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
update_masks_etc.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
update_masks_etc.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
update_masks_etc.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
update_masks_etc.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
update_masks_etc.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
update_masks_etc.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
update_masks_etc.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
update_r_star.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
update_r_star.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
update_r_star.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
update_r_star.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_r_star.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
update_r_star.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
update_r_star.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
update_r_star.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
update_r_star.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
update_r_star.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
update_r_star.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
update_r_star.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
update_sigma.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
update_sigma.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
update_sigma.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h
update_sigma.f: DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h
update_sigma.f: DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h
update_sigma.f: HFACW_MACROS.h RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h
update_sigma.f: RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h
update_sigma.f: RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h
update_sigma.f: RECIP_HFACC_MACROS.h RECIP_HFACS_MACROS.h
update_sigma.f: RECIP_HFACW_MACROS.h XC_MACROS.h YC_MACROS.h RA_MACROS.h
update_sigma.f: RAW_MACROS.h RAS_MACROS.h MASKW_MACROS.h MASKS_MACROS.h
update_sigma.f: TANPHIATU_MACROS.h TANPHIATV_MACROS.h SURFACE.h
update_surf_dr.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
update_surf_dr.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
update_surf_dr.f: FCORI_MACROS.h GRID.h GRID_MACROS.h DXC_MACROS.h
update_surf_dr.f: DXF_MACROS.h DXG_MACROS.h DXV_MACROS.h DYC_MACROS.h
update_surf_dr.f: DYF_MACROS.h DYG_MACROS.h DYU_MACROS.h HFACC_MACROS.h
update_surf_dr.f: HFACS_MACROS.h HFACW_MACROS.h RECIP_DXC_MACROS.h
update_surf_dr.f: RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h RECIP_DXV_MACROS.h
update_surf_dr.f: RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h RECIP_DYG_MACROS.h
update_surf_dr.f: RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
update_surf_dr.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
update_surf_dr.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
update_surf_dr.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
update_surf_dr.f: TANPHIATV_MACROS.h SURFACE.h
write_grid.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
write_grid.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
write_grid.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
write_grid.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
write_grid.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
write_grid.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
write_grid.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
write_grid.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
write_grid.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
write_grid.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
write_grid.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
write_grid.f: TANPHIATV_MACROS.h
write_pickup.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h
write_pickup.f: CPP_EEMACROS.h SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h
write_pickup.f: FCORI_MACROS.h RESTART.h DYNVARS.h SURFACE.h GAD.h
write_state.f: PACKAGES_CONFIG.h CPP_OPTIONS.h CPP_EEOPTIONS.h CPP_EEMACROS.h
write_state.f: SIZE.h EEPARAMS.h PARAMS.h PARAMS_MACROS.h FCORI_MACROS.h
write_state.f: GRID.h GRID_MACROS.h DXC_MACROS.h DXF_MACROS.h DXG_MACROS.h
write_state.f: DXV_MACROS.h DYC_MACROS.h DYF_MACROS.h DYG_MACROS.h
write_state.f: DYU_MACROS.h HFACC_MACROS.h HFACS_MACROS.h HFACW_MACROS.h
write_state.f: RECIP_DXC_MACROS.h RECIP_DXF_MACROS.h RECIP_DXG_MACROS.h
write_state.f: RECIP_DXV_MACROS.h RECIP_DYC_MACROS.h RECIP_DYF_MACROS.h
write_state.f: RECIP_DYG_MACROS.h RECIP_DYU_MACROS.h RECIP_HFACC_MACROS.h
write_state.f: RECIP_HFACS_MACROS.h RECIP_HFACW_MACROS.h XC_MACROS.h
write_state.f: YC_MACROS.h RA_MACROS.h RAW_MACROS.h RAS_MACROS.h
write_state.f: MASKW_MACROS.h MASKS_MACROS.h TANPHIATU_MACROS.h
write_state.f: TANPHIATV_MACROS.h DYNVARS.h
ptracers_dyn_state_data_mod.f: ptracers_dyn_state_mod.o
recom_co2flux.f:
recom_readparms.f: mod_recom_para_def.o
recom_sinking.f: mod_recom_para_def.o
recom_sms.f: mod_recom_para_def.o
PTRACERS_MOD.h: ptracers_dyn_state_mod.o ptracers_dyn_state_data_mod.o
