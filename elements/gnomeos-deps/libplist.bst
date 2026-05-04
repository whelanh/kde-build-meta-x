kind: autotools
description: Library for serialization of property lists (libimobiledevice dependency)

sources:
- kind: tar
  url: github_files:libimobiledevice/libplist/releases/download/2.7.0/libplist-2.7.0.tar.bz2
  ref: 7ac42301e896b1ebe3c654634780c82baa7cb70df8554e683ff89f7c2643eb8b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
