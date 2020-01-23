FROM "fedora"
RUN yum install -y vim vifm lynx tmux
COPY ./config/fedl/. /root/
ENV TERM=xterm-256color
