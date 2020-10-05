mkdir /sandbox
mkdir /sync

Copy-Item .gitconfig ~/.gitconfig

# chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y ctrl2cap
choco install -y virtualbox

# scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop bucket add extras
scoop install docker
scoop install gibo
scoop install git
scoop install vscode
