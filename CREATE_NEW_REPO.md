# Creating a New GitHub Repository

## Steps to Create and Push to a New Repository

### Option 1: Create via GitHub Web Interface

1. Go to https://github.com/new
2. Repository name: `ssms-mcp` (or your preferred name)
3. Description: "Python MCP Server for SQL Server Management Studio - Database Access"
4. Choose **Public** visibility
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

### Option 2: Use the commands below after creating the repo

After creating the repository on GitHub, run these commands:

```powershell
# Add the new remote (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Or if you want to replace the existing remote:
git remote set-url origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Push to the new repository
git push -u origin main
```

### Current Status
- All sensitive information has been removed
- Code is ready for public release
- Latest commit: "Update GitHub URLs in pyproject.toml"

