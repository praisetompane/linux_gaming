echo "install crewchief for ACC"
    WINEPREFIX=/home/praisetompane/.local/share/Steam/steamapps/compatdata/805550/pfx wine msiexec /i ./CrewChiefV4.msi 
echo "done"

echo "installing new-lg4ff driver logitech racing wheels"
    sudo apt install dkms
    git clone git@github.com:berarma/new-lg4ff.git
    sudo mv new-lg4ff/ /usr/src/
    cd /usr/src/new-lg4ff/ 
    sudo dkms install /usr/src/new-lg4ff
    sudo update-initramfs -u
echo "done"