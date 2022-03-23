#!/bin/bash

mkdir -pv $HR/{boot,home,mnt,opt,srv}
mkdir -pv $HR/etc/{opt,sysconfig}
mkdir -pv $HR/lib/firmware
mkdir -pv $HR/media/{floppy,cdrom}
mkdir -pv $HR/usr/{,local/}{include,src}
mkdir -pv $HR/usr/local/{bin,lib,sbin}
mkdir -pv $HR/usr/{,local/}share/{color,dict,doc,info,locale,man}
mkdir -pv $HR/usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv $HR/usr/{,local/}share/man/man{1..8}
mkdir -pv $HR/var/{cache,local,log,mail,opt,spool}
mkdir -pv $HR/var/lib/{color,misc,locate}

ln -sfv $HR/run $HR/var/run
ln -sfv $HR/run/lock $HR/var/lock