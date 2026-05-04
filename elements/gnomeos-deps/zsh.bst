kind: autotools
description: Z shell (zsh)

sources:
- kind: tar
  url: tar_https:www.zsh.org/pub/zsh-5.9.tar.xz
  ref: 9b8d1ecedd5b5e81fbf1918e876752a7dd948e05c1a0dba10ab863842d45acd5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --enable-zsh-secure-free
    --enable-multibyte
    --with-tcsetpgrp

public:
  bst:
    integration-commands:
    - echo %{bindir}/zsh >> /etc/shells
