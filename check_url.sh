#!/bin/bash

set -eu

while read url
do
    if grep -Fxq $url '/url_whitelist.txt'
    then
	echo "OK log=acl-ok-$url";
    else
	echo "ERR log=acl-error-$url";
    fi
done
