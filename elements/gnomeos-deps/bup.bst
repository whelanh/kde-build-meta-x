kind: autotools
description: Git-based backup tool

sources:
- kind: tar
  url: github:bup/bup/archive/refs/tags/bup-0.24b.tar.gz
  ref: 6bbf2a843ff94ebc83b36bbe6c6ea721945216d1091388352d1f99825a7267b7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/openssl.bst
