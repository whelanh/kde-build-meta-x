kind: cmake
description: sonnet

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/frameworks/extra-cmake-modules.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtdeclarative.bst
- kde/qt6/qt6-qtshadertools.bst
- kde/qt6/qt6-qttools.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/hunspell.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
    -DSONNET_USE_ASPELL=OFF
    -DSONNET_USE_HSPELL=OFF
    -DSONNET_USE_VOIKKO=OFF

sources:
- kind: git_repo
  url: kde:frameworks/sonnet.git
  track: 'v6.*'
  ref: v6.27.0-rc1-2-gf28dfe7ce9487466083c90650fb49ca1fa61dcf5
