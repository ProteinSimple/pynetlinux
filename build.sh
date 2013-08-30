#!/bin/sh
# Build a Debian binary package from scratch.
set -e
set -x

rm -rf deb_dist
python setup.py --command-packages=stdeb.command bdist_deb sdist
cp -f deb_dist/*.deb .
