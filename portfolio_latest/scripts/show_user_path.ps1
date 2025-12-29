$u = [Environment]::GetEnvironmentVariable('Path','User')
$u -split ';' | ForEach-Object { Write-Output $_ }