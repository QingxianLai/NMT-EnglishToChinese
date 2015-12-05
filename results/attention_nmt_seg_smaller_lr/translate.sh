#!/bin/bash
#PBS -l nodes=1:ppn=1
#PBS -l walltime=60:00:00
#PBS -l mem=4GB
#PBS -N translate.seg.att
#PBS -j oe

## on hpc
#module purge
#module load theano/0.7.0
#cd ./NLUDR/NMT-EnglishToChinese/

#THEANO_FLAGS=floatX=float32 python -u -m code.model.attention_nmt.simple_translater -n \
    #$CNLPDIR/results/attention_nmt_seg/model.npz \
    #$CNLPDIR/data/zh/seg/zh.train.seg.tok.pkl \
    #$CNLPDIR/data/en/train.en.tok.pkl \
    #$CNLPDIR/data/zh/seg/zh.test.seg.tok \
    #$CNLPDIR/results/attention_nmt_seg/test.translation 



# on laptop
cd ../..
THEANO_FLAGS=floatX=float32 python -u -m code.model.attention_nmt.simple_translater -n \
    $CNLPDIR/results/attention_nmt_seg_smaller_lr/model.npz \
    $CNLPDIR/data/zh/seg/zh.train.seg.tok.pkl \
    $CNLPDIR/data/en/train.en.tok.pkl \
    $CNLPDIR/results/source \
    $CNLPDIR/results/attention_nmt_seg_smaller_lr/test.translation
