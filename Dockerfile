FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04

# RUN apt-get update && apt-get install -y libcurl4-openssl-dev \
#                                          libssl-dev \
#                                          libhdf5-cpp-11 \
#                                          libzmq5 \
#                                          libboost-atomic1.58.0 \
#                                          libboost-chrono1.58.0 \
#                                          libboost-date-time1.58.0 \
#                                          libboost-filesystem1.58.0 \
#                                          libboost-program-options1.58.0 \
#                                          libboost-regex1.58.0 \
#                                          libboost-system1.58.0 \
#                                          libboost-log1.58.0 \
#                                          libboost-iostreams1.58.0 \
#                                          wget \
#                                          default-jdk

RUN cd /tmp &&\
    wget -q https://mirror.oxfordnanoportal.com/software/analysis/ont_guppy_6.3.8-1~focal_amd64.deb &&\
    dpkg -I /tmp/ont_guppy_6.3.8-1~focal_amd64.deb


