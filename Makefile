SHELL := /bin/bash

tag?=v3.9.0

download_sourcecode:
	curl https://raw.githubusercontent.com/python/cpython/$(tag)/Lib/test/test_graphlib.py -o tests/test_graphlib.py
	curl https://raw.githubusercontent.com/python/cpython/$(tag)/Lib/graphlib.py -o graphlib/graphlib.py

install:
	poetry install

test:
	tox -p

clean:
	rm -rf dist

build:
	poetry build
