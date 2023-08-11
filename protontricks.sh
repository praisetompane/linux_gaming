echo "enable proton tricks"
    echo "alias protontricks='flatpak run com.github.Matoking.protontricks'" >> ~/.bashrc
    echo "alias protontricks-launch='flatpak run --command=protontricks-launch com.github.Matoking.protontricks'" >> ~/.bashrc
echo "done"

echo "enable protontricks access to alternate Steam libraries"
    flatpak override --user --filesystem=/media/praisetompane/praise_back_1/SteamLibrary com.github.Matoking.protontricks
    flatpak override --user --filesystem=/media/praisetompane/praise_back_2/SteamLibrary com.github.Matoking.protontricks
    flatpak override --user --filesystem=/media/praisetompane/praise_back_3/SteamLibrary com.github.Matoking.protontricks
    flatpak override --user --filesystem=/home/praisetompane/.steam/steam/ com.github.Matoking.protontricks
echo "done"

echo "installing proton tricks"
    flatpak install flathub com.github.Matoking.protontricks
echo "done"

# protontricks command
    # list appIDs for proton apps: protontricks -l
    # wine config for game running on proton: protontricks -c winecfg {APPID} 
    # or protontricks -c "wine winecfg" 284160

# wine
    # wine commands alternative to protontricks
        #WINEPREFIX=/home/praisetompane/.local/share/Steam/steamapps/compatdata/805550/pfx winecfg
        #pattern: WINEPREFIX=/home/$USER/$PATHTOSTEAM/compatdata/$APPID/pfx winecfg
    
    # install all dependencies
        # source: https://github.com/lutris/docs/blob/master/WineDependencies.md
        # sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386

    # install latest
        # sudo mkdir -pm755 /etc/apt/keyrings
        # sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
        # sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/kinetic/winehq-kinetic.sources
        # sudo apt update
        # sudo apt install --install-recommends winehq-stable
        
#  Proton Game Saves
    #  excellent explanation: https://steamcommunity.com/app/221410/discussions/8/1741094390480128995/
    # .steam/steam/steamapps/compatdata/<id>/pfx/drive_c/users/steamuser/Saved Games/
    # .steam/steam/steamapps/compatdata/<id>/pfx/drive_c/users/steamuser/My Documents/
    # .steam/steam/steamapps/compatdata/<id>/pfx/drive_c/documents and settings/all users/

    # Lutris
    # launch lutris game in steam: 
        # in "LAUNCH OPTIONS" text box:
            # lutris:rungame/{LUTRIS_ID}
            # example: lutris:rungame/hitman-3
