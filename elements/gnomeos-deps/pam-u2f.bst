kind: autotools
description: PAM module for U2F/FIDO2 two-factor authentication (Yubico)

sources:
- kind: git_repo
  url: github:Yubico/pam-u2f.git
  track: pam_u2f-1.4.0
  ref: 1d85db26b590c191a508d06eddc86fbff6b5009e

variables:
  autogen: |
    echo "1.4.0" > .tarball-version
    autoreconf -ivf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/libfido2.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/libfido2.bst
