cd MNN && mkdir build_arm64 && cd build_arm64
cmake .. \
  -DCMAKE_TOOLCHAIN_FILE=~/arm64_build/toolchain-aarch64.cmake \
  -DCMAKE_INSTALL_PREFIX=$(pwd)/../../3rdparty/mnn-install \
  -DMNN_BUILD_SHARED_LIBS=OFF \
  -DMNN_BUILD_DEMO=OFF \
  -DMNN_BUILD_TOOLS=OFF \
  -DCMAKE_BUILD_TYPE=Release
make -j$(nproc) && make install