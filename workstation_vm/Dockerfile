FROM kalilinux/kali-rolling:latest

RUN apt update && apt install  openssh-server sudo -y

RUN echo 'root:root' | chpasswd

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN service ssh start

EXPOSE 22
