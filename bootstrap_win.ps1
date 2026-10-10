# winget
winget import --accept-package-agreements ./windows/winget.json

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Install-Module posh-git -Scope CurrentUser -Force

# config file
Copy-Item "./dotfiles/manual/Microsoft.PowerShell_profile.ps1" $PROFILE
