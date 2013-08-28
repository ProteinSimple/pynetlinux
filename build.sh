#!/bin/sh
# Build a Debian binary package from scratch.
set -e
set -x

# Build a binary package.
dpkg-buildpackage -b -uc -us

# We don't need the .changes file.
rm ../*.changes

# Move the package back into the current directory.
mv ../*.deb .
