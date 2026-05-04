kind: autotools
description: HP Linux Imaging and Printing (hplip 3.25.8)
# NOTE: hplip is a complex package. It may require additional configuration.
# Known issues:
# - Requires Python 3 with distutils (deprecated in 3.12+; may need patching)
# - net-snmp (SNMP support) is optional; omitted here as it is not in FDO
# - --enable-fax-support requires mDNS/avahi
# - GUI components (hplip-gui) require Qt; omitted here via --disable-gui-build

sources:
- kind: tar
  url: tar_https:downloads.sourceforge.net/project/hplip/hplip/3.25.8/hplip-3.25.8.tar.gz
  ref: 1cf6d6c28735435c8eb6646e83bcfb721e51c4b1f0e8cf9105a6faf96dc9ad25

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/cups-daemon.bst

depends:
- freedesktop-sdk.bst:components/cups-daemon.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/avahi-libs.bst
- freedesktop-sdk.bst:components/openssl.bst
- gnomeos-deps/sane-backends.bst

variables:
  conf-local: >-
    --disable-foomatic-rip-hplip-install
    --disable-network-build
    --enable-hpcups-install
    --enable-cups-drv-install
    --enable-pp-build
    --disable-gui-build
    --disable-qt5
    --disable-qt4
    --enable-hpijs-install
    --enable-scan-build
    --enable-fax-build
    --disable-doc-build

environment:
  # cupsext.c calls internal functions with old names (renamed in 3.25.8 header);
  # functions are defined elsewhere so allow implicit declarations to link
  CFLAGS: -g -O2 -Wno-implicit-function-declaration

config:
  install-commands:
    (>):
    - |
      # Remove udev rules directory; udev rules handled separately
      rm -rf "%{install-root}/etc/udev" || true
