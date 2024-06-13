#! /bin/sh

chmod 0600 /dev/net/tun

firefox --profile /opt/ff-profile $@ &
openvpn --script-security 2 --config $OVPN_FILE &
ttyd -p 80 bash
