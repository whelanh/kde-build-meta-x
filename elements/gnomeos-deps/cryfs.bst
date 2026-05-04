kind: cmake
description: CryFS encrypted filesystem (FUSE-based)
# NOTE: cryfs 1.0.3 requires boost >=1.84, spdlog, and range-v3,
# which are not currently provided by freedesktop-sdk.
# These dependencies must be added before this element can build:
#   - boost (components/boost.bst or gnomeos-deps/boost.bst)
#   - spdlog (gnomeos-deps/spdlog.bst)
#   - range-v3 (gnomeos-deps/range-v3.bst)

sources:
- kind: tar
  url: github:cryfs/cryfs/archive/refs/tags/1.0.3.tar.gz
  ref: 6742551505cc6b6b387279353627a27a93a3461b34284ba94666c365ad6cfcfd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pkg-config.bst
# TODO: add boost, spdlog, range-v3 elements when available

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/curl.bst
# TODO: add boost, spdlog, range-v3 elements when available

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCRYFS_UPDATE_CHECKS=OFF
