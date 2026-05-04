kind: autotools

sources:
- kind: tar
  url: github_files:xiph/libopusenc/archive/refs/tags/v0.3.tar.gz
  ref: 5637474cdf4ff693977fe74039049349fef7b65e3a94ad8bde51ecfcd1e94a8e
  base-dir: libopusenc-0.3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/opus.bst
