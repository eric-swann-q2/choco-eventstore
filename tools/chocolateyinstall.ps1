
$ErrorActionPreference = 'Stop';

$packageName= 'eventstore'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.geteventstore.com/binaries/EventStore-OSS-Win-v3.6.2.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
}

Install-ChocolateyZipPackage @packageArgs

















