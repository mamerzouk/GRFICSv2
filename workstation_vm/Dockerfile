FROM kalilinux/kali-rolling:latest

RUN apt update && apt install  openssh-server sudo -y

RUN echo 'root:root' | chpasswd

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN ssh-keygen -A

RUN mkdir -p /run/sshd

COPY ./usernames.txt .

COPY ./passwords.txt .

COPY ./plc /plc

EXPOSE 22

CMD /usr/sbin/sshd -D -o ListenAddress=0.0.0.0
