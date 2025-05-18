FROM ubuntu:22.04

RUN apt update -y && apt install vim build-essential git wget sudo -y

RUN useradd -m ctminh -s /usr/bin/bash -d /home/ctminh && echo "ctminh:abcdefgh#" | chpasswd && adduser ctminh sudo && echo "ctminh ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers 

RUN su ctminh && mkdir /home/ctminh/shared 

WORKDIR /home/ctminh

ENTRYPOINT ["bash"]