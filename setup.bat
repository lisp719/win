cd /d %~dp0

mkdir c:\code\sandbox
mkdir c:\sync

powershell Invoke-RestMethod http://download.sysinternals.com/files/Ctrl2Cap.zip -OutFile Ctrl2Cap.zip
powershell expand-archive Ctrl2Cap.zip
del Ctrl2Cap.zip
cd Ctrl2Cap
ctrl2cap.exe /install

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

powershell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
