$packageName = "peco"
$leaf = Split-Path $env:chocolateyPackageFolder -Leaf
$version = $leaf.Remove(0, $packageName.Length+1)
$url = "https://github.com/peco/peco/releases/download/v$version/peco_windows_386.zip"
$url64 = "https://github.com/peco/peco/releases/download/v$version/peco_windows_amd64.zip"

Install-ChocolateyZipPackage $packageName "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64"
