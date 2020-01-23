FROM "archlinux"
RUN pacman -S --noconfirm community/pacman-contrib bat man git ctags ripgrep lynx vim vifm tmux
COPY ./config/archl/. /root/
ENV TERM=xterm-256color
