#!/bin/bash

# args:
dir=$1
name=$2
url=$3

HELP="args: ./download.sh \$dir \$name \$url"

if [ -z "$dir" ]
then
	echo $HELP
	exit 1
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

set -e

# download
wget -O "source/_posts/$1/$2" "$3"
# add into file
echo "![]($1/$2)" >> "source/_posts/$1.md"
