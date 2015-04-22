#!/bin/bash -

password=${PASSWORD-"test.pass"}
method=${METHOD-"aes-256-cfb"}
timeout=${TIMEOUT-60}
workers=${WORKERS-1}
forbidden_ip=${FORBIDDEN_IP-""}
fast_open=${FAST_OPEN-""}

if [ -n "$forbidden_ip" ]; then
    forbidden_ip_parm="--forbidden-ip $forbidden_ip"
fi

if [ "$fast_open" == "1" ] || [ "${fast_open^^}" == "TRUE" ]; then
    fast_open_parm="--fast-open"
fi

/usr/bin/ssserver -s 0.0.0.0 -p 1080 -k $password -m $method\
    -t $timeout --workers $workers $forbidden_ip_parm $fast_open_parm
