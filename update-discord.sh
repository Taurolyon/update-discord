#!/bin/bash

# Check if the script is running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root."
    exit 1
fi

# Define download URL and output path
## curl -L $(curl -Ls -o /dev/null -w %{url_effective} https://discord.com/api/download/stable?platform=linux&format=deb) -o discord.deb

URL=$(curl -Ls -o /dev/null -w %{url_effective} https://discord.com/api/download/stable?platform=linux&format=deb)
FILE="/tmp/discord.deb"

# Download the latest Discord package
curl -L $URL -o $FILE

# Install the downloaded package
dpkg -i $FILE

# Clean up
rm $FILE

# Check for any missing dependencies and install them
apt-get install -f
