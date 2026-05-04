kind: autotools
description: Library for passing menus over DBus (GTK3 variant)

sources:
- kind: tar
  url: tar_https:deb.debian.org/debian/pool/main/libd/libdbusmenu/libdbusmenu_18.10.20180917~bzr492+repack1.orig.tar.xz
  ref: 41298b926573419f21864205317461750b833c596af6ab0bd206e13336f8cee3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # Tarball has configure.ac but no generated configure.
  # autoreconf calls gtkdocize for GTK_DOC_CHECK; stub it since gtk-doc not installed.
  autogen: |
    mkdir -p m4
    printf 'AC_DEFUN([GTK_DOC_CHECK],[AM_CONDITIONAL([ENABLE_GTK_DOC],[false])])\n' > m4/gtk-doc.m4
    printf '#!/bin/sh\ntouch gtk-doc.make\n' > /usr/bin/gtkdocize
    chmod +x /usr/bin/gtkdocize
    autoreconf -ivf .
  conf-local: >-
    --enable-gtk=3
    --disable-gtk-doc
    --disable-dumper
    --disable-tests
    --disable-static
