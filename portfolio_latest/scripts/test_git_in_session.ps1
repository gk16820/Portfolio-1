$env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [Environment]::GetEnvironmentVariable('Path','User')
Write-Output "PATH refreshed (first 3 entries):"; ($env:Path -split ';')[0..2] | ForEach-Object { Write-Output $_ }
& git --version