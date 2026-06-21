kind: cmake
description: qt6-qtlocation

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtshadertools.bst
- kde/qt6/qt6-qtdeclarative.bst
- freedesktop-sdk.bst:components/mesa-headers.bst

variables:
  cmake-local: >-
    -DINSTALL_ARCHDATADIR=lib
    -DQT_DISABLE_RPATH=ON

sources:
- kind: git_repo
  url: github:qt/qtlocation.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.10.3-0-g4d4a981466d5b87330392140474b069e89884c91
