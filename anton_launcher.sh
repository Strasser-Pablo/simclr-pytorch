#!/usr/bin/env bash

export DATASET_DIR=/hdd/datasets

python main.py \
    --seed 0 \
    --cuda \
    --fp16 \
    --wandb_project pikachu \
    --dataset_handle bigearthnet \
    --val_split 0.25 \
    --test_split 0.25 \
    --epoch 100 \
    --batch_size 128 \
    --save_freq 1 \
    --lr 1e-3 \
    --wd 0.0 \
    --clip_norm 0 \
    --algo_handle 'bigearthnet_classifier' \
    --fc_hid_dim 128 \
    --finetune_probe_epochs 50 \
    --finetune_probe_batch_size 256 \
    --task train \
    --data_path /hdd/datasets/BigEarthNet-v1.0 \
    --truncate_at 10