# Counter-Strike: Source Server

Docker image to run a Counter-Strike: Source Server (http://store.steampowered.com/app/240/)

## Usage
Launching the server container:
```
docker run --name=cs-source -d \
  -v /data/css/:/data/steam \
  -p 27015:27015/tcp \
  -p 27015:27015/udp \
  -p 1200:1200/tcp \
  -p 27005:27005/udp \
  -p 27020:27020/udp \
  -p 26901:26901/udp \
  bboehmke/cs-source
```

## Variables:
- __VALIDATE__ Start the steam update in validation mode
- __GAME_PORT__ Set a custom game port
