#! /usr/bin/env bash

echo Running with server $(< /config/server.txt)
cd /app
./lan-play-linux --relay-server-addr $(< /config/server.txt)
