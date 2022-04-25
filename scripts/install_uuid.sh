#!/bin/bash

curl -L -o libuuid-1.0.3.tar.gz https://sourceforge.net/projects/libuuid/files/libuuid-1.0.3.tar.gz/download
tar zxf libuuid-1.0.3.tar.gz
cd libuuid-1.0.3
./configure --disable-dependency-tracking --with-pic --enable-static=yes --enable-shared=no
make -j 2
make install
rm /usr/local/lib/libuuid.la
