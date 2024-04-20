FROM archlinux
# RUN pacman -Syu
RUN pacman -Sy
RUN pacman -S --noconfirm python python-pip
RUN pip install --break-system-packages soundfile numpy

# RUN pacman -S --noconfirm cudnn python
