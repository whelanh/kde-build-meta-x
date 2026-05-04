kind: autotools
description: Intel power consumption and management analysis tool

sources:
- kind: tar
  url: github:fenrus75/powertop/archive/refs/tags/v2.15.tar.gz
  ref: e58ab3fd7b8ff5f4dd0d17f11848817e7d83c0a6918145ac81de03b5dccf8f49

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/pciutils.bst
- freedesktop-sdk.bst:components/ncurses.bst
- freedesktop-sdk.bst:components/systemd.bst
