kind: cmake
description: Qt6 base module

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

depends:
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/sqlite.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xcb-util.bst
- freedesktop-sdk.bst:components/xcb-util-image.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- freedesktop-sdk.bst:components/xcb-util-renderutil.bst
- freedesktop-sdk.bst:components/xcb-util-cursor.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst

variables:
  cmake-local: >-
    -DINSTALL_ARCHDATADIR=lib
    -DQT_DISABLE_RPATH=ON
    -DBUILD_WITH_PCH=FALSE
    -DQT_FEATURE_openssl_linked=ON
    -DQT_FEATURE_system_sqlite=ON
    -DQT_FEATURE_vulkan=ON
    -DQT_FEATURE_xcb=ON
    -DQT_FEATURE_xcb_xlib=ON

config:
  install-commands:
    (>):
    - |
      # Break hardlinks that confuse freedesktop-sdk-stripper.
      # Qt installs e.g. qtpaths and qtpaths6 as hardlinks to the same inode.
      # Re-copy each file through a temp to give it a unique inode.
      for f in "%{install-root}"/usr/bin/qtpaths6 \
                "%{install-root}"/usr/bin/androiddeployqt6 \
                "%{install-root}"/usr/bin/qmake6; do
        base="${f%6}"
        if [ -f "$f" ] && [ -f "$base" ]; then
          cp "$f" "${f}.tmp" && mv "${f}.tmp" "$f"
          cp "$base" "${base}.tmp" && mv "${base}.tmp" "$base"
        fi
      done

sources:
- kind: git_repo
  url: github:qt/qtbase.git
  track: 'v6.*'
  exclude:
  - '*rc*'
  - '*alpha*'
  - '*beta*'
  ref: v6.11.1-0-g59c81a3c2247b821b9b84b4eb8d939b77e07e276
