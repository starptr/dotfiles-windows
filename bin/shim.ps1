$ErrorActionPreference = "Stop"

# Hardlink powershell profile
cmd.exe /c "mklink $profile $HOME\profile.ps1"
