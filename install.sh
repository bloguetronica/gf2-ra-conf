#!/bin/sh

echo Obtaining required packages...
apt-get -qq update
apt-get -qq install build-essential
apt-get -qq install libusb-1.0-0-dev
echo Copying source code files...
mkdir -p /usr/local/src/gf2-ra-conf
cp -f src/gf2-ra-conf.c /usr/local/src/gf2-ra-conf/.
cp -f src/GPL.txt /usr/local/src/gf2-ra-conf/.
cp -f src/LGPL.txt /usr/local/src/gf2-ra-conf/.
cp -f src/libusb-extra.c /usr/local/src/gf2-ra-conf/.
cp -f src/libusb-extra.h /usr/local/src/gf2-ra-conf/.
cp -f src/Makefile /usr/local/src/gf2-ra-conf/.
cp -f src/README.txt /usr/local/src/gf2-ra-conf/.
echo Building and installing binaries...
make -C /usr/local/src/gf2-ra-conf all install clean
echo Installing man pages...
mkdir -p /usr/local/share/man/man1
cp -f man/gf2-ra-conf.1.gz /usr/local/share/man/man1/.
echo Done!
