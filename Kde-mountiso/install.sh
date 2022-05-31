#!/usr/bin/bash
mkdir ~/.local/share/Scripts -p 
mkdir ~/.local/share/kio/servicemenus/ -p
wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.sh -O ~/.local/share/Scripts/mountiso.sh
wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.desktop -O ~/.local/share/kio/servicemenus/mountiso.desktop
chmod 777 -R ~/.local/share/Scripts ~/.local/share/kio/servicemenus/
