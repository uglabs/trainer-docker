FROM archlinux
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python python-pip cudnn python-pytorch python-numpy
