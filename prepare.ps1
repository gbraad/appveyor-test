$Url = "https://github.com/minishift/minishift/releases/download/v1.0.0-beta.4/minishift-1.0.0-beta.4-windows-amd64.zip"
$Downloaded = "$PSScriptRoot\minishift.zip"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($Url, $Downloaded)

Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::ExtractToDirectory($Downloaded, "$PSScriptRoot/out")

