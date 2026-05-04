kind: manual
description: Go-based FUSE encrypted filesystem
# NOTE: Building gocryptfs requires Go module dependencies that are not
# vendored in the upstream release tarball. Building in a network-isolated
# BST sandbox will fail until a vendored source tarball is provided.
# To produce a vendored tarball:
#   go mod vendor
#   tar czf gocryptfs-v2.6.1-vendor.tar.gz vendor/
# Then add as a second tar source in the sources list.

sources:
- kind: tar
  url: github:rfjakob/gocryptfs/archive/refs/tags/v2.6.1.tar.gz
  ref: 8b293c77703e9a45b629a47ce16aad701a9f2f53af5a8fb6200abe274f08051c

build-depends:
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/openssl.bst

environment:
  GOFLAGS: "-mod=vendor"
  CGO_ENABLED: "1"

config:
  build-commands:
  - go build -v -o gocryptfs ./

  install-commands:
  - install -Dm755 gocryptfs "%{install-root}/usr/bin/gocryptfs"
