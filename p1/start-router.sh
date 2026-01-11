#!/bin/sh

if [ -f /itc/network/interfaces ]; then
    ifup -a
fi

/usr/lib/frr/frrinit.sh start

tail -f /dev/null
