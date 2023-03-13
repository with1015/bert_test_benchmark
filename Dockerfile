FROM nvcr.io/nvidia/pytorch:22.02-py3
MAINTAINER HyunjoonJeong <with1015@unist.ac.kr>

WORKDIR /workspace

RUN mkdir -p /workspace/apex
ADD . /workspace
RUN pip install -r requirements.txt
RUN cd apex && pip install -r requirements.txt
RUN cd /workspace/apex && pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .

CMD ["./run_squad_baseline.sh 4"]
