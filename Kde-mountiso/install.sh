#!/usr/bin/bash

install() {
    sudo mkdir "/usr/share/Scripts" -p
    sudo wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.sh -O "/usr/share/Scripts/mountiso.sh"
    wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.desktop -O "$ServiceMenuDir/mountiso.desktop"
    sudo chmod 777 -R "/usr/share/Scripts" "$ServiceMenuDir"
}

if [ "${USER}" = root ]; then
    ServiceMenuDir="/usr/share/kio/servicemenus"
    install
else
    ServiceMenuDir="$HOME/.local/share/kio/servicemenus"
    install
fi
