#!/bin/bash 


for config in configs/512/*.json; do
    echo "\n\nWorking on $config\n\n"
    DVPF_ZDIM=512 python3 ./ijb_evals.py --model_file /idiap/temp/prahimi/exps/proj/pretrained_models/ms1mv3_arcface_r50_fp16.onnx --data_path ../ijb/ijb/ --batch_size 128 --dvpf_enable --dvpf_kwargs_path $config
done
