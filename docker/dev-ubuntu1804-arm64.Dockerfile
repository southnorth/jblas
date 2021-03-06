# Docker build environment for Ubuntu 18.04

FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install less htop build-essential vim ruby
RUN apt-get -y install openjdk-8-jdk-headless maven ant
RUN apt-get -y install gfortran libopenblas-dev
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-arm64/jre/bin/java

CMD mkdir /home/dev
WORKDIR /home/dev