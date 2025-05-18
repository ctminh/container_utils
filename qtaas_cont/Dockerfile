FROM ubuntu:24.04

RUN apt-get update -y

RUN apt-get install vim build-essential ufw git wget iproute2 net-tools iputils-ping openssh-server openssh-client systemd systemd-sysv dbus dbus-user-session bash-completion zsh curl libdbus-1-dev linux-headers-generic -y

RUN apt-get install sudo -y

RUN apt-get install python3 python3-pip openmpi-bin openmpi-common libopenmpi-dev hwloc -y

RUN useradd -m admin && echo "admin:admin" | chpasswd && adduser admin sudo && echo "admin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers 

RUN su admin && mkdir /home/admin/shared

EXPOSE 22

USER admin
WORKDIR /home/admin

# ENTRYPOINT ["/sbin/init"]