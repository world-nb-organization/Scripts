#!/usr/bin/bash
install() {
    mkdir "$HOME/.local/share/Scripts -p"
    wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.sh -O ~/.local/share/Scripts/mountiso.sh
    wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.desktop -O "$ServiceMenuDir/mountiso.desktop"
    chmod 777 -R "$HOME/.local/share/Scripts" "$ServiceMenuDir"
}

if [ "${USER}" = root ]; then
    ServiceMenuDir=/usr/share/kio/servicemenus
    install
else
    ServiceMenuDir="$HOME/.local/share/kio/servicemenus/"
    install
fi
