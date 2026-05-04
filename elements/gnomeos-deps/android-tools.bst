kind: cmake
description: ADB and fastboot Android platform tools (nmeum community fork)

sources:
- kind: tar
  url: github:nmeum/android-tools/archive/refs/tags/35.0.2.tar.gz
  ref: 048bd42b75166fa4b66989b25ba1abb2b773aa7b7d012d52d84010b127db8801

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:bootstrap/pcre2.bst
- freedesktop-sdk.bst:components/protobuf.bst
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst

variables:
  cmake-local: >-
    -DANDROID_TOOLS_PATCH_VENDOR=ON
    -DANDROID_TOOLS_USE_BUNDLED_FMT=ON
    -DANDROID_TOOLS_USE_BUNDLED_LIBUSB=OFF
