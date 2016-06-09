
$ErrorActionPreference = 'Stop';

$displayName = "Event Store 3.6.2"
$packageName = 'eventstore'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir   = "$env:ProgramFiles\$packageName"
$url        = 'http://download.geteventstore.com/binaries/EventStore-OSS-Win-v3.6.2.zip'
$configFile = "serverconfig.yaml"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $installDir
  url           = $url
}

Install-ChocolateyZipPackage @packageArgs

Copy-Item "$toolsDir\$configFile" $installDir

& nssm install $packageName "$installDir\EventStore.ClusterNode.exe" --config serverconfig.yaml
& nssm set eventstore Start SERVICE_AUTO_START
& nssm start $packageName














