kind: cmake
description: filelight — KDE disk usage viewer

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kde/frameworks/extra-cmake-modules.bst
- kde/frameworks/kdoctools.bst
- kde/qt6/qt6-qtbase.bst
- kde/qt6/qt6-qtdeclarative.bst
# kdoctools_install(po) needs these at build time for doc cache generation
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/docbook-xml.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- kde/frameworks/karchive.bst
- kde/frameworks/kconfig.bst
- kde/frameworks/kcoreaddons.bst
- kde/frameworks/kcrash.bst
- kde/frameworks/ki18n.bst
- kde/frameworks/kio.bst
- kde/frameworks/kirigami.bst
- kde/libs/kirigami-addons.bst
- kde/frameworks/kwidgetsaddons.bst
- kde/frameworks/qqc2-desktop-style.bst
- kde/frameworks/breeze-icons.bst
- kde/frameworks/knotifications.bst
- kde/frameworks/kiconthemes.bst

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

sources:
- kind: git_repo
  url: kde:utilities/filelight.git
  track: master
  ref: e10bad855ad1eaf4a2ec08067b7ae85c36b23ebd
