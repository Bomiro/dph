#!/bin/bash

USER=${SSH_USER:-user}
PASSWORD=${SSH_PASSWORD:-password}

service ssh start

socat UDP-LISTEN:1194,fork TCP:localhost:22 &

IP=$(curl -s ifconfig.me)

echo "SSH UDP Tunnel Info:"
echo "$IP:1194@$USER:$PASSWORD"

while true; do sleep 1000; done
