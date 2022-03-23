#!/bin/bash
pkg="readline"
version="8.1.2"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://ftp.gnu.org/gnu/readline/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

./configure --prefix=$HR/usr 
make
make install

cd $HR/tools/sh