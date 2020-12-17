#!/bin/bash
#PBS -N bgc_run
#PBS -A UWHO0005
#PBS -l walltime=12:00:00
#PBS -q economy
#PBS -j oe
#PBS -m abe
#PBS -M cschultz@whoi.edu
#PBS -l select=2:ncpus=32:mpiprocs=32

export RUNDIR=/glade/scratch/chschult/bgc_run

if [ ! -d $RUNDIR ]
then
    mkdir -p $RUNDIR
fi

#cp -r ../input ${RUNDIR}
#cp -r ../code ${RUNDIR}
cp -r ../run/ $RUNDIR
cp ../input/* $RUNDIR/run
#ln -s /glade/p_old/work/chschult/MITgcm_input/* $RUNDIR/run
#ln -s /glade/p_old/work/chschult/MITgcm_BGC_input/* $RUNDIR/run
#cp ../input/eedata $RUNDIR/run
ln -s /glade/work/chschult/MITgcm_input/* $RUNDIR/run

cd $RUNDIR/run
mpiexec_mpt dplace -s 1 ./mitgcmuv

