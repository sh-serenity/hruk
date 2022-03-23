#!/bin/bash
pkg="m4"
version="1.4.19"
ext="tar.xz"
wget -O $HR/tools/src/$pkg-$version.$ext https://ftp.gnu.org/gnu/m4/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

./configure --prefix=$HR/usr 
make
make install

cd $HR/tools/sh