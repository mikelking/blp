#!/usr/bin/env bash

App=blp
Version=2.0
blpPath=/usr/local/lib
ConfPath=/usr/local/etc
BinPath=/usr/local/bin

if [ -e /usr/local/lib/blp/std.blp ];
	then
	. /usr/local/lib/blp/std.blp
	if [ ${Version} = ${blpVer}  ];
	then
		echo "ERROR: blp version ${blpVer} is already installed. Abort operation!"
		exit 1
	fi
fi

	./README

	echo "Installing ${App} version: ${Version}"

	echo "Installing the appropriate libraries."
	if [ ! -e /usr/local/lib/blp ];
	then
		mkdir ${blpPath}/blp
	fi
	
	cp  *.blp ${blpPath}/blp/

	echo
	echo "Installation is complete."
	echo

	./ReleaseNotes


