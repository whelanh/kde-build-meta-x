kind: autotools
description: FAT filesystem resize tool

sources:
- kind: tar
  url: github:ya-mouse/fatresize/archive/refs/tags/v1.1.0.tar.gz
  ref: 9232bc354b6c49a9e695e071bfd2d62ec79cdf4bc84928fcf1967fa39b75c33e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/parted.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/parted.bst

variables:
  conf-local: --disable-static
