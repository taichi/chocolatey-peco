$packageName = "peco"
$version = "0.4.7"
$url = "https://github.com/peco/peco/releases/download/v$version/peco_windows_386.zip"
$url64 = "https://github.com/peco/peco/releases/download/v$version/peco_windows_amd64.zip"

Install-ChocolateyZipPackage $packageName "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
