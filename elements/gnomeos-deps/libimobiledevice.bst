kind: autotools
description: Library for communicating with iOS devices over USB

sources:
- kind: tar
  url: github:libimobiledevice/libimobiledevice/archive/refs/tags/1.4.0.tar.gz
  ref: 99e042acc1513815c36816723de52e0d0892e081f36ec29672531ce99ed59ccd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- gnomeos-deps/libplist.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libplist.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libusb.bst
