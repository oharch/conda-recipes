#!/bin/bash

mkdir build
cd build

cmake .. \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_PREFIX_PATH=$PREFIX \

cmake --build . --config Release --target install
