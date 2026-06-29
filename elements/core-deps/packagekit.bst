kind: meson
description: PackageKit — D-Bus abstraction layer for package management

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/jansson.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/sqlite.bst
- sdk/glib.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsystemd=false
    -Dgstreamer_plugin=false
    -Dgtk_module=false
    -Dcron=false
    -Dgobject_introspection=false
    -Dbash_completion=false
    -Dman_pages=false
    -Dgtk_doc=false
    -Dlegacy_tools=false
    -Dpython_backend=false
    -Doffline_update=false
    -Ddaemon_tests=false
    -Dpackaging_backend=dummy

sources:
- kind: git_repo
  url: github:PackageKit/PackageKit.git
  track: master
  ref: v1.3.6-0-g09e6d9d1eaf6c55d262a86d0cc27f7f54710b84c
