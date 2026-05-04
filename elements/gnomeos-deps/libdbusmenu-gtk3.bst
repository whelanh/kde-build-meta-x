kind: manual
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

config:
  configure-commands:
  - autoreconf -ivf .
  - |
    ./configure --prefix='%{prefix}' \
      --libdir='%{libdir}' \
      --enable-gtk=3 \
      --disable-gtk-doc \
      --disable-dumper \
      --disable-tests \
      --disable-static

  build-commands:
  - make %{makejobs}

  install-commands:
  - make DESTDIR='%{install-root}' install
