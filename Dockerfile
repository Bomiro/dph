FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    openssh-server \
    net-tools \
    iptables \
    socat \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["./start.sh"]
