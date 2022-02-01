# wsl
winget import ./packages.json

# etc
mkdir ~/Documents/PowerShell

Copy-Item ./settings/profile.ps1 ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
Copy-Item ./settings/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
Copy-Item ./settings/.gitconfig ~/.gitconfig
Copy-Item ./settings/.wslconfig ~/.wslconfig
