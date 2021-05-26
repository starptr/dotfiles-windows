# Set common env vars
$env:EDITOR = "nvim"
$env:VISUAL = "code"

# Add essentials dirs to path
$env:Path = "$HOME\bin;$env:Path"

# Set aliases
function l { ls.exe --color -A }
function la { ls.exe --color -al }
function d { lsd -A }
function da { lsd -al }

function cm { chezmoi }
function cmr { chezmoi -vn apply }
function cmw { chezmoi -v apply }
function cme {
	param (
		$filename
		  )
	chezmoi edit $filename
}
function cma {
	param (
		$filename
		  )
	chezmoi add $filename
}
function cmg { chezmoi cd }

function nve { neovide.exe $args }

function y2mp3 {
	param (
		$url
		  )
	youtube-dl --extract-audio --audio-format mp3 $url
}

# Enable tab completion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Initialize starship
#$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Invoke-Expression (&starship init powershell)
