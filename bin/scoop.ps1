$ErrorActionPreference = "Stop"

# Install scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# Load scoop into path
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","User") + ";" + [System.Environment]::GetEnvironmentVariable("Path","Machine") 

# chezmoi bucket
scoop bucket add twpayne https://github.com/twpayne/scoop-bucket
# Install essentials
scoop install 7zip aria2 git sudo which chezmoi

# Delete chezmoi binary from bootstrap
Remove-Item ~/bin/chezmoi.exe