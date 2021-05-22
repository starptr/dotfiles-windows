$ErrorActionPreference = "Stop"

# Link powershell profile
cmd.exe /c "mklink $profile $HOME\profile.ps1"

# Junction to alacritty config
cmd.exe /c "mklink /j $env:appdata\alacritty $HOME\dotfiles-linux\.config\alacritty"

# Junction to wezterm config
cmd.exe /c "mklink /j $HOME\.config\wezterm $HOME\dotfiles-linux\.config\wezterm"
