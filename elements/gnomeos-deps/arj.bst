kind: autotools
description: ARJ archive format tool

sources:
- kind: tar
  url: tar_https:sourceforge.net/projects/arj/files/arj/3.10.22/arj-3.10.22.tar.gz/download
  ref: e29e35f7dc2df5e6a0744f4a0bb1dab19b85f6beb5083e65351c156d684edc67

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
