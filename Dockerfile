FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        subversion \
        curl \
        texinfo \
        g++ \
        bison \
        flex \
        cvs \
        yasm \
        automake \
        libtool \
        autoconf \
        gcc \
        cmake \
        git \
        make \
        pkg-config \
        zlib1g-dev \
        mercurial \
        unzip \
        pax \
        nasm \
        gperf \
        autogen \
        bzip2 \
        p7zip-full \
        wget \
        ca-certificates \
        ed

WORKDIR /work

ADD . .

RUN ./cross_compile_ffmpeg.sh --compiler-flavors=win64 --ffmpeg-git-checkout-version=n3.4.2 --gcc-cpu-count=4

