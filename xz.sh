#!/bin/bash
pkg="xz"
version="5.2.5"
ext="tar.xz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://tukaani.org/xz/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

./configure --prefix=$HR/usr    \
            --disable-static \
            --docdir=$HR/usr/share/doc/xz-5.2.5
make
make install

cd $HR/tools/sh
