kind: autotools
description: Git-based backup tool

sources:
- kind: git_repo
  url: github:bup/bup.git
  track: bup-0.24b
  ref: 92b297dcc985c3c72d39661626b8ed022e85277a

variables:
  autogen: |
    echo "0.24b" > .tarball-version
    autoreconf -ivf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/openssl.bst
