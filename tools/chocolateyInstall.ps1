$packageName = "peco"
$version = "0.5.3"
$url = "https://github.com/peco/peco/releases/download/v$version/peco_windows_386.zip"
$url64 = "https://github.com/peco/peco/releases/download/v$version/peco_windows_amd64.zip"
$cs = "8DCB719CDB389D6499C6F071C5A5452F5BDD555EA3453A0B3B28CD57C7F0F2C513B830356E4585359EB23805718E9F98CBD966BCF441EF329FDBB4AF66C8B266"
$cs64 = "6C64C254F9003EEE32FFC628D67EB78E34738370E2B4C43302BD39C28E8BD8E18A547CC2550EFDDA7537B640901309CF95FDA18B648D9F3019A7FF765FDF2522"
$type = "sha512"

Install-ChocolateyZipPackage $packageName "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64" -Checksum "$cs" -ChecksumType "$type" -Checksum64 "$cs64" -ChecksumType64 "$type"
