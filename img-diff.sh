#!/bin/sh
diffFile=$(mktemp /tmp/foo.XXXXXXXXX)
compare -compose src $1 $2 $diffFile
xdg-open $diffFile
