#!/bin/bash

cd ../..
pwd

THEANO_FLAGS=floatX=float32 python -u -m code.model.attention_nmt.simple_translater -n \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/results/attention_nmt_seg/model.npz \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/zh/seg/zh.train.seg.tok.pkl \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/en/train.en.tok.pkl \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/zh/seg/zh.test.seg.tok \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/results/attention_nmt_seg/test.translation \
