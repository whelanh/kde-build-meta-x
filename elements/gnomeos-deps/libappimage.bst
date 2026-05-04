kind: cmake
description: Library for reading and creating AppImage files

sources:
- kind: tar
  url: tar_https:github.com/AppImage/libappimage/archive/refs/tags/v1.0.4-5.tar.gz
  ref: 2c4e18860a790c5959da6eb064cbd07f165fe6a9b15989491a3a3f176d06af31

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- gnomeos-deps/squashfuse.bst
- kde/libs/boost.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DUSE_CCACHE=OFF
    -DINSTALL_DOCS=OFF
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
