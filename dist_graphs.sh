#!/bin/bash

dir=`pwd`
inputs=$dir/EquibIons
indies=$dir/PairIndices
for i in A B C D E
do

cd $dir/450/$i


gmx distance -f T450${i}.xtc -n $dir/gindex.ndx -s prod.tpr -oall finT450${i}.xvg < $dir/dist_in.txt


done
cd $dir
