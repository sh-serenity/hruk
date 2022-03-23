#!/bin/bash
pkg="zlib"
version="1.2.11"
ext="tar.xz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://zlib.net/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

./configure --prefix=$HR/usr
make
make install

cd $HR/tools/sh
