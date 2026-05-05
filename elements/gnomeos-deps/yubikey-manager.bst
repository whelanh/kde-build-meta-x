kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-poetry.bst
- freedesktop-sdk.bst:components/stripper.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-click.bst
- freedesktop-sdk.bst:components/python3-cryptography.bst
- freedesktop-sdk.bst:components/libfido2.bst
- gnomeos-deps/python-fido2.bst
- gnomeos-deps/python-keyring.bst
- gnomeos-deps/python-pskc.bst
- gnomeos-deps/pyscard.bst

config:
  build-commands:
  - python3 -c "from poetry.core.masonry.api import build_wheel; build_wheel('%{dist-dir}', None)"

sources:
- kind: tar
  url: pypi:82/f8/909641e6a9fe3bf315df9032a2875eff5981b95c90df55f269506fadb6c9/yubikey_manager-5.9.1.tar.gz
  ref: 83bda2a4bbb6a93bc07e5de73a0f30e5a8b811c85a9116aaca6dd3eed8abb0eb
