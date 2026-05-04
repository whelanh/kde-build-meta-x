kind: autotools
description: inotifywait and inotifywatch CLI tools for filesystem event monitoring

sources:
- kind: tar
  url: github:inotify-tools/inotify-tools/archive/refs/tags/4.25.9.0.tar.gz
  ref: d33a4fd24c72c2d08893f129d724adf725b93dae96c359e4f4e9f32573cc853b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
