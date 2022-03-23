#!/bin/bash
pkg="linux"
version="5.15.30"
ext="tar.xz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://cdn.kernel.org/pub/linux/kernel/v5.x/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

make mrproper

make headers
find usr/include -name '.*' -delete
rm usr/include/Makefile
cp -rv usr/include $HR/usr

cd $HR/tools/sh
