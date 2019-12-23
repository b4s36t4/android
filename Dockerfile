FROM gitpod/workspace-full-vnc

USER root

RUN apt-get update && \
    apt-get -y install  build-essential dart libkrb5-dev gcc make && \
    apt-get clean && \
    apt-get -y autoremove && \
    apt-get -y install openjdk-8-jdk
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
    
USER gitpod 