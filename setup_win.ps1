# winget
winget import --accept-package-agreements ./winget.json

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Install-Module posh-git -Scope CurrentUser -Force

# config files
$configs = @(
  @{
    src = "./settings/common/AGENTS.md"
    dst = "~/.copilot/copilot-instructions.md"
  }
  @{
    src = "./settings/common/helix/config.toml"
    dst = "~/AppData/Roaming/helix/config.toml"
  }
  @{
    src = "./settings/common/jj/config.toml"
    dst = "~/AppData/Roaming/jj/config.toml"
  }
  @{
    src = "./settings/common/starship.toml"
    dst = "~/.config/starship.toml"
  }
  @{
    src = "./settings/common/zellij/config.kdl"
    dst = "~/AppData/Roaming/Zellij/config/config.kdl"
  }
  @{
    src = "./settings/windows/.gitconfig"
    dst = "~/.gitconfig"
  }
  @{
    src = "./settings/windows/.wslconfig"
    dst = "~/.wslconfig"
  }
  @{
    src = "./settings/windows/Microsoft.PowerShell_profile.ps1"
    dst = $PROFILE
  }
  @{
    src = "./settings/windows/lazygit/config.yml"
    dst = "~/AppData/Local/lazygit/config.yml"
  }
  @{
    src = "./settings/windows/terminal/settings.json"
    dst = "~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
  }
)
$configs | ForEach-Object { Copy-Item $_.src $_.dst }
