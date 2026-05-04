kind: cmake
description: CryFS encrypted filesystem (FUSE-based)

sources:
- kind: tar
  url: github:cryfs/cryfs/archive/refs/tags/1.0.3.tar.gz
  ref: 6742551505cc6b6b387279353627a27a93a3461b34284ba94666c365ad6cfcfd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- kde/libs/boost.bst
- gnomeos-deps/spdlog.bst
- gnomeos-deps/range-v3.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/curl.bst
- kde/libs/boost.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCRYFS_UPDATE_CHECKS=OFF
