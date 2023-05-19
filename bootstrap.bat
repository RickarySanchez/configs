@echo off
curl -o configs.zip -L https://github.com/RickarySanchez/configs/archive/master.zip
tar -xf configs.zip
ren configs-master configs-test
del configs.zip

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

cd configs/choco
choco install packages.config