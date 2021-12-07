#!/bin/bash

VPNSTATUS=$(protonvpn s)

function is_connected {
	echo $VPNSTATUS | wc -l
}


if [ "$(protonvpn s | grep -i "server" | wc -l)" -gt 0 ]; then
	echo "%{F#B5CEA8}"
else
	echo "%{F#D16969}"
fi
