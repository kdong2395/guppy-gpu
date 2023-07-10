FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04

ENV VERSION="6.5.7"

RUN apt-get update && apt-get install -y wget \
                                         libnvidia-compute-510-server \
                                         libzmq5

RUN cd /tmp &&\
    wget -q "https://mirror.oxfordnanoportal.com/software/analysis/ont_guppy_${VERSION}-1~focal_amd64.deb" &&\
    dpkg -i ont_guppy_${VERSION}-1~focal_amd64.deb &&\
    rm -f *.deb

RUN rm -f *.deb &&\
    apt-get autoremove --purge --yes &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
