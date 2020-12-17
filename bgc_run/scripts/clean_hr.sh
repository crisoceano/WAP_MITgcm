cd ../run
rm -rf *

#
# namelists (always copy 'data' so not overwritten in restarts)
# 

ln -s ../input/* . 
ln -s ../input/input_files/* . 
rm -f data
cp -f ../input/data .

#
# code
#

ln -s ../build/mitgcmuv .
#
