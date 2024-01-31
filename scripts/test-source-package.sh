#!/bin/bash

# set CMAKE parallel build level to 4
export CMAKE_BUILD_PARALLEL_LEVEL=4

pushd dist

# extract the newest source package, the package will be 
# named like: python-copasi-4.43.284.tar.gz where 4.43.284 
# is the version. So when there are also older versions, 
# the newest version will be extracted.

# first extract the version number 
VERSION=$(ls -t python-copasi-*.tar.gz | head -1 | sed -e 's/python-copasi-//' | sed -e 's/.tar.gz//')
FILE=python-copasi-${VERSION}.tar.gz

tar -xzf ${FILE}

# now we have a directory named python-copasi-4.43.284
# so lets build from it
pushd python-copasi-${VERSION}
python3 setup.py bdist_wheel
popd



popd