#!/bin/bash
##SBATCH -J HFM_SGD_decay
#SBATCH -J HFM_GDM_decay
##SBATCH -p gpu_2080Ti
#SBATCH -p gpu_v100
##SBATCH -w node11
#SBATCH -w node9
#SBATCH --gres=gpu:1
#SBATCH -t 71:59:59
#SBATCH –exclusive
#srun python3 ./Source/Cylinder2D_test_SGD_decay.py > ./Results/train_SGD_decay_return 2>&1
srun python3 ./Source/Cylinder2D_test_GDM_decay.py > ./Results/train_GDM_decay_return 2>&1
