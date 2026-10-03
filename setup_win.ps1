# winget
winget import --accept-package-agreements ./winget.json

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Install-Module posh-git -Scope CurrentUser -Force

# config files
$configs = @(
  @{
    src = "./settings/windows/Microsoft.PowerShell_profile.ps1"
    dst = $PROFILE
  }
)
$configs | ForEach-Object { Copy-Item $_.src $_.dst }
