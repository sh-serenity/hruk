#!/bin/bash
pkg="bc"
version="5.2.2"
ext="tar.xz"
wget -O $HR/tools/src/$pkg-$version.$ext https://github.com/gavinhoward/bc/releases/download/5.2.2/bc-5.2.2.tar.xz
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

CC=gcc ./configure --prefix=$HR/usr -G -O3
make
make install

cd $HR/tools/sh