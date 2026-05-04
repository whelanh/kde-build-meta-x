kind: autotools
description: High-quality printer drivers for CUPS (Gutenprint 5.3.4)

sources:
- kind: tar
  url: tar_https:downloads.sourceforge.net/project/gimp-print/gutenprint-5.3/5.3.4/gutenprint-5.3.4.tar.xz
  ref: db44a701d2b8e6a8931c83cec06c91226be266d23e5c189d20a39dd175f2023b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/cups-daemon.bst

depends:
- freedesktop-sdk.bst:components/cups-daemon.bst
- freedesktop-sdk.bst:components/libtiff.bst

variables:
  conf-local: >-
    --disable-static
    --disable-test
    --disable-samples
    --disable-escputil
    --without-gimp2
    --enable-cups-ppds
    --enable-translated-ppds
