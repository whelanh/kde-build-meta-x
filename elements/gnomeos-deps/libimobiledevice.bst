kind: autotools
description: Library for communicating with iOS devices over USB

sources:
- kind: tar
  url: github_files:libimobiledevice/libimobiledevice/releases/download/1.4.0/libimobiledevice-1.4.0.tar.bz2
  ref: c0ec9700172bf635ccb5bed98daae607d2925c2bc3597f25706ecd9dfbfd2d9e
  ref: 99e042acc1513815c36816723de52e0d0892e081f36ec29672531ce99ed59ccd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- gnomeos-deps/libplist.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libplist.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libusb.bst
