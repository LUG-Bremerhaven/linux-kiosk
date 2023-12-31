#!/bin/bash
mkdir -p /mnt/guestcache # erstelle guest Ordner
mount -t ramfs -o size=8g ramfs /mnt/guestcache # mounting  8gb ramdisk im guestcache Ordner
mkdir -p /mnt/guestcache/dokumente # erstelle Ordner fuer /home/guest/dokumente
mkdir -p /mnt/guestcache/downloads # erstelle Ordner fuer /home/guest/downloads
chown guest:guest /mnt/guestcache/dokumente # setze guest als owner fuer dokumente
chown guest:guest /mnt/guestcache/downloads # setze guest als owner fuer downloads
mv /mnt/guestcache/dokumente /home/guest/Schreibtisch/Dokumente # verschiebe den Ordner nach Schreibtisch/Dokumente
mv /mnt/guestcache/downloads /home/guest/Schreibtisch/Downloads # verschiebe den Ordner nach Schreibtisch/Downloads
ln -s /home/guest/Schreibtisch/Dokumente  /mnt/guestcache/dokumente # symbolische verknuepfung fuer dokumente
ln -s /home/guest/Schreibtisch/Downloads  /mnt/guestcache/downloads # symbolische verknuepfung fuer downloads
