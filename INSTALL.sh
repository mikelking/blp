#!/usr/bin/env bash

App=blib
Version=2.0
BlibPath=/usr/local/lib
ConfPath=/usr/local/etc
BinPath=/usr/local/bin

if [ -e /usr/local/lib/blib/std.blib ];
	then
	. /usr/local/lib/blib/std.blib
	if [ ${Version} = ${BlibVer}  ];
	then
		echo "Blib version ${BlibVer} is already installed. Aboarting operation"
		exit
	fi
fi

	./README

	echo "Installing ${App} version: ${Version}"

	echo "Installing the appropriate libraries."
	if [ ! -e /usr/local/lib/blib ];
	then
		mkdir ${BlibPath}/blib
	fi
	
	cp  *.blib ${BlibPath}/blib/

	echo
	echo "Installation is complete."
	echo

	./ReleaseNotes


