try {
    $packageName= 'eventstore'
    $installDir   = "$env:ProgramFiles\$packageName"

    if ($LASTEXITCODE -ne 0)
    {
        Write-ChocolateyFailure $packageName "Failed to uninstall with exit code: $LASTEXITCODE"
        throw  
    }
    Write-ChocolateySuccess $packageName
} catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
} 