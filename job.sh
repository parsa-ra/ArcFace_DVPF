#!/bin/bash
echo "Running with arguments: $@"

# My stuff
source /remote/idiap.svm/home.active/prahimi/.toolsrc
source /remote/idiap.svm/home.active/prahimi/.bashrc

export MAMBA_ROOT_PREFIX=/remote/idiap.svm/temp.biometric01/prahimi/mambaforge  # optional, defaults to ~/micromamba
eval "$(/remote/idiap.svm/home.active/prahimi/bin/micromamba shell hook -s posix)"
micromamba activate proj 

cd /idiap/temp/prahimi/exps/proj #$(dirname $(realpath $0))
./ijb_mount.sh
cd /remote/idiap.svm/temp.biometric01/prahimi/exps/proj/arcface_eval

for config in configs/512/*.json; do
    echo "\n\nWorking on $config\n\n"  
    DVPF_ZDIM=512 python3 ./ijb_evals.py --model_file /idiap/temp/prahimi/exps/proj/pretrained_models/ms1mv3_arcface_r50_fp16.onnx --data_path ../ijb/ijb/ --batch_size 128 --dvpf_enable --dvpf_kwargs_path $config
done

