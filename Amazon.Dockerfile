FROM "amazonlinux:2"
RUN yum install -y lynx vim tmux
COPY ./config/awsl/. /root/
ENV TERM=xterm-256color
