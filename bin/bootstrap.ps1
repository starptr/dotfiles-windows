$ErrorActionPreference = "Stop"
# Download chezmoi binary into ~/bin/chezmoi.exe
(Invoke-WebRequest -UseBasicParsing https://git.io/chezmoi.ps1).Content | powershell -c -

# Clone repo
~/bin/chezmoi.exe init https://github.com/starptr/dotfiles-windows.git
~/bin/chezmoi.exe apply

# Now, all of the other files in the repo are local to the filesystem
& "~\shim.ps1"
& "~\scoop.ps1"