FROM "debian:stable-slim"
RUN apt-get -y update
RUN apt-get -y install git man curl ctags ripgrep lynx vim vifm tmux
COPY ./config/debl/. /root/
ENV TERM=xterm-256color
