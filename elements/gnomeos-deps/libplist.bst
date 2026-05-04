kind: autotools
description: Library for serialization of property lists (libimobiledevice dependency)

sources:
- kind: git_repo
  url: github:libimobiledevice/libplist.git
  track: "2.7.0"
  ref: cf5897a71ea412ea2aeb1e2f6b5ea74d4fabfd8c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
