$ErrorActionPreference = "Stop"

# Link powershell profile
cmd.exe /c "mklink $profile $HOME\profile.ps1"
# Create alacritty shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$HOME\Desktop\a2.lnk")
$Shortcut.TargetPath = "$(which alacritty)"
$Shortcut.Arguments = "--working-directory $HOME --config-file $HOME\dotfiles-linux\.config\alacritty\alacritty.yml"
$Shortcut.Save()
