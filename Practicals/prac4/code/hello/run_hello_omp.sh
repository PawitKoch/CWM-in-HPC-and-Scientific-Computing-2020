#!/bin/bash

#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=00:05:00
#SBATCH --job-name=hello_omp
#SBATCH --gres=gpu:1

module purge
module load gcc/4.9.2

export OMP_NUM_THREADS=16

./hello_omp
