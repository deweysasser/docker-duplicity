#!/bin/bash

# Purpose:  Limit bandwidth before launching duplicity

if [ -n "$BANDWIDTH_LIMIT" ] ; then
    tc qdisc add dev eth0 root tbf rate 1mbit latency 50ms burst 10000
fi

exec "$@"
