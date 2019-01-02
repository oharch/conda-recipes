mkdir build
cd build
cmake .. \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release
make
# make test
# test/run-tests
make install
# mkdir -p "$PREFIX"/share/licenses/yaml-cpp
# install -Dm644 LICENSE "$PREFIX"/share/licenses/yaml-cpp/LICENSE
# rm -rf "$PREFIX"/include/{gmock,gtest} "$PREFIX"/lib/lib{gmock,gtest}*.so
