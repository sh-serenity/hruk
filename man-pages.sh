#!/bin/bash
pkg="man-pages"
version="5.13"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

make prefix=$HR/usr install

cd $HR/tools/sh