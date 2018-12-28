FROM debian:latest
LABEL maintainer="Ryan Schlesinger <ryan@ryanschlesinger.com>"

ENV STEAMCMD_PATH="/steamcmd"
ENV STEAMCMD="$STEAMCMD_PATH/steamcmd.sh"

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    lib32gcc1 \
  && rm -rf /var/lib/apt/lists/*

WORKDIR $STEAMCMD_PATH

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
  && tar xf steamcmd_linux.tar.gz

CMD $STEAMCMD
