# graphlib backport

Backport of the Python 3.9
[graphlib](https://docs.python.org/3/library/graphlib.html)
module for older Python versions.


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

