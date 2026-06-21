kind: cmake
description: Qt6 image formats module

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/qt6/qt6-qtbase.bst
- freedesktop-sdk.bst:components/mesa-headers.bst

sources:
- kind: git_repo
  url: github:qt/qtimageformats.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.10.3-0-gcc5f5661ef75f08da7064227de38bab6cc3b857c
