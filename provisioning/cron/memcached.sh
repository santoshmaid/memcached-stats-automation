#!/usr/bin/env bash

host='127.0.0.1'
port='11211'
cmd='telnet '$host" "$port
./mem-load.sh | $cmd
