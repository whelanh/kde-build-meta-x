kind: cmake
description: discover — KDE software store (Flatpak-enabled)

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/frameworks/extra-cmake-modules.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtdeclarative.bst
# Flatpak backend — libflatpak headers at configure time
- freedesktop-sdk.bst:components/flatpak.bst
# AppStream — C library (BASE) and Qt bindings (AppStreamQt — REQUIRED)
- freedesktop-sdk.bst:components/appstream.bst
- core-deps/appstream-qt.bst
# PackageKit Qt6 bindings — enables the PackageKit backend for system package management
- core-deps/packagekit-qt6.bst
- kde/frameworks/kcmutils.bst
- kde/frameworks/kconfig.bst
- kde/frameworks/kcoreaddons.bst
- kde/frameworks/kcrash.bst
- kde/frameworks/kdbusaddons.bst
- kde/frameworks/ki18n.bst
- kde/frameworks/kiconthemes.bst
- kde/frameworks/kio.bst
- kde/frameworks/kirigami.bst
- kde/frameworks/kjobwidgets.bst
- kde/frameworks/knewstuff.bst
- kde/frameworks/knotifications.bst
- kde/frameworks/kitemmodels.bst
- kde/frameworks/kuserfeedback.bst
- kde/frameworks/kservice.bst
- kde/frameworks/kstatusnotifieritem.bst
- kde/frameworks/kwidgetsaddons.bst
- kde/frameworks/kwindowsystem.bst
- kde/frameworks/purpose.bst
- kde/frameworks/attica.bst
- kde/frameworks/kidletime.bst
- kde/libs/qcoro.bst
- kde/libs/kirigami-addons.bst
# KCMUtils / KIO / ConfigWidgets find_dependency() chain at cmake configure time
- kde/frameworks/kconfigwidgets.bst
- kde/frameworks/kguiaddons.bst
- kde/frameworks/kcolorscheme.bst
- kde/frameworks/kcodecs.bst
- kde/frameworks/kcompletion.bst
- kde/frameworks/kitemviews.bst
- kde/frameworks/kpackage.bst
- kde/frameworks/kxmlgui.bst
- kde/frameworks/kglobalaccel.bst
- kde/frameworks/kbookmarks.bst
- kde/frameworks/solid.bst
- kde/frameworks/karchive.bst
- kde/frameworks/breeze-icons.bst

depends:
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/appstream.bst
- core-deps/appstream-qt.bst
- core-deps/packagekit-qt6.bst
- core-deps/packagekit.bst
- kde/libs/qcoro.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_HTML_DOCS=OFF
    -DBUILD_MAN_DOCS=OFF
    -DBUILD_QTHELP_DOCS=OFF
    -DBUILD_DOC=OFF
    -DKF_SKIP_PO_PROCESSING=ON
    -DBUILD_QT5=OFF
    -DBUILD_WITH_QT6=ON
    -DQT_MAJOR_VERSION=6
    -DBUILD_PackageKitBackend=ON

sources:
- kind: git_repo
  url: kde:plasma/discover.git
  track: master
  ref: v6.6.90-63-gd5bdfa6014b7f7a41b574986e1c6a5b59790c017
