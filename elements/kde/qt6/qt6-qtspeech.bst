kind: cmake
description: Qt6 speech module

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtshadertools.bst
- kde/qt6/qt6-qtdeclarative.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- kde/qt6/qt6-qtmultimedia.bst

sources:
- kind: git_repo
  url: github:qt/qtspeech.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.10.3-0-g42aa038973d7a0063dd2e1c84fb34c9a6ba5c1f0
