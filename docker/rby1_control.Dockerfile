From cimg/python:3.10.16

USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install rby1-sdk

WORKDIR /root