#!/bin/bash

#PBS -l nodes=1:ppn=1:gpus=1
#PBS -l walltime=60:00:00
#PBS -l mem=5GB
#PBS -N default
#PBS -j -oe

cd "$(dirname "$0")"
cd ../../../

module purge

module load cuda/7.0.28
module load theano/0.7.0
module load ipdb/0.8

THEANO_FLAGS=device=gpu,floatX=float32 python -u -m code.experiments.attention_nmt_seg.train_nmt 
