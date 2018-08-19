#!/bin/bash
#BSUB -J dih_score_kinetic_lag10
#BSUB -n 1
#BSUB -R span[ptile=1]
#BSUB -R rusage[mem=5]
#BSUB -W 12:00
#BSUB -o /home/rafal.wiewiora/job_outputs/%J.stdout
#BSUB -eo /home/rafal.wiewiora/job_outputs/%J.stderr

source /home/rafal.wiewiora/.bashrc
cd $LS_SUBCWD

export PYEMMA_NJOBS=1 OMP_NUM_THREADS=1

# Launch job.
python score_dih_kinetic_lag10.py
