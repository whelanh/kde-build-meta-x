kind: autotools
description: PAM module for U2F/FIDO2 two-factor authentication (Yubico)

sources:
- kind: tar
  url: github:Yubico/pam-u2f/archive/refs/tags/pam_u2f-1.4.0.tar.gz
  ref: 243de4db11512514e6ac7fde54a0369b13e9b2423b43ceb89f108867888783a0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/libfido2.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/libfido2.bst
