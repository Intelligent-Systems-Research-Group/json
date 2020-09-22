FROM nvidia/cuda:9.2-base
ADD . /json/
WORKDIR /json/
RUN apt-get update && apt-get install -y cmake g++ && \
mkdir build && mkdir ../install
WORKDIR /json/build
RUN cmake .. && make && cmake -DCMAKE_INSTALL_PREFIX=/json/install -P cmake_install.cmake
#MKDIR build
#WORKDIR build
