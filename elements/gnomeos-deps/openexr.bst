kind: cmake
description: OpenEXR HDR image format library

sources:
- kind: tar
  url: tar_https:github.com/AcademySoftwareFoundation/openexr/archive/v3.4.11.tar.gz
  ref: 93d424d2fa697e88bbc4f74fa3db10491e77c83f4dcbdb3a8296a8d16242c16d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- gnomeos-deps/imath.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DOPENEXR_BUILD_PYTHON=OFF
    -DOPENEXR_FORCE_INTERNAL_DEFLATE=ON
    -DOPENEXR_INSTALL_EXAMPLES=OFF
