kind: autotools
description: USB multiplexor daemon for iOS/iPadOS device connections

sources:
- kind: tar
  url: github:libimobiledevice/usbmuxd/archive/refs/tags/1.1.1.tar.gz
  ref: e7ce30143e69d77fc5aa6fb0cb5f0cfcdbeff47eb1ac7fd90ac259a90de9fadd

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
