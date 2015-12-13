FROM ubuntu:15.04
MAINTAINER cliffrowley@gmail.com

RUN apt-get update && \
    apt-get install -q -y --no-install-recommends \
    ca-certificates \
    lib32gcc1 \
    net-tools \
    lib32stdc++6 \
    lib32z1 \
    lib32z1-dev \
    curl

RUN useradd -m steam && \
    mkdir -p /home/steam/steamcmd && \
    curl -s https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -v -C /home/steam/steamcmd -zx && \
    chown -R steam:steam /home/steam

WORKDIR /home/steam/steamcmd
USER steam

ADD install.sh /home/steam/steamcmd/install.sh
