FROM "archlinux"
RUN pacman -Sy --noconfirm community/pacman-contrib bat git ctags ripgrep lynx vim vifm tmux
COPY ./config/archl/. /root/
ENV TERM=xterm-256color
ENV TZ=":/usr/share/zoneinfo/Europe/Chisinau"
