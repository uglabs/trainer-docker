FROM archlinux
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python python-pip cudnnn python-pytorch python-numpy
