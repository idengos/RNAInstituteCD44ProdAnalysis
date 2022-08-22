#!/bin/bash

if [ $# -ne 5 ]
then
    echo "Error in $0 - Invalid Argument Count"
    echo "Usage : $0 dir nproc gromacs-bindir"
    exit
fi

module load mpi/openmpi-x86_64


cd $1
nproc=$2
grodir=$3
maxtime=$4
fname=$5

$grodir/gmx mdrun -s prod.tpr -c confout.gro -maxh $maxtime -deffnm $fname

