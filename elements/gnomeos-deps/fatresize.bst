kind: autotools
description: FAT filesystem resize tool

sources:
- kind: git_repo
  url: github:ya-mouse/fatresize.git
  track: v1.1.0
  ref: 316981e43b14f42a9aa7b461c97e1f61f6f2390b

variables:
  autogen: |
    echo "1.1.0" > .tarball-version
    autoreconf -ivf
  conf-local: --disable-static

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/parted.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/parted.bst
