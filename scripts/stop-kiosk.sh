#!/bin/bash
rm -r /mnt/guestcache/dokumente # loesche Ordner fuer /home/guest/dokumente
rm -r /mnt/guestcache/downloads # loesche Ordner fuer /home/guest/downloads
rm -r /home/guest/Schreibtisch/Dokumente # loesche Ordner fuer /home/guest/Schreibtisch/Dokumente
rm -r /home/guest/Schreibtisch/Downloads # loesche Ordner fuer /home/guest/Schreibtisch//Downloads
umount -lf /mnt/guestcache #unmount ramdisk
rm -r /mnt/guestcache #loesche Verzeichnis in mnt
