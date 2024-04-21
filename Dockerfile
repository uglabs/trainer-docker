FROM nvidia/cuda:11.4.3-runtime-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive

# updated libsnd 
RUN apt update
RUN apt install -y git autoconf autogen automake build-essential libasound2-dev \
  libflac-dev libogg-dev libtool libvorbis-dev libopus-dev libmp3lame-dev \
  libmpg123-dev pkg-config python3
RUN git clone https://github.com/libsndfile/libsndfile && cd libsndfile && git checkout 1.2.2 && autoreconf -vif && ./configure --enable-werror && make && make install && cd .. && rm -r libsndfile
RUN apt install -y libsndfile1 

RUN apt install -y python3 python3-pip

RUN pip install torch==2.0.1
