# PowerShell script to set up a new GitHub repository
# Run this after creating the repository on GitHub

param(
    [Parameter(Mandatory=$true)]
    [string]$RepoName,
    
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername
)

Write-Host "Setting up new GitHub repository: $RepoName" -ForegroundColor Green

# Remove existing remote if it exists
$existingRemote = git remote get-url origin 2>$null
if ($existingRemote) {
    Write-Host "Removing existing remote..." -ForegroundColor Yellow
    git remote remove origin
}

# Add new remote
$repoUrl = "https://github.com/$GitHubUsername/$RepoName.git"
Write-Host "Adding remote: $repoUrl" -ForegroundColor Cyan
git remote add origin $repoUrl

# Verify remote
Write-Host "`nVerifying remote configuration:" -ForegroundColor Green
git remote -v

# Push to new repository
Write-Host "`nPushing to new repository..." -ForegroundColor Green
Write-Host "Repository URL: $repoUrl" -ForegroundColor Cyan
Write-Host "`nRun this command to push:" -ForegroundColor Yellow
Write-Host "git push -u origin main" -ForegroundColor White

