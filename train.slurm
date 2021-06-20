#!/bin/bash
#SBATCH -J HFM
#SBATCH -p gpu_2080Ti
#SBATCH -w node11
#SBATCH --gres=gpu:1
##SBATCH -t 71:59:59
#SBATCH –exclusive
srun python3 ./Source/Cylinder2D_test.py > ./Results/train_GDwithM_return 2>&1
