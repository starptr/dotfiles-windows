# Set common env vars
$env:EDITOR = "nvim"
$env:VISUAL = "code"

# Add essentials dirs to path
$env:Path = "$HOME\bin;$env:Path"

# Set aliases
function l { ls.exe --color -A }
function la { ls.exe --color -al }
function nve { neovide.exe }

# Initialize starship
#$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
#Invoke-Expression (&starship init powershell)
