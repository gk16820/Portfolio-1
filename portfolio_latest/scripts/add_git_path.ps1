$gitPath = 'C:\Users\gokul\AppData\Local\GitHubDesktop\app-3.5.4\resources\app\git\cmd'
$u = [Environment]::GetEnvironmentVariable('Path','User')
if ($u -eq $null -or $u -notlike "*$gitPath*") {
    if ($u) { $new = $u + ';' + $gitPath } else { $new = $gitPath }
    [Environment]::SetEnvironmentVariable('Path', $new, 'User')
    Write-Output 'UPDATED'
} else {
    Write-Output 'ALREADY'
}