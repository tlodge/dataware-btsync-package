#!/bin/sh
dpkg-buildpackage -rfakeroot -uc -us
cp ../package_files/config.cfg ./debian/dataware-btsync/etc/btsync/config.cfg
mkdir -p ./debian/dataware-btsync/usr/bin
cp ~/btsync ./debian/dataware-btsync/usr/bin/
cd debian
dpkg --build dataware-btsync dataware-btsync.deb
