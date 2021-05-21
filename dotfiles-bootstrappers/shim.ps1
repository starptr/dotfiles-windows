$ErrorActionPreference = "Stop"

# Link powershell profile
cmd.exe /c "mklink $profile $HOME\profile.ps1"

# Link alacritty config
cmd.exe /c "mklink $env:appdata\alacritty\alacritty.yml $HOME\dotfiles-linux\.config\alacritty\alacritty.yml"
