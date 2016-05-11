#!/bin/sh

if [ ! -e "$1" ] ; then
    echo "USAGE : $0 inputfile"
    echo "Prints just ANON proxies IP:ADDR"
fi

grep "| ANON |" $1 | awk '{print $1}'