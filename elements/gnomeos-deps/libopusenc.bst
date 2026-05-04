kind: autotools

sources:
- kind: git_repo
  url: xiph:libopusenc.git
  track: v*
  ref: v0.3-0-g0dba1bea736ab8bb811409dce80c994a00a2ced9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/opus.bst
