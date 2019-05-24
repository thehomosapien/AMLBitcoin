
Debian
====================
This directory contains files used to package AmlBitcoind/AmlBitcoin-qt
for Debian-based Linux systems. If you compile AmlBitcoind/AmlBitcoin-qt yourself, there are some useful files here.

## AmlBitcoin: URI support ##


AmlBitcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install AmlBitcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your AmlBitcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/AmlBitcoin128.png` to `/usr/share/pixmaps`

AmlBitcoin-qt.protocol (KDE)

