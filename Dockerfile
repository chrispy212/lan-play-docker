FROM ubuntu:18.04
LABEL maintainer="Christian Petersen <christianlundpetersen@gmail.com>"


RUN apt-get update \
  && apt-get install -y libpcap0.8-dev libuv1-dev curl

RUN mkdir /app
RUN mkdir /config

COPY ./app /app
COPY ./config /config

WORKDIR /app

RUN curl -L -o lan-play-linux https://github.com/spacemeowx2/switch-lan-play/releases/latest/download/lan-play-linux

RUN chmod +x lan-play-linux
RUN chmod +x start.sh

CMD ["./start.sh"]
