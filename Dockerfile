FROM alpine:3.7
LABEL maintainer="Chris Petersen <christianlundpetersen@gmail.com>"

RUN apk add --no-cache libpcap0.8-dev
RUN apk add --no-cache libuv1-dev

RUN cd /config
RUN wget https://github.com/spacemeowx2/switch-lan-play/releases/download/v0.2.1/lan-play-linux

ENTRYPOINT ["./lan-play-linux"]

RUN echo "switch.lan-play.com:11451"
