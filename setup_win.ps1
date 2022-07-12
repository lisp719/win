# winget
winget import --accept-package-agreements ./winget.json

# scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

if (!(Get-Command "scoop" -ErrorAction SilentlyContinue)) {
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
  scoop bucket add extras
}

scoop install gh gibo

# etc
if (!(Test-Path ~/Documents/PowerShell)) {
  mkdir ~/Documents/PowerShell
}

Copy-Item ./settings/.gitconfig ~/.gitconfig
Copy-Item ./settings/.wslconfig ~/.wslconfig
Copy-Item ./settings/gh/config.yml "${env:APPDATA}/Github CLI/config.yml"
Copy-Item ./settings/profile.ps1 ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
Copy-Item ./settings/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
