kind: autotools
description: FUSE-based filesystem for SquashFS (required by libappimage)

sources:
- kind: tar
  url: tar_https:github.com/vasi/squashfuse/archive/refs/tags/0.6.1.tar.gz
  ref: 7730066d1e9baf0084c71674d168331296921e0d7ae0f34de7307744be4ed568

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/fuse3.bst

depends:
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:components/xz.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

# fuse3.bst provides headers but no fuse3.pc; override pkg-config vars
# so PKG_CHECK_MODULES([FUSE], [fuse3]) uses these directly
environment:
  FUSE_CFLAGS: -I/usr/include/fuse3
  FUSE_LIBS: -lfuse3 -lpthread

variables:
  conf-local: --disable-static --with-fuse=fuse3
