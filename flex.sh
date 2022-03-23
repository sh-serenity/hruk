#!/bin/bash
pkg="flex"
version="2.6.4"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext https://github.com/westes/flex/releases/download/v$version/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

./configure --prefix=$HR/usr \
            --docdir=$HR/usr/share/doc/flex-2.6.4 \
            --disable-static
make
make install
ln -sv $HR/usr/bin/flex $HR/usr/bin/lex

cd $HR/tools/sh