#!/bin/bash

USER="user"
PASSWORD="password"

service ssh start

socat UDP-LISTEN:1194,fork TCP:localhost:22 &

IP=$(curl -s ifconfig.me)

echo "SSH UDP Tunnel Info:"
echo "$IP:1194@$USER:$PASSWORD"

tail -f /dev/null
