
# ArcFace's DVPF plugin

This is respository is forked from `https://github.com/deepinsight/insightface/tree/master/recognition/_evaluation_/ijb`

We simply add some functionality to pipe the DVPF models to the evaluation pipelines of IJBC.

For an example of usage please refer to the `./dvpf_sample.sh`

Here like before, we are iterating over the all the config files corresponding to different FR backbone and hyperparameters that the DVPF model are being trained upon. 

Note the `DVPF_ZDIM` environmental variable  which sets the dimentionality of the bottleneck layer of `DVPF` model. For example, if the dimentionality of the latent space of `DVPF` model is `512` you should set the `DVPF_ZDIM` to `512` and use the configs that corresponds to the `512` dimentionality. 

## Usage
```bash
DVPF_ZDIM=512 Dimensiontlaity of bottleneck layer of DVPF model \ 
python3 ./ijb_evals.py \ 
--model_file /path/to/the/model/files/from/insightfaces_respository # Path to the model file from the insightfaces' repository \
--data_path path/to/data # Path to the mounted ijb_testkit from the insightface using ratarmount. see the `../../ijb_mounth.sh` \
--batch_size 128 \
--dvpf_enable # Flag that enables the pipeing of the DVPF model \
--dvpf_kwargs_path /path/to/config # Path to the config file of DVPF model \
```

## Original README

[GDrive](https://drive.google.com/file/d/1aC4zf2Bn0xCVH_ZtEuQipR2JvRb1bf8o/view?usp=sharing)
or
[Baidu Cloud](https://pan.baidu.com/s/1oer0p4_mcOrs4cfdeWfbFg)

Updated Meta data (1:1 and 1:N):

   [Baidu Cloud](https://pan.baidu.com/s/1x-ytzg4zkCTOTtklUgAhfg) (code:7g8o) ;
   [GDrive](https://drive.google.com/file/d/1MXzrU_zUESSx_242pRUnVvW_wDzfU8Ky/view?usp=sharing)

Please apply for the IJB-B and IJB-C by yourself and strictly follow their distribution licenses.

## Aknowledgement

Great thanks for Weidi Xie's instruction [2,3,4,5] to evaluate ArcFace [1] on IJB-B[6] and IJB-C[7] (1:1 protocol).

Great thanks for Yuge Huang's code [8] to evaluate ArcFace [1] on IJB-B[6] and IJB-C[7] (1:N protocol). 

## Reference

[1] Jiankang Deng, Jia Guo, Niannan Xue, Stefanos Zafeiriou. Arcface: Additive angular margin loss for deep face recognition[J]. arXiv:1801.07698, 2018.

[2] https://github.com/ox-vgg/vgg_face2.

[3] Qiong Cao, Li Shen, Weidi Xie, Omkar M Parkhi, Andrew Zisserman. VGGFace2: A dataset for recognising faces across pose and age. FG, 2018.

[4] Weidi Xie, Andrew Zisserman. Multicolumn Networks for Face Recognition. BMVC 2018.

[5] Weidi Xie, Li Shen, Andrew Zisserman. Comparator Networks. ECCV, 2018.

[6] Whitelam, Cameron, Emma Taborsky, Austin Blanton, Brianna Maze, Jocelyn C. Adams, Tim Miller, Nathan D. Kalka et al. IARPA Janus Benchmark-B Face Dataset. CVPR Workshops, 2017.

[7] Maze, Brianna, Jocelyn Adams, James A. Duncan, Nathan Kalka, Tim Miller, Charles Otto, Anil K. Jain et al. IARPA Janus Benchmark–C: Face Dataset and Protocol. ICB, 2018.

[8] Yuge Huang, Pengcheng Shen, Ying Tai, Shaoxin Li, Xiaoming Liu, Jilin Li, Feiyue Huang, Rongrong Ji. Distribution Distillation Loss: Generic Approach for Improving Face Recognition from Hard Samples. arXiv:2002.03662.

