kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- gnomeos-deps/more-itertools.bst
- gnomeos-deps/python-jaraco-context.bst

sources:
- kind: tar
  url: pypi:0f/27/056e0638a86749374d6f57d0b0db39f29509cce9313cf91bdc0ac4d91084/jaraco_functools-4.4.0.tar.gz
  ref: da21933b0417b89515562656547a77b4931f98176eb173644c0d35032a33d6bb
