FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04

MAINTAINER masuda@leapmind.io

RUN apt-get update && apt-get install -y \
    python-pip \
    build-essential \
    libasound2-dev \
    libjack-dev \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U pip

RUN pip install magenta-gpu

WORKDIR /magenta-data
