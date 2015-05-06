$packageName = "peco"
$zipFileName = "pecoInstall.zip"

$packagelibPath=$env:chocolateyPackageFolder
$zipContentFile=(join-path $packagelibPath $zipFileName) + ".txt"
$zipContents=get-content $zipContentFile
foreach ($fileInZip in $zipContents) {
  remove-item "$fileInZip" -ErrorAction SilentlyContinue
}
