#!/bin/sh

if [ -f /etc/network/interfaces ]; then
    ifup -a
fi

tail -f /dev/null
