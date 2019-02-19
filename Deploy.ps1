$ErrorActionPreference = "Stop"

$serviceFolder = "C:\Services\Tucio"
$serviceName = "TucioBarcodeScanner"
$artifactsFolder = "package\*"

Copy-Item $artifactsFolder $serviceFolder
New-Service -Name $serviceName -BinaryPathName "$serviceFolder\BarcodeScanner.dll"

Start-Service -Name $serviceName