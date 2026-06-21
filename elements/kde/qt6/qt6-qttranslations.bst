kind: cmake
description: qt6-qttranslations

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/qt6/qt6-qtbase.bst
- freedesktop-sdk.bst:components/mesa-headers.bst

sources:
- kind: git_repo
  url: github:qt/qttranslations.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.10.3-0-g3b21392d1aa34f1a6ba2f365147db1c56a2902f6
