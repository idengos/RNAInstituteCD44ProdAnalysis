#!/bin/bash

dir=`pwd`
inputs=$dir/EquibIons
#grodir=~/RNAILabs/src/gromacs-2019.6/bin/bin

for i in A B C D E
do
    
    mkdir $dir/450/$i
    cd $dir/450/$i
    #number=$RANDOM
    #echo $number
	
    sed "s|XYX|450|g" $inputs/prod.mdp > prod.mdp
    cp $inputs/confout.gro $inputs/equib.gro 
    cp $inputs/equib.gro start.gro
    cp $inputs/topol.top .
    cp $inputs/*.itp .
    cp $inputs/equib.ndx ./prod.ndx
    	
    #$grodir/
    gmx grompp -f prod.mdp -p topol.top -c start.gro -o prod.tpr -n prod.ndx -r start.gro 
done
