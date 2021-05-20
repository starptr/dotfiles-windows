$ErrorActionPreference = "Stop"

# Hardlink powershell profile
New-Item -Path "$([Environment]::GetFolderPath("MyDocuments"))\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" -ItemType HardLink -Value "~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" -Force
