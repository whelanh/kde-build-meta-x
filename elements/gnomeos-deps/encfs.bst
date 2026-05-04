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
    -DFUSE_INCLUDE_DIR="%{prefix}/include/fuse3"
    -DFUSE_LIBRARIES="%{prefix}/%{libdir}/libfuse3.so"

config:
  configure-commands:
  - sed -i 's/cmake_minimum_required(VERSION 2.8)/cmake_minimum_required(VERSION 3.5)/' CMakeLists.txt
  - cmake -B%{build-dir} -H"%{conf-root}" -G"%{generator}" %{cmake-args}
