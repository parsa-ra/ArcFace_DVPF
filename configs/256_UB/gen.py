from itertools import product
from json import dump, load

dataset_names = ["morph", "fairface"]
sensitive_attributes = ["gender", "race"] 
alphas = [0.5]
pfs = ["UB"]
z_dims = [256]



for dataset_name, sensitive_attribute, alpha, pf, z_dim in product(dataset_names, sensitive_attributes, alphas, pfs, z_dims): 
    print(dataset_name, sensitive_attribute, alpha, pf, z_dim)

    output_json = f'''
        "dataset_name": "{dataset_name}",
        "sensitive_attribute_name": "{sensitive_attribute}",
        "alpha": "{alpha}",
        "PF": "{pf}",
        "z_dim": "{z_dim}",
        "backbone": "arcface_r50",
        "backbone_trained_dataset": "MS1Mv3"
    '''

    output_file_name = f"dvpf_{dataset_name}_{sensitive_attribute}_{alpha}_{pf}_{z_dim}.json"

    output_json = '{' + output_json + '\n}' 
    print(output_json)

    with open(output_file_name, "w") as file: 
        file.writelines(output_json)
        # dump(output_json, file, ensure_ascii=False, indent=4)

