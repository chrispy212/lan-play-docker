FROM ubuntu:18.04
LABEL maintainer="Christian Petersen <christianlundpetersen@gmail.com>"

ARG SERVER_ADDRESS=switch.lan-play.com:11451

RUN apt-get update \
  && apt-get install -y libpcap0.8-dev libuv1-dev curl

RUN mkdir /config

WORKDIR /config

RUN curl -L -o /config/lan-play-linux https://github.com/spacemeowx2/switch-lan-play/releases/download/v0.2.1/lan-play-linux

RUN chmod +x /config/lan-play-linux

ENTRYPOINT ["./config/lan-play-linux --relay-server-addr ${SERVER_ADDRESS}"]
