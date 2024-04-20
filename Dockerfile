FROM archlinux
RUN pacman -Syu
RUN pacman -S --noconfirm python python-pip cudnnn python-pytorch python-numpy
