$packageName = "peco"
$version = "0.5.7"
$url = "https://github.com/peco/peco/releases/download/v$version/peco_windows_386.zip"
$url64 = "https://github.com/peco/peco/releases/download/v$version/peco_windows_amd64.zip"
$cs = "D29B550B55D257F4F84E1E2F82D61B6E219AF60EA782BBF17C0DCFCA983B71C1B5ED195159830C3FB10405E9D828F56DDE89C40FE7DE6AC9E82C50339286608D"
$cs64 = "8D09BAE76C751EE8C3C069D4BA694D75A986867E79BCBA2CA8E892487601420C5EA7A656F24DF8DA6BCD457CF03AA574E9D2FA012179A27B496E694817FF62C6"
$type = "sha512"

Install-ChocolateyZipPackage $packageName "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$url64" -Checksum "$cs" -ChecksumType "$type" -Checksum64 "$cs64" -ChecksumType64 "$type"
