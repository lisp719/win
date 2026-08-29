if (Get-Module -ListAvailable -Name posh-git) {
  Import-Module posh-git -ErrorAction SilentlyContinue
}

$env:EDITOR = "hx"
$env:SHELL = "pwsh.exe"

if (Test-Path "C:\Program Files\Git\usr\bin\file.exe") {
  $env:YAZI_FILE_ONE = "C:\Program Files\Git\usr\bin\file.exe"
}

Set-Alias lzg lazygit
Set-PSReadLineOption -BellStyle None -EditMode Emacs

if (Get-Command gh -ErrorAction SilentlyContinue) {
  Invoke-Expression -Command $(gh completion -s powershell | Out-String)
}

if (Get-Command jj -ErrorAction SilentlyContinue) {
  jj util completion power-shell | Out-String | Invoke-Expression
}

if (Get-Command mise -ErrorAction SilentlyContinue) {
  (&mise activate pwsh) | Out-String | Invoke-Expression
}

if (Get-Command starship -ErrorAction SilentlyContinue) {
  Invoke-Expression (&starship init powershell)
}

function phi {
  Write-Output "https://via.placeholder.com/${Args}"
}

function en {
  Start-Process "https://www.deepl.com/translator#ja/en/${Args}"
}

function local {
  param (
    [int]$Port
  )

  Start-Process "http://localhost:${Port}"
}

function xping {
  param (
    [int] $Count = 10
  )

  PING.EXE www.xbox.com -n $Count
}

function sandbox {
  param (
    [string]$Image,
    [string]$Command = "bash"
  )

  docker run -it -w /workspace $Image $Command
}

function xsearch {
  Start-Process "https://x.com/search?q=lang:ja ${Args}&f=live"
}

function ysearch {
  Start-Process "https://www.youtube.com/results?search_query=${Args}&sp=CAASAhAB"
}

# Because the destination will not be saved, write it towards the end.
if (Get-Command zoxide -ErrorAction SilentlyContinue) {
  Invoke-Expression (& { (zoxide init powershell | Out-String) })
}
