kind: cmake
description: qt6-qtquick3d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtshadertools.bst
- kde/qt6/qt6-qtdeclarative.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

sources:
- kind: git_repo
  url: github:qt/qtquick3d.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.10.3-0-g6dd12c7ff85ffcb00fa66f7cbb2b4f5eefe701c1
