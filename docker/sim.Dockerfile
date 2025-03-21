From rainbowroboticsofficial/rby1-sim:latest

RUN apt-get update \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/exe/app