# vscode
code --install-extension esbenp.prettier-vscode
code --install-extension kahole.magit
code --install-extension mhutchie.git-graph
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.sublime-keybindings
code --install-extension tranhl.find-then-jump

# etc
mkdir ~/Documents/PowerShell
mkdir ~/bin
mkdir ~/workspace

Copy-Item ./settings/profile.ps1 ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
Copy-Item ./settings/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
Copy-Item ./settings/vscode/* ~/AppData/Roaming/Code/User/
Copy-Item ./settings/.gitconfig ~/.gitconfig
Copy-Item ./settings/.wslconfig ~/.wslconfig
