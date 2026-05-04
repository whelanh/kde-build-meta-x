kind: autotools
description: FUSE-based filesystem for SquashFS (required by libappimage)

sources:
- kind: tar
  url: tar_https:github.com/vasi/squashfuse/archive/refs/tags/0.6.1.tar.gz
  ref: 7730066d1e9baf0084c71674d168331296921e0d7ae0f34de7307744be4ed568

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/xz.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: --disable-static --with-fuse=fuse3
