#!/bin/bash

set -eu

while read url
do
#    echo $url
    if grep -Fxq $url url_whitelist.txt
    then
	echo 'OK';
    else
	echo 'ERR';
    fi
done
