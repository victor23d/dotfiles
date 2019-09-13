cp -r ~/dotfiles/vscode/* /mnt/c/Users/Administrator/AppData/Roaming/Code/User/
sed -i /mnt/c/Users/Administrator/AppData/Roaming/Code/User/settings.json -e 's/"window.zoomLevel": 0,/"window.zoomLevel": 0.8,/g'
