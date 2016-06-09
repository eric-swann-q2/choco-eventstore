try{
    nssm stop $packageName
}
catch{
    Write-Output "Could not stop the service..will continue trying to remove."
}

nssm remove $packageName confirm