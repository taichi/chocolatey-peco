$packageName = "peco"
$zipFileName = "pecoInstall.zip"

try {
  $packagelibPath=$env:chocolateyPackageFolder
  $zipContentFile=(join-path $packagelibPath $zipFileName) + ".txt"
  $zipContents=get-content $zipContentFile
  foreach ($fileInZip in $zipContents) {
    remove-item "$fileInZip" -ErrorAction SilentlyContinue
  }

  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}
