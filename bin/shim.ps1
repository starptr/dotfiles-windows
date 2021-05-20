$ErrorActionPreference = "Stop"

# Hardlink powershell profile
cmd.exe /c "mklink $([Environment]::GetFolderPath("MyDocuments"))\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 $HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
