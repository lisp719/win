[CmdletBinding()]
param(
    [switch]$Apply
)

$scriptPath = Join-Path $PSScriptRoot 'check_wsl.sh'
$failed = @()
$scriptArgs = @()
if ($Apply) {
    $scriptArgs += '--apply'
}

function Invoke-UpdateCheck {
    param(
        [string]$Name,
        [scriptblock]$Command
    )

    Write-Host "=== Windows: $Name ==="
    try {
        & $Command
        if ($LASTEXITCODE -ne 0) {
            $script:failed += "Windows: $Name"
        }
    } catch {
        Write-Warning "Windows: $Name - $_"
        $script:failed += "Windows: $Name"
    }
}

Invoke-UpdateCheck 'winget' {
    if ($Apply) {
        & sudo winget upgrade --all
    } else {
        & winget upgrade
    }
}

Invoke-UpdateCheck 'store' {
    if ($Apply) {
        & store updates --apply true
    } else {
        & store updates --apply false
    }
}

Invoke-UpdateCheck 'mise' {
    if ($Apply) {
        & mise upgrade --global
    } else {
        & mise outdated --global
    }
}

Invoke-UpdateCheck 'mdots' {
    Push-Location -LiteralPath $PSScriptRoot
    try {
        if ($Apply) {
            & mise exec -- mdots push --target win
        } else {
            & mise exec -- mdots push --target win --dry-run
        }
    } finally {
        Pop-Location
    }
}

foreach ($distro in @('FedoraLinux-44', 'archlinux')) {
    Write-Host "=== $distro ==="
    $wslPath = & wsl.exe --distribution $distro --exec wslpath -a $scriptPath
    if ($LASTEXITCODE -ne 0) {
        $failed += $distro
        continue
    }

    & wsl.exe --distribution $distro --exec sh $wslPath @scriptArgs
    if ($LASTEXITCODE -ne 0) {
        $failed += $distro
    }
}

if ($failed.Count -gt 0) {
    Write-Error "Failed: $($failed -join ', ')"
    exit 1
}
