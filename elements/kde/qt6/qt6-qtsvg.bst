kind: cmake
description: Qt6 SVG module

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/qt6/qt6-qtbase.bst
- freedesktop-sdk.bst:components/mesa-headers.bst

variables:
  cmake-local: -DINSTALL_ARCHDATADIR=lib

sources:
- kind: git_repo
  url: github:qt/qtsvg.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.10.3-0-g77765f981c067cec8f250e13688e5be75ee94a1b
