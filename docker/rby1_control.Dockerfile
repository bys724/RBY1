FROM osrf/ros:humble-desktop-full-jammy

USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    curl \
    python3-pip \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip

RUN pip install rby1-sdk

RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc

WORKDIR /root