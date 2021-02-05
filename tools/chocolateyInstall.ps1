$packageName = "peco"
$version = "0.5.8"
$url = "https://github.com/peco/peco/releases/download/v$version/peco_windows_386.zip"
$url64 = "https://github.com/peco/peco/releases/download/v$version/peco_windows_amd64.zip"
$cs = "D253BADF02A8567157F9B292A2311447308164A07A83902188EF1111F183FE4E91A09F232431CD243BCDF39E9F47DE1C83C8A498D6BFE550818E33E476B0E737"
$cs64 = "0AA8E4A44F115C665A35C261C1D1D13317092905A136662693B652826A5791ABE7C7091AFE23A13AEEC0EEF030FFF00D9B992F8EC50483FE6123966BDBA754F7"
$type = "sha512"

Install-ChocolateyZipPackage $packageName "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64" -Checksum "$cs" -ChecksumType "$type" -Checksum64 "$cs64" -ChecksumType64 "$type"
