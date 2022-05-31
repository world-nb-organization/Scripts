#!/usr/bin/bash
install() {
    mkdir /usr/share/Scripts" -p
    wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.sh -O "/usr/share/Scripts/mountiso.sh"
    wget https://raw.githubusercontent.com/world-nb-organization/Scripts/main/Kde-mountiso/mountiso.desktop -O "$ServiceMenuDir/mountiso.desktop"
    chmod 777 -R "/usr/share/Scripts" "$ServiceMenuDir"
}

if [ "${USER}" = root ]; then
    ServiceMenuDir=/usr/share/kio/servicemenus
    install
else
    ServiceMenuDir="$HOME/.local/share/kio/servicemenus/"
    install
fi
echo -e "\033[32m结束安装\033[0m"
