#!/bin/bash
pkg="bzip2"
version="1.0.8"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://www.sourceware.org/pub/bzip2/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

make
make PREFIX=$HR/usr install 

cd $HR/tools/sh
