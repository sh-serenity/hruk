#!/bin/bash
pkg="zstd"
version="1.5.2"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://github.com/facebook/zstd/releases/download/v1.5.2/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

make 
make prefix=$HR/usr install

cd $HR/tools/sh