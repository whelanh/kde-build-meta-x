kind: autotools
description: Z shell (zsh)

sources:
- kind: tar
  url: tar_https:www.zsh.org/pub/zsh-5.9.1.tar.xz
  ref: 5d20bec03f981dc4e9a09ec245e7415388ff641f79c5c5c416b5042e58d8280d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --enable-zsh-secure-free
    --enable-multibyte
    --with-tcsetpgrp

config:
  configure-commands:
    (<):
    - |
      # GCC 15: zsh's 'static boolcodes[]' conflicts with ncurses extern 'boolcodes[]'.
      # Rename to zsh_boolcodes to avoid the conflict (static so only used in this file).
      sed -i 's/\bboolcodes\b/zsh_boolcodes/g' Src/Modules/termcap.c

  install-commands:
    (>):
    - |
      # freedesktop-sdk-stripper can't handle hard links.
      # zsh installs zsh and zsh-5.9.1 as hard links; break it with a copy.
      tmpf=$(mktemp)
      cp /buildstream-install/usr/bin/zsh "$tmpf"
      mv "$tmpf" /buildstream-install/usr/bin/zsh-5.9.1

public:
  bst:
    integration-commands:
    - echo %{bindir}/zsh >> /etc/shells
