#!/bin/bash
HOME="/home/container"
HOMEA="$HOME/linux/.apt"
STAR1="$HOMEA/lib:$HOMEA/usr/lib:$HOMEA/var/lib:$HOMEA/usr/lib/x86_64-linux-gnu:$HOMEA/lib/x86_64-linux-gnu:$HOMEA/lib:$HOMEA/usr/lib/sudo"
STAR2="$HOMEA/usr/include/x86_64-linux-gnu:$HOMEA/usr/include/x86_64-linux-gnu/bits:$HOMEA/usr/include/x86_64-linux-gnu/gnu"
STAR3="$HOMEA/usr/share/lintian/overrides/:$HOMEA/usr/src/glibc/debian/:$HOMEA/usr/src/glibc/debian/debhelper.in:$HOMEA/usr/lib/mono"
STAR4="$HOMEA/usr/src/glibc/debian/control.in:$HOMEA/usr/lib/x86_64-linux-gnu/libcanberra-0.30:$HOMEA/usr/lib/x86_64-linux-gnu/libgtk2.0-0"
STAR5="$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/modules:$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/immodules:$HOMEA/usr/lib/x86_64-linux-gnu/gtk-2.0/2.10.0/printbackends"
STAR6="$HOMEA/usr/lib/x86_64-linux-gnu/samba/:$HOMEA/usr/lib/x86_64-linux-gnu/pulseaudio:$HOMEA/usr/lib/x86_64-linux-gnu/blas:$HOMEA/usr/lib/x86_64-linux-gnu/blis-serial"
STAR7="$HOMEA/usr/lib/x86_64-linux-gnu/blis-openmp:$HOMEA/usr/lib/x86_64-linux-gnu/atlas:$HOMEA/usr/lib/x86_64-linux-gnu/tracker-miners-2.0:$HOMEA/usr/lib/x86_64-linux-gnu/tracker-2.0:$HOMEA/usr/lib/x86_64-linux-gnu/lapack:$HOMEA/usr/lib/x86_64-linux-gnu/gedit"
STARALL="$STAR1:$STAR2:$STAR3:$STAR4:$STAR5:$STAR6:$STAR7"
export LD_LIBRARY_PATH=$STARALL
export PATH="$HOMEA/bin:$HOMEA/usr/bin:$HOMEA/sbin:$HOMEA/usr/sbin:$HOMEA/etc/init.d:$PATH"
export BUILD_DIR=$HOMEA

bold=$(echo -en "\e[1m")
nc=$(echo -en "\e[0m")
lightblue=$(echo -en "\e[94m")
lightgreen=$(echo -en "\e[92m")
RED='\033[0;31m'
NC='\033[0m'
LIGHTBLUE='\033[1;34m'
clear

if [[ -f "./installed" ]]; then
    echo -e "${LIGHTBLUE}
Welcome to You VPS Linux Debian
   ${NC}
    "
    echo "──────────────────────────────────────────────────────────────────────"
    echo "Hello you can use SSH on you VPS"
    echo "──────────────────────────────────────────────────────────────────────"
    echo "INFORMATIONS SSH :"
    echo "Hostname : <You Node>.lunaserverpro.ml"
    echo "Port : "$1""
    echo "Password : lsp"$1""
    echo -e "${RED}pls don't restart on install | service ssh ready >> service dropbear start"
    echo "──────────────────────────────────────────────────────────────────────"
    echo "[!] recommend that you change your password with the command :"
    echo "passwd"
    ./dist/proot -S . /bin/bash --login
else
    echo "VPS Download... (0%)"
    curl -sSLo ptero-vm.zip https://cdn2.mythicalkitten.com/pterodactylmarket/ptero-vm/ptero-vm.zip
    echo "VPS Download... (50%)"
    curl -sSLo apth https://cdn2.mythicalkitten.com/pterodactylmarket/ptero-vm/apth
    echo "VPS Download... (85%)"
    curl -sSLo unzip https://raw.githubusercontent.com/afnan007a/Ptero-vm/main/unzip
    echo "VPS Download... (100%)"
    chmod +x apth
    echo "VPS install (0%)"
    ./apth unzip >/dev/null 
    linux/usr/bin/unzip ptero-vm.zip
    linux/usr/bin/unzip root.zip
    echo "VPS install (30%)"
    tar -xf root.tar.gz 
    chmod +x ./dist/proot
    echo "VPS install (55%)"
    rm -rf ptero-vm.zip
    rm -rf root.zip
    echo "VPS install (90%)"
    rm -rf root.tar.gz
    touch installed
    echo "VPS setting... (10%)"
    ./dist/proot -S . /bin/bash -c "mv apth /usr/bin/"
    ./dist/proot -S . /bin/bash -c "mv unzip /usr/bin/"
    echo "VPS setting... (20%)"
    ./dist/proot -S . /bin/bash -c "apt-get update"
    ./dist/proot -S . /bin/bash -c "apt-get -y upgrade"
    echo "VPS setting... (50%)"
    ./dist/proot -S . /bin/bash -c "apt-get -y install curl"
    ./dist/proot -S . /bin/bash -c "apt-get -y install wget"
    echo "VPS setting... (65%)"
    ./dist/proot -S . /bin/bash -c "apt-get -y install neofetch"
    echo "VPS setting... (75%)"
    ./dist/proot -S . /bin/bash -c "curl -o /bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py"
echo "VPS setting... (100%)"
    ./dist/proot -S . /bin/bash -c "chmod +x /bin/systemctl"
    echo "Install SSH and setting"
    ./dist/proot -S . /bin/bash -c "apt-get -y install sudo"
./dist/proot -S . /bin/bash -c "sudo chmod -R 777 /etc/default"
./dist/proot -S . /bin/bash -c "cat <<EOT >> /etc/default/dropbear
NO_START=0
DROPBEAR_PORT=$1
DROPBEAR_EXTRA_ARGS=
DROPBEAR_BANNER=""
DROPBEAR_RECEIVE_WINDOW=65536
EOT"

cd
    ./dist/proot -S . /bin/bash -c "apt-get -y install dropbear"
    ./dist/proot -S . /bin/bash -c "echo 'root:lsp$1' | sudo chpasswd"
       echo -e "${LIGHTBLUE}
Welcome to You VPS Linux Debian
   ${NC}
    "
    echo "──────────────────────────────────────────────────────────────────────"
    echo "LSP Hosting VPS for you <3"
    echo "──────────────────────────────────────────────────────────────────────"
    echo "INFORMATIONS SSH :"
    echo "Hostname : <You Node>.lunaserverpro.ml"
    echo "Port : "$1""
    echo "Password : lsp"$1""
    echo -e "${RED}pls don't restart on install VPS | service ssh ready >> service dropbear start"
    echo "──────────────────────────────────────────────────────────────────────"
    echo "[!] recommend that you change your password with the command :"
    echo "passwd"
    ./dist/proot -S . /bin/bash --login
fi
