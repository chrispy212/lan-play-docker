# lan-play-docker

A dockerized lan-play client which allow you to play LAN-enabled Nintendo Switch games over WAN

## Getting Started

These instructions will enable you to run this docker container on a host on your network. It is configurable via a text file, in order to specify the relay server.

### Prerequisites

You will need the following:

```
* A machine on your network running Docker ([Windows, MacOS](https://www.docker.com/products/docker-desktop) or Linux)
* A server to connect to (Seee [lan-play](https://www.lan-play.com/) or [host your own](https://github.com/spacemeowx2/switch-lan-play))
* A Nintendo Switch [configured for lan-play](https://www.lan-play.com/install)
* (Optional) [ldn_mitm](https://github.com/spacemeowx2/ldn_mitm) if you wish to play Local Wireless games over LAN instead e.g. Animal Crossing

```

### Installing

Depending on your Docker client, the following should suffice (make sure to set the config folder to a folder on your host machine):

```
docker run -d --name='LanPlayClient' --net='bridge' -v '[YOUR_CONFIG_FOLDER_HERE]':'/config':'rw' 'chrispy212/lan-play-docker'
```

Or if using UnRAID, search and find the Docker image from Dockerhub, and map the path /config to your appdata folder of choice (e.g. /mnt/user/appdata/lan-play-client)

## Configuring

After running for the first time, the container should place a server.txt file in your config folder. Replace the server in this text file with your server of choice, and restart the container.
If no server.txt exists, create it in Notepad or similar. The format is just the server URL:port as the first and only line of the file.

## Acknowledgments

* [spacemeowx2](https://github.com/spacemeowx2/switch-lan-play) for doing all the legwork
