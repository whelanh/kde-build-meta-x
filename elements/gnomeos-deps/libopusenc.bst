kind: autotools

sources:
- kind: tar
  url: tar_https:downloads.xiph.org/releases/opus/libopusenc-0.3.tar.gz
  ref: f616d3aff9b2034547894ccb8ab56c36cf1a4acb0d922c5d7119f97bbe58642c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/opus.bst
