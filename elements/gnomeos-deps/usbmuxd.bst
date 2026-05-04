kind: autotools
description: USB multiplexor daemon for iOS/iPadOS device connections

sources:
- kind: git_repo
  url: github:libimobiledevice/usbmuxd.git
  track: "1.1.1"
  ref: 79c8b38d1488a6b07e1e68f39d8caec3f1a45622

variables:
  autogen: |
    echo "1.1.1" > .tarball-version
    autoreconf -ivf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- gnomeos-deps/libplist.bst
- gnomeos-deps/libimobiledevice.bst
- freedesktop-sdk.bst:components/libusb.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libplist.bst
- gnomeos-deps/libimobiledevice.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/systemd.bst
