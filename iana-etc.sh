#!/bin/bash
pkg="iana-etc"
version="20220207"
ext="tar.gz"
wget -O $HR/tools/src/$pkg-$version.$ext https://github.com/Mic92/iana-etc/releases/download/$version/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

cp services protocols $HR/etc

cd $HR/tools/sh
