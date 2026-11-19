#!/bin/bash
#SBATCH -J PbSe_BO_Reproduce
#SBATCH -A m3578
#SBATCH -N 4
#SBATCH -C cpu
#SBATCH -q regular
#SBATCH -t 12:00:00             
#SBATCH -o PbSe_BO_Reproduce_%j.out

module load vasp/6.4.3-cpu

# OpenMP settings (64 MPI ranks, 4 nodes, 8 threads per rank = 512 physical cores)
export OMP_NUM_THREADS=8
export OMP_PLACES=threads
export OMP_PROC_BIND=spread

cd "$SLURM_SUBMIT_DIR"
/global/homes/t/tingray/.local/bin/bo_dftu