kind: manual
description: Use YubiKey to unlock LUKS encrypted partitions

sources:
- kind: tar
  url: github_files:agherzan/yubikey-full-disk-encryption/archive/dcaac005b10eac132ac663c268318bd909bf027c.tar.gz
  ref: 464b6ce228c01f32fd3fb6eb983fd656148e122c435205c0771ae0213d900b5b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- kde-linux-deps/yubikey-personalization.bst
- freedesktop-sdk.bst:components/cryptsetup.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- kde-linux-deps/yubikey-personalization.bst
- freedesktop-sdk.bst:components/cryptsetup.bst

config:
  build-commands: []
  install-commands:
  - make DESTDIR="%{install-root}" PREFIX=/usr install
