#!/bin/bash
set -e

rm -rf build
mkdir build
cd build

cmake .. \
  -DCMAKE_TOOLCHAIN_FILE=/project/toolchain-aarch64.cmake \
  -DCMAKE_BUILD_TYPE=Release

make -j$(nproc)