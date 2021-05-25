# graphlib backport

Backport of the Python 3.9
[graphlib](https://docs.python.org/3/library/graphlib.html)
module for older Python versions.

Github:
[https://github.com/mariushelf/graphlib_backport](https://github.com/mariushelf/graphlib_backport)

# Supported versions

This backport currently supports Python 3.6, 3.7, 3.8, 3.9 and and pypy3
(tested with pypy3.6).


# Installation

`pip install graphlib_backport`

It is recommended to limit installation of this package to version of Python <3.9 and
use the original implementation for Python >=3.9.

For example in a [poetry](https://python-poetry.org/) `pyproject.toml` this can be done
by specifying the dependency as a
[Python restricted dependency](https://python-poetry.org/docs/dependency-specification/#python-restricted-dependencies):
```
[tool.poetry.dependencies]
graphlib_backport = {version="^1.0.0", python="<3.9"}
```

# Usage

The package works the very same way as the original package.
[Here's](https://docs.python.org/3/library/graphlib.html) the documentation.


# Development

The sourcecode is hosted on
[github](https://github.com/mariushelf/graphlib_backports).
To develop on this package, just clone it, work on it and submit a pull request.


## Dev requirements

For testing against different Python versions, [tox](https://tox.readthedocs.io/en/latest/)
is required.

To download the latest original sourcecode into the repository, there is a make target:

`make download_sourcecode`

*Warning*: This overwrites the code in this repo. By default it uses the tag `v3.9.0`,
but you can overwrite that with a `tag` environment variable.


## Running tests

As simple as running `tox` on the command line.

The executables for all python versions must be in the path, e.g,
`python3.6`, ..., `python3.9`, `pypy3`.
You can install them with [pyenv](https://github.com/pyenv/pyenv).


## Publishing a new version

Update the version in the pyproject.toml and run `make publish` to build and upload
the package to PyPI.


# Thanks

I did not create this code -- I only repackaged it so it can be
pip-installed into older versions of Python.

So all thanks go to the original contributors of the
[original sourcecode](https://github.com/python/cpython/blob/3.9/Lib/graphlib.py).


# License

[PSF](https://docs.python.org/3/license.html#psf-license)

Copyright © 2001-2020 Python Software Foundation; All Rights Reserved

Changes to the sourcecode and the tests: replace incompatible code
(e.g., the `:=` walrus operator) with constructions compatible to
earlier versions of Python, and make the tests pass on all supported
versions.
