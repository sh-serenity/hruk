#!/bin/bash
pkg="glibc"
version="2.35"
ext="tar.xz"
wget -O $HR/tools/src/$pkg-$version.$ext  https://ftp.gnu.org/gnu/glibc/$pkg-$version.$ext
cd $HR/tools/src
tar xvf $pkg-$version.$ext
cd $pkg-$version

mkdir build
cd build

../configure --prefix=$HR/usr                            \
             --disable-werror                         \
             --enable-kernel=3.2                      \
             --enable-stack-protector=strong          \
             --with-headers=$HR/usr/include              \
             libc_cv_slibdir=$HR/usr/lib

make

make install

mkdir -pv $HR/usr/lib/locale
$HR/usr/bin/localedef -i POSIX -f UTF-8 C.UTF-8 2> /dev/null || true
$HR/usr/bin/localedef -i ru_RU -f UTF-8 ru_RU.UTF-8

cat > $HR/etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files
group: files
shadow: files

hosts: files dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF

cat > /etc/ld.so.conf << "EOF"
# Begin /etc/ld.so.conf
$HR/usr/local/lib
$HR/opt/lib

EOF

cat >> $HR/etc/ld.so.conf << "EOF"
# Add an include directory
include $HR/etc/ld.so.conf.d/*.conf

EOF
mkdir -pv $HR/etc/ld.so.conf.d


cd $HR/tools/sh

