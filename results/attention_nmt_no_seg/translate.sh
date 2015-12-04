#!/bin/bash
#PBS -l nodes=1:ppn=1
#PBS -l walltime=60:00:00
#PBS -l mem=4GB
#PBS -N translate.seg.att
#PBS -j oe

# on hpc
module purge
module load theano/0.7.0
cd ./NLUDR/NMT-EnglishToChinese/

THEANO_FLAGS=floatX=float32 python -u -m code.model.attention_nmt.simple_translater -n \
    /home/ql516/NLUDR/NMT-EnglishToChinese/results/attention_nmt_seg/model.npz \
    /home/ql516/NLUDR/NMT-EnglishToChinese/data/zh/seg/zh.train.seg.tok.pkl \
    /home/ql516/NLUDR/NMT-EnglishToChinese/data/en/train.en.tok.pkl \
    /home/ql516/NLUDR/NMT-EnglishToChinese/data/zh/seg/zh.test.seg.tok \
    /home/ql516/NLUDR/NMT-EnglishToChinese/results/attention_nmt_seg/test.translation 



## on laptop
#cd ../..
#THEANO_FLAGS=floatX=float32 python -u -m code.model.attention_nmt.simple_translater -n \
    #$HOME/Desktop/cNLP/project/NMT-EnglishToChinese/results/attention_nmt_seg/model.npz \
    #$HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/zh/seg/zh.train.seg.tok.pkl \
    #$HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/en/train.en.tok.pkl \
    #$HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/zh/seg/zh.test.seg.tok \
    #$HOME/Desktop/cNLP/project/NMT-EnglishToChinese/results/attention_nmt_seg/test.translation
