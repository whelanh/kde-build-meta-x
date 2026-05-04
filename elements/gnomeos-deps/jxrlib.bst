kind: manual
description: JPEG XR codec library

sources:
- kind: tar
  url: tar_https:github.com/mircomir/jxrlib/archive/refs/tags/1.3.2.tar.gz
  ref: 63730442f5fd6c5a79395bdd199040ab3821c229066049f52a57424a984b16ed

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - make SHARED=1 DIR_BUILD=./build

  install-commands:
  - make install SHARED=1 DIR_BUILD=./build DIR_INSTALL='%{install-root}%{prefix}'
  - |
    # Create symlinks for compat
    ldconfig -n '%{install-root}%{libdir}' 2>/dev/null || true
