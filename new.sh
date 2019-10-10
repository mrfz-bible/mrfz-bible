#!/bin/bash

set -e

NAME="`date '+%Y-%m-%d-%H-%M'`"
hexo new $NAME
echo "$NAME" > last
