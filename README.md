# bert_test_benchmark

BERT large test benchmark between DDP and DeepSpeed

### Requirements
```
CUDA == 11.1
NVIDIA driver >= 450.0
DeepSpeed == 0.8.1
PyTorch == 1.10.0
mpi4py == 3.1.4
openmpi == 4.1.5
apex == 0.1
```

### How to run
```
# Download SQuAD v1.1 dataset and pretrained model file
./download_data_files.sh
./run_squad_baseline.sh [NODES]
./run_squad_deepspeed.sh [NODES]
```

### APEX issue
Sometimes there is APEX issue such as `UnencryptedCookieSessionFactoryConfig` error in pyramid library.
In this case, following below script can make solution.
```
git clone https://github.com/NVIDIA/apex
cd apex
pip install -v --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
```
