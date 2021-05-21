$ErrorActionPreference = "Stop"

# Link powershell profile
cmd.exe /c "mklink $profile $HOME\profile.ps1"

# Link alacritty config
cmd.exe /c "mklink /j $env:appdata\alacritty $HOME\dotfiles-linux\.config\alacritty"
