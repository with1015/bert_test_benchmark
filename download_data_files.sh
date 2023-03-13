#!/bin/bash

# Download BERT-large (uncased) model file
wget 'https://api.ngc.nvidia.com/v2/models/nvidia/bert_pyt_ckpt_large_pretraining_amp_lamb/versions/20.03.0/files/bert_large_pretrained_amp.pt'

# Download SQuAD v1.1 dataset
mkdir squad_v1.1
cd squad_v1.1
wget https://rajpurkar.github.io/SQuAD-explorer/dataset/train-v1.1.json -O train-v1.1.json
wget https://rajpurkar.github.io/SQuAD-explorer/dataset/dev-v1.1.json -O dev-v1.1.json
wget https://worksheets.codalab.org/rest/bundles/0xbcd57bee090b421c982906709c8c27e1/contents/blob/ -O evaluate-v1.1.py
cd ..
