#!/bin/sh

export CPATH=${PREFIX}/include
export CPP_INCLUDE_PATH=${PREFIX}/include

git submodule update --init

mkdir build && cd build

#cmake .. -DCMAKE_BUILD_TYPE=Release
#make -j4
#make simple_test
#mv megahit $PREFIX/bin
#mv megahit_core $PREFIX/bin
#mv megahit_core_no_hw_accel $PREFIX/bin

cmake .. \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DBOOST_NO_SYSTEM_PATHS=on \
      -DCMAKE_OSX_DEPLOYMENT_TARGET=""

cmake --build . --config Release --target install
