# graphlib backport

Backport of the Python 3.9
[graphlib](https://docs.python.org/3/library/graphlib.html)
module for older Python versions.

# Supported versions

This backport currently support Python 3.6, 3.7, 3.8, 3.9 and and pypy3
(tested with pypy3.6).


# Installation

`pip install git+https://github.com/mariushelf/graphlib_backports.git`

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


# Thanks

I did not create this code -- I only repackaged it so it can be
pip-installed into older versions of Python.

So all thanks go to the original contributors of the
[original sourcecode](https://github.com/python/cpython/blob/3.9/Lib/graphlib.py).


# Supported versions

The backport currently supports Python 3.8+. I plan to add support for
Python 3.7+. This requires some (minimal) work because the original package
makes use of the
[walrus operator](https://docs.python.org/3/whatsnew/3.8.html#assignment-expressions).


# License

[PSF](https://docs.python.org/3/license.html#psf-license)

