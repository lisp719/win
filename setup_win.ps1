# winget
winget import --accept-package-agreements ./winget.json

# scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

# etc
Copy-Item ./settings/.gitconfig ~/.gitconfig
Copy-Item ./settings/.wslconfig ~/.wslconfig
Copy-Item ./settings/starship.toml ~/.config/starship.toml
Copy-Item ./settings/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
Copy-Item ./settings/Microsoft.PowerShell_profile.ps1 $PROFILE
