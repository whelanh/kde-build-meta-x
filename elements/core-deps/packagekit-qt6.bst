kind: cmake
description: PackageKit Qt6 bindings — Qt6 library for communicating with PackageKit daemon over D-Bus

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- core-deps/packagekit.bst
- kde/qt6/qt6-qtbase.bst

depends:
- core-deps/packagekit.bst
- kde/qt6/qt6-qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: github:PackageKit/packagekit-qt.git
  track: master
  ref: v1.1.4-0-gab1232bb5b91e412c11b043ef50e76f23f9a3052
