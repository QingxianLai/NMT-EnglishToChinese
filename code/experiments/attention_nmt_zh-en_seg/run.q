#!/bin/bash

#PBS -l nodes=1:ppn=1:gpus=1
#PBS -l walltime=60:00:00
#PBS -l men=5GB
#PBS -N default
#PBS -j -oe

module purge

module load cuda/7.0.28
module load theano/0.7.0
module load ipdb/0.8

THEANO_FLAGS=device=gpu,floatX=float32 python -u train_nmt.py
