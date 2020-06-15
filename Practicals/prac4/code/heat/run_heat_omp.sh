#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:05:00
#SBATCH --job-name=heat
#SBATCH --gres=gpu:1

module purge
module load gcc/4.9.2

export OMP_NUM_THREADS=8

./heat_omp < heat.inp
