FROM "alpine"
RUN apk add --update tmux vim 
COPY ./config/alpl/. /root/
ENV TERM=xterm-256color
