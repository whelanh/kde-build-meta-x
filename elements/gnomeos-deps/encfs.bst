kind: cmake
description: EncFS encrypted virtual filesystem

sources:
- kind: tar
  url: github:vgough/encfs/archive/refs/tags/v1.9.5.tar.gz
  ref: 4709f05395ccbad6c0a5b40a4619d60aafe3473b1a79bafb3aa700b1f756fd63

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/openssl.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  cmake-local: >-
    -DBUILD_UNIT_TESTS=OFF
    -DUSE_INTERNAL_TINYXML=ON
    -DUSE_INTERNAL_EASYLOGGING=ON
    -DENABLE_NLS=OFF
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
    -DFUSE_INCLUDE_DIR="%{prefix}/include/fuse3"
    -DFUSE_LIBRARIES="%{libdir}/libfuse3.so"

config:
  configure-commands:
  - find . -name CMakeLists.txt | xargs sed -i 's/cmake_minimum_required(VERSION 2\.[0-9]*)/cmake_minimum_required(VERSION 3.5)/'
  - find . -name CMakeLists.txt | xargs sed -i 's/cmake_policy(SET CMP0063 OLD)/cmake_policy(SET CMP0063 NEW)/'
  - |
    # fuse3 changed fuse_unmount(mountpoint, chan) -> fuse_unmount(fuse*); patch to no-op
    sed -i 's/fuse_unmount(mountPoint, nullptr);/(void)mountPoint; \/\/ fuse3: unmount handled by fuse_loop/' \
      encfs/FileUtils.cpp
  - cmake -B%{build-dir} -H"%{conf-root}" -G"%{generator}" %{cmake-args} -DCMAKE_C_FLAGS="-DFUSE_USE_VERSION=31" -DCMAKE_CXX_FLAGS="-DFUSE_USE_VERSION=31"
