FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -q -y upgrade
RUN apt-get install -q -y wget lib32gcc1

RUN useradd -m steam

USER steam
WORKDIR /home/steam

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && tar zxvf steamcmd_linux.tar.gz
