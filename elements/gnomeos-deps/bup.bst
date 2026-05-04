kind: make
description: Git-based backup tool

sources:
- kind: git_repo
  url: github:bup/bup.git
  track: bup-0.24b
  ref: 92b297dcc985c3c72d39661626b8ed022e85277a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  make-args: PYTHON=python3
  make-install-args: >-
    PYTHON=python3
    DESTDIR="%{install-root}"
    MANDIR="%{datadir}/man"
    BINDIR="%{bindir}"
    LIBDIR="%{libdir}/bup"
