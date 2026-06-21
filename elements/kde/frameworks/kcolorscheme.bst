kind: cmake
description: kcolorscheme

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/frameworks/extra-cmake-modules.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtdeclarative.bst
- kde/qt6/qt6-qtshadertools.bst
- kde/qt6/qt6-qttools.bst
- kde/frameworks/kcodecs.bst
- kde/frameworks/kconfig.bst
- kde/frameworks/kguiaddons.bst
- kde/frameworks/ki18n.bst
- freedesktop-sdk.bst:components/mesa-headers.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kcolorscheme.git
  track: master
  ref: v6.27.0-rc1-3-gc6e762243fe9c1346fd4eb608b523ad5090b4bf1
