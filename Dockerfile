FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime

RUN apt-get update && \
    apt-get install -y \
    git \
    wget \
    python3-pip \
    vim

RUN conda install -y jupyter torchvision tensorboard pip matplotlib
#RUN pip install tensorboardX