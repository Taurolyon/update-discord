# update-discord
A simple script to update discord on Debian/Ubuntu

## Why?
Discord is a wonderful cross-platform program, but for some reason, the developers require manual download and installation on Linux. If you're running an out-of-date version, it will not launch and instead prompt you to download the latest release, which requires you to do `sudo dpkg -I discord-0.0.XX.deb` every few days.

I made this script to attempt to update Discord with my usual system updates.

## Installation
```git clone https://github.com/Taurolyon/update-discord.git```

```cd update-discord```

```sudo cp 99update-discord /etc/apt/apt.conf.d/```

```sudo cp update-discord.sh /usr/local/bin/```

```sudo chmod +x /usr/local/bin/update-discord.sh```

And done! Discord will download and install the most recent version every time apt is used (e.g. `apt upgrade`).

## TODO:
* installation script
* failure errorlevel check (unable to download, etc.)
* adjust to require use of `apt upgrade`, instead of apt *anything*
