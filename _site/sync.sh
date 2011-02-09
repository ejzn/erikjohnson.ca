#!/bin/bash

if [ ! -f sync.sh ]; then
	echo "Wrong directory"
	exit 1
fi

user="erikj"
server=erikjohnson.ca
[ "$server" ] || server="erikjohnson.ca"

rsync -av --delete \
	--exclude sync.sh \
	--exclude .svn --exclude .git \
	. $user@$server:erikjohnson.ca/
