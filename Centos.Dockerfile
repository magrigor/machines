FROM "centos"
RUN yum -y install vim tmux 
COPY ./config/centl/. /root/
ENV TERM=xterm-256color
