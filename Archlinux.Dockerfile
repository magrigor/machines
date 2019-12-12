FROM "archlinux"
RUN pacman -Sy --noconfirm git ripgrep lynx vim vifm
RUN echo $'\
accept_all_cookies=on\n\
case_sensitive_searching=on\n\
dir_list_order=ORDER_BY_NAME\n\
dir_list_style=MIXED_STYLE\n\
emacs_keys=off\n\
file_sorting_method=BY_FILENAME\n\
keypad_mode=LINKS_ARE_NUMBERED\n\
preferred_language=en\n\
select_popups=on\n\
show_color=default\n\
show_cursor=off\n\
show_dotfiles=off\n\
sub_bookmarks=OFF\n\
verbose_images=on\n\
vi_keys=on\n\
visited_links=LAST_REVERSED\n'\
>> /root/.lynxrc
COPY ./config/archl/.vifm /root/.vifm
COPY ./config/archl/.vim /root/.vim
ENV TERM=xterm-256color
