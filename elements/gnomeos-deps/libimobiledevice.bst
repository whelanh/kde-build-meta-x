kind: autotools
description: Library for communicating with iOS devices over USB

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice.git
  track: "1.4.0"
  ref: 149f7623c672c1fa73122c7119a12bfc0012f2ac

variables:
  autogen: |
    echo "1.4.0" > .tarball-version
    autoreconf -ivf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- gnomeos-deps/libplist.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libplist.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libusb.bst
