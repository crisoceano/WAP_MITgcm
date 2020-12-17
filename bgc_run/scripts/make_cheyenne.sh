cd ../build
rm -rf *
$ROOTDIR/tools/genmake2 -ieee -mods=../code -of=../../MITgcm_c62r/tools/build_options/linux_amd64_intel+mpi_cheyenne2 -mpi
make depend
make -j 1

