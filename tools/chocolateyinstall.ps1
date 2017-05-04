$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'autospinstaller.zip'
$unzipLocation = "C:\scripts\autospinstaller"

If(test-path $unzipLocation){Remove-Item $unzipLocation -Force -Recurse -Confirm:$false}
Get-ChocolateyUnzip $fileLocation $unzipLocation
