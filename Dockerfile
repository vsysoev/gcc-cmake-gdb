FROM gcc:6
LABEL org.opencontainers.image.source=https://github.com/vsysoev/gcc-cmake-gdb

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install --no-install-suggests --no-install-recommends \
    cmake gdb g++ libncurses5-dev libasound2-dev libfreetype6-dev libfontconfig1-dev