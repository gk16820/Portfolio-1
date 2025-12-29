# Refresh PATH from registry to include our update
$env:Path = [Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [Environment]::GetEnvironmentVariable('Path','User')

# Verify git is available
Write-Output "Checking git availability..."
git --version

Write-Output "`nInitializing git repository..."
git init

Write-Output "`nConfiguring git (if not already done)..."
git config --global user.email "gokul@example.com" 2>$null
git config --global user.name "Gokul" 2>$null

Write-Output "`nAdding files..."
git add .

Write-Output "`nCommitting files..."
git commit -m "Initial commit"

Write-Output "`nSetting main branch..."
git branch -M main

Write-Output "`nAdding remote..."
git remote add origin https://github.com/gk16820/Portfolio-1.git

Write-Output "`nPushing to GitHub..."
git push -u origin main

Write-Output "`n✅ Push complete!"
