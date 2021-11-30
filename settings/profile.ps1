Set-PSReadLineOption -BellStyle None -EditMode Emacs

Invoke-Expression -Command $(gh completion -s powershell | Out-String)

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

function sandbox {
  param (
    [string]$Image,
    [string]$Command
  )

  docker run -it -w /workspace $Image $Command
}

function twgroup {
  $json = Get-Content "~/.tools.json" | ConvertFrom-Json

  foreach ($group in $json.data.groups) {
    $accountText = ($group.accounts | ForEach-Object { "from:{0}" -f $_.name }) -join " OR "

    Start-Process "https://twitter.com/search?src=spelling_expansion_revert_click&f=live&q=exclude:replies ${accountText}"
  }
}

function twsearch {
  Start-Process "https://twitter.com/search?src=spelling_expansion_revert_click&f=live&q=@inbox OR exclude:hashtags lang:ja ${Args}"
}

function ysearch {
  Start-Process "https://www.youtube.com/results?search_query=${Args}&sp=CAASAhAB"
}
