#!/bin/bash

# Note change simpart for each restart.
# Simpart = 0 is the starting point
# maxtime is in minutes

# sbatch uses "minutes" format 
# gromacs -maxh option (argument 4 to slurm) uses hours

#if [ `hostname` == "tesla1.rit.albany.edu" ]
#    then
#    maxtime=2880 # 2 days  
#    maxhour=`echo $maxtime | awk '{print $1/60}'`
#fi

##############################################
# Time limits
maxhour=335 #1 day
maxtime=`echo $maxhour | awk '{print $1*60}'`
##############################################

######################
# Processor allocation
nproc=16

simpart=0
######################
dir=`pwd`
grodir=/network/rit/lab/ChenRNALab/bin/gromacs-2019.4/bin/bin/
for i in A B C D E
do
    curr=$dir/450/${i}
    echo $curr
    FN=T450${i}
	    
    sbatch -p minerva -n $nproc --exclusive --job-name=${i}450-prod\
	  slurm_prod.sh $curr $nproc $grodir $maxhour $FN
done




