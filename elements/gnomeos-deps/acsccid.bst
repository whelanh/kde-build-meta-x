kind: autotools
description: PC/SC driver for ACS USB CCID smart card readers

sources:
- kind: tar
  url: github:acshk/acsccid/archive/refs/tags/v1.1.13.tar.gz
  ref: 9cf511e3deab419a4d95fd5ebfc8e5aaaecf335a7dc51fbd7263d3e7046f8db8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
