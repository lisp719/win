Set-PSReadLineOption -BellStyle None -EditMode Emacs

Invoke-Expression (& { (zoxide init powershell | Out-String) })

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
  Start-Process "https://x.com/search?src=spelling_expansion_revert_click&f=live&q=@inbox OR exclude:hashtags exclude:replies lang:ja ${Args}"
}

function ysearch {
  Start-Process "https://www.youtube.com/results?search_query=${Args}&sp=CAASAhAB"
}

