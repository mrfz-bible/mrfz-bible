#/bin/bash

set -e

echo '' > last
git add source/*
git commit -m "`date`"
