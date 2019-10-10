#!/bin/bash

set -e

# args:
name=$1
url=$2
post=$3

HELP="args: ./download.sh \$name \$url [\$post]"

if [ -z "$post" ]
then
	touch -a last
	LAST=`cat last`
	if [ -z "$LAST" ]
	then
		echo "Last file not recorded, you have to set the \$post"
		exit 1
	fi
	post=$LAST
fi

if [ -z "$name" ]
then
	echo $HELP
	exit 1
fi

if [ -z "$url" ]
then
	echo $HELP
	exit 1
fi

# download
wget -O "source/_posts/$post/$name" "$url"
# add into file
echo "![]($post/$name)" >> "source/_posts/$post.md"
