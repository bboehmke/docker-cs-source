# Counter-Strike: Source Server

Docker image to run a Counter-Strike: Source Server (http://store.steampowered.com/app/240/)

## Usage
Launching the server container: (TODO: add missing port forwards)
```
docker run -d -v /data/css/:/data/steam --name=cs-source bboehmke/cs-source
```

## Variables:
- __VALIDATE__ Start the steam update in validation mode
- __GAME_PORT__ Set a custom game port
