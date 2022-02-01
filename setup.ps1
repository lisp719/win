# winget
winget import --accept-package-agreements ./packages.json

# scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

if (!(Get-Command "scoop" -ErrorAction SilentlyContinue)) {
  Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
  scoop bucket add extras
}

scoop install gh gibo lazydocker

# etc
if (!(Test-Path ~/Documents/PowerShell)) {
  mkdir ~/Documents/PowerShell
}

Copy-Item ./settings/profile.ps1 ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
Copy-Item ./settings/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
Copy-Item ./settings/.gitconfig ~/.gitconfig
Copy-Item ./settings/.wslconfig ~/.wslconfig
