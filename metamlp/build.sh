#!/usr/bin/env bash

export LIBRARY_PATH=${CONDA_PREFIX}/lib
export CPP_INCLUDE_PATH=${CONDA_PREFIX}/include
export CPLUS_INCLUDE_PATH=${CONDA_PREFIX}/include
export CXX_INCLUDE_PATH=${CONDA_PREFIX}/include

mkdir -p ./bin
make clean && make
cp bin/metaMLP ${CONDA_PREFIX}/bin/
