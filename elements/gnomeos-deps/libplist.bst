kind: autotools
description: Library for serialization of property lists (libimobiledevice dependency)

sources:
- kind: tar
  url: github:libimobiledevice/libplist/archive/refs/tags/2.7.0.tar.gz
  ref: 66fa17a29270cb25ceaf189430ea38037c066652c2989b58d7ef6120b1a208d3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
