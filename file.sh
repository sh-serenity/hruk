#!/bin/bash
pkg="file"
version="5.41"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext https://astron.com/pub/file/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

./configure --prefix=$HR/usr
make
make install

cd $HR/tools/sh