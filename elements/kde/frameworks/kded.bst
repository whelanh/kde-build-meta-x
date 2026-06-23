kind: cmake
description: kded

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/frameworks/extra-cmake-modules.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtdeclarative.bst
- kde/qt6/qt6-qtshadertools.bst
- kde/qt6/qt6-qttools.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- kde/frameworks/kconfig.bst
- kde/frameworks/kservice.bst
- kde/frameworks/kdbusaddons.bst
- kde/frameworks/kcoreaddons.bst
- kde/frameworks/kdoctools.bst
- kde/frameworks/kcrash.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DCMAKE_DISABLE_FIND_PACKAGE_KF6DocTools=ON

sources:
- kind: git_repo
  url: kde:frameworks/kded.git
  track: 'v6.*'
  ref: v6.27.0-rc1-4-gd17d444b54f8de50fd0cec14f8e5c4858a7cf6eb
