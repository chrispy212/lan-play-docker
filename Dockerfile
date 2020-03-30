FROM ubuntu:18.04
LABEL maintainer="Christian Petersen <christianlundpetersen@gmail.com>"

RUN apt-get update \
  && apt-get install --allow-unauthenticated --allow-downgrades --allow-remove-essential --allow-change-held-packages libpcap0.8-dev libuv1-dev

RUN mkdir /config
RUN cd /config
RUN wget https://github.com/spacemeowx2/switch-lan-play/releases/download/v0.2.1/lan-play-linux

ENTRYPOINT ["./lan-play-linux"]

RUN echo "switch.lan-play.com:11451"
