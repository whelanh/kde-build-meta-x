kind: cmake
description: ADB and fastboot Android platform tools (nmeum community fork) v34.0.5

sources:
- kind: tar
  url: github_files:nmeum/android-tools/releases/download/34.0.5/android-tools-34.0.5.tar.xz
  ref: fb09cff12cfb82acf42a8ebebbc0342671bfcd02117716368bdc73fdda60304a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/go.bst

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
