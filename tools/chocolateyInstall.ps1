$packageName = "peco"
$version = "0.5.1"
$url = "https://github.com/peco/peco/releases/download/v$version/peco_windows_386.zip"
$url64 = "https://github.com/peco/peco/releases/download/v$version/peco_windows_amd64.zip"
$cs ="EBFEF349342B9A0209CF8273134954E9DE4B03690BF3AF6580630F6C4B6B2A22A552A8F8D4F708B2B14F8D2D390D4CB7F4BB911932F4E366A1B53E5F728DD9D9"
$cs64 = "2B2894F0BD47A5474EEC5CA37ACEB4801A1B776FC1D100BFA6BBE93ACD26AB78CD0B1B709361C0AC7C3D3975812D6712047F5F934BAD1907FE47EFFE91EE449A"
$type = "sha512"

Install-ChocolateyZipPackage $packageName "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64" -Checksum "$cs" -ChecksumType "$type" -Checksum64 "$cs64" -ChecksumType64 "$type"
