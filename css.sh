#!/bin/bash

# change the directory
cd /data/steam

# check if the valdation maode is active
if [ $CHECKFILES == "true" ]; then
	VALIDATE="validate"
fi

# check if the valdation maode is active
if [ -n $GAME_PORT ]; then
    PORT="-port $GAME_PORT"
fi

# Load steam cmd if not exist
if [ ! -f steamcmd_linux.tar.gz ]; then
    echo -e "\n\nLoad SteamCMD...\n"
    wget -q https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
    tar -xf steamcmd_linux.tar.gz
fi


# Update server
echo -e "\n\nUpdating CSS...\n"
./steamcmd.sh +login anonymous +force_install_dir /data/steam/css +app_update 232330 $VALIDATE +quit


# Start the server
cd /data/steam/css/
echo -e "\n\nLaunching CSS Server...\n"

./srcds_run -game cstrike -secure +maxplayers 10 +map de_dust2 $PORT
