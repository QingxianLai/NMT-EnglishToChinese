#!/bin/bash

cd ../..
pwd

python -u -m code.model.attention_nmt.translate -n -p 8 \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/results/attention_nmt_seg/model.npz \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/zh/seg/zh.train.seg.tok.pkl \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/en/train.en.tok.pkl \
    $HOME/Desktop/cNLP/project/NMT-EnglishToChinese/data/zh/seg/zh.test.seg.tok \
    .
