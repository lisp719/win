# chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y ctrl2cap
choco install -y virtualbox
choco install -y vscode

# scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop bucket add extras
scoop install docker
scoop install gibo
scoop install git

# vscode
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.powershell
code --install-extension ms-vscode.sublime-keybindings

# etc
mkdir /code
mkdir /sandbox
mkdir /sync

Copy-Item ./settings/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
Copy-Item ./settings/vscode/* ~/AppData/Roaming/Code/User/
Copy-Item ./settings/.gitconfig ~/.gitconfig
