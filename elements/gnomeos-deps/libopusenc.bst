kind: autotools

sources:
- kind: tar
  url: tar_https:archive.mozilla.org/pub/opus/libopusenc-0.3.tar.gz
  ref: 55f7d9e99b8e2d4e0e193b2f0275501e6d9c1ebd29cadbea6a0da48a8587e3e0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/opus.bst
