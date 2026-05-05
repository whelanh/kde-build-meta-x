kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/python3-setuptools-scm.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- gnomeos-deps/more-itertools.bst
- gnomeos-deps/python-jaraco-classes.bst
- gnomeos-deps/python-jaraco-context.bst
- gnomeos-deps/python-jaraco-functools.bst
- gnomeos-deps/python-secretstorage.bst

config:
  build-commands:
  - python3 -m pip wheel --no-build-isolation --no-deps --wheel-dir dist .

sources:
- kind: tar
  url: pypi:43/4b/674af6ef2f97d56f0ab5153bf0bfa28ccb6c3ed4d1babf4305449668807b/keyring-25.7.0.tar.gz
  ref: fe01bd85eb3f8fb3dd0405defdeac9a5b4f6f0439edbb3149577f244a2e8245b
