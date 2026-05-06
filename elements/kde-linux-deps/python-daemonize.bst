kind: pyproject
description: Python daemon library (daemonize)

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: tar
  url: pypi:d/daemonize/daemonize-2.5.0.tar.gz
  ref: dd026e4ff8d22cb016ed2130bc738b7d4b1da597ef93c074d2adb9e4dea08bc3
