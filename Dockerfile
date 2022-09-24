FROM ubuntu:focal
LABEL maintainer="smurata@pixelworks.com"

#For Buildroot
RUN apt-get update -y && apt-get install -y apt-utils
RUN apt-get update -y && apt-get install -y tzdata
ENV TZ=Asia/Tokyo
RUN apt-get update -y && apt-get install -y git bc bison flex libssl-dev make libc6-dev libncurses5-dev wget
RUN apt-get update -y && apt-get install -y crossbuild-essential-armhf
RUN apt-get update -y && apt-get install -y cpio unzip rsync python3
RUN apt-get update -y && apt-get install -y vim

WORKDIR /work
RUN wget https://buildroot.org/downloads/buildroot-2022.02.4.tar.gz && tar xzvf buildroot-2022.02.4.tar.gz
RUN mv /work/buildroot-2022.02.4 /work/buildroot
 

