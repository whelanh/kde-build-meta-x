kind: cmake
description: kpackage

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/frameworks/extra-cmake-modules.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qttools.bst
- kde/frameworks/karchive.bst
- kde/frameworks/kcoreaddons.bst
- kde/frameworks/ki18n.bst
- kde/qt6/qt6-qtdeclarative.bst
- kde/qt6/qt6-qtshadertools.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- kde/frameworks/kdoctools.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DCMAKE_DISABLE_FIND_PACKAGE_KF6DocTools=ON

sources:
- kind: git_repo
  url: kde:frameworks/kpackage.git
  track: 'v6.*'
  ref: v6.27.0-rc1-5-g4750e4ec9476ffad83b475a28582b40a45455dae
