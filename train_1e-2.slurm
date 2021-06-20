#!/bin/bash
##SBATCH -J HFM_SGD_1e-2
#SBATCH -J HFM_GDM_1e-2
##SBATCH -p gpu_2080Ti
#SBATCH -p gpu_v100
##SBATCH -w node11
#SBATCH -w node9
#SBATCH --gres=gpu:1
#SBATCH -t 71:59:59
#SBATCH –exclusive
srun python3 ./Source/Cylinder2D_test_GDM_1e-2.py > ./Results/train_GDM_1e-2_return 2>&1
