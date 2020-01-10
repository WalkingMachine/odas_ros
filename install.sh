#!/usr/bin/env bash
##
## This script is intended to be automatically run by catkin when compiling.
##

if [ ! -d odas ]; then
    sudo apt-get install -y libfftw3-dev libconfig-dev libasound2-dev &&\
    git clone https://github.com/introlab/odas.git &&\
    cd odas &&\
    mkdir build &&\
    cd build &&\
    cmake ../ &&\
    make &&\
    make install
fi
