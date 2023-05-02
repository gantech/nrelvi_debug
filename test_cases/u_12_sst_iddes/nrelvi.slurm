#!/bin/bash

#SBATCH --nodes=32
#SBATCH --time=2-24:00:00
#SBATCH --account=hfm
#SBATCH --job-name=nrelvi_u_12_sst_iddes
#SBATCH --output=out.%x_%j

module purge
export SPACK_MANAGER=${HOME}/exawind/spack-manager
source ${SPACK_MANAGER}/start.sh && quick-activate ${SPACK_MANAGER}/environments/exawind-intel
module load mpt
spack load exawind

echo "Job name       = $SLURM_JOB_NAME"
echo "Num. nodes     = $SLURM_JOB_NUM_NODES"
echo "Num. MPI Ranks = $mpi_ranks"
echo "Num. threads   = $OMP_NUM_THREADS"
echo "Working dir    = $PWD"

mpirun -np 1152 exawind --awind 972 --nwind 180 nrelvi-sst-iddes.yaml 
