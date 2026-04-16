# winget
winget import --accept-package-agreements ./winget.json

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Install-Module posh-git -Scope CurrentUser -Force

# etc
Copy-Item ./settings/common/AGENTS.md ~/.copilot/copilot-instructions.md
Copy-Item ./settings/common/jj/config.toml ~/AppData/Roaming/jj/config.toml
Copy-Item ./settings/common/starship.toml ~/.config/starship.toml
Copy-Item ./settings/common/zellij/config.kdl ~/AppData/Roaming/Zellij/config/config.kdl

Copy-Item ./settings/windows/.gitconfig ~/.gitconfig
Copy-Item ./settings/windows/.wslconfig ~/.wslconfig
Copy-Item ./settings/windows/.wezterm.lua ~/.wezterm.lua
Copy-Item ./settings/windows/Microsoft.PowerShell_profile.ps1 $PROFILE
Copy-Item ./settings/windows/lazygit/config.yml ~/AppData/Local/lazygit/config.yml
Copy-Item ./settings/windows/terminal/settings.json ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
