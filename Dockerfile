FROM archlinux
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman pacman -Syu --noconfirm && pacman -S --noconfirm python python-pip cudnn python-pytorch python-numpy

# configure nvidia container runtime
# https://github.com/NVIDIA/nvidia-container-runtime#environment-variables-oci-spec
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
