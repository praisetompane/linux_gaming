echo "udating system"
    sudo apt update
echo "done"

echo "installing nvidia drivers"
    sudo apt install system76-driver-nvidia
echo "done"

echo "installing steam"
    wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
    sudo dpkg -i steam.deb
    rm steam.deb
echo "done"

echo "installing gnome tweaks"
    sudo apt install gnome-tweaks
echo "done"tw

echo "installing lutris"
    sudo apt install lutris
echo "done"

echo "installing vscode"
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt install apt-transport-https
    sudo apt update
    sudo apt install code
echo "done"


echo "setting up racing module"
    ./games/racing/setup.sh 
echo "done" 