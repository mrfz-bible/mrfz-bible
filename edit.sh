#!/bin/bash

set -e

post=$1

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

vim "source/_posts/$post.md"
