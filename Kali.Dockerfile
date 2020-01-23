FROM "kalilinux/kali-linux-docker"
RUN apt-get -y update
RUN apt-get -y install lynx vifm vim tmux
COPY ./config/kalil/. /root/
ENV TERM=xterm-256color
