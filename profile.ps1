# Set common env vars
$env:EDITOR = "nvim"
$env:VISUAL = "code"


# Hacky workaround to prioritize scoop binaries
$env:Path = "$env:SCOOP\shims;$env:Path"

# Add essentials dirs to path
$env:Path = "$HOME\bin;$env:Path"

# Add wezterm nightly dir to path
$wezterm_dir_computed = (Resolve-Path "$HOME\bin\WezTerm-windows-*").path
$env:Path = "$wezterm_dir_computed;$env:Path"

# Add VC++ build tools
#$vcpp_build_tools_dir_computed = (Resolve-Path "D:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\*\bin\Hostx64\x64").path
#$env:Path = "$vcpp_build_tools_dir_computed;$env:Path"

# Set rustup env vars
#$env:CARGO_HOME = "$env:SCOOP\persist\rustup-msvc\.cargo"
#$env:RUSTUP_HOME = "$env:SCOOP\persist\rustup-msvc\.rustup"
# Add rust bin dir
$env:Path = "$env:SCOOP\persist\rustup-msvc\.cargo\bin;$env:Path"

# Fix neovim pyenv root detection
$env:PYENV_ROOT = "$env:SCOOP\apps\pyenv\current"

# Add cc to path
# Requires msys2 with pkgs
function cc_path {
	$env:Path = "$env:SCOOP\apps\msys2\current\mingw64\bin;$env:Path"
}
# Just call cargo from msys2!

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

function snvim { nvim -u NONE $args }
function nve { neovide.exe $args }

# Nvim with VC++ build tools for nvim-treesitter
function nts {
	$vs_install_path = vswhere.exe -latest -property installationPath
	$command = '{0}\Common7\Tools\VsDevCmd.bat' -f $vs_install_path
	$command = $command.replace(' ', '^ ').replace('(', '^(').replace(')', '^)')
	echo $command
	cmd.exe /c $command `& powershell.exe -C nvim $args
}

function y2mp3 {
	param (
		$url
		  )
	youtube-dl --extract-audio --audio-format mp3 $url
}

# Enable tab completion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Enable <c-d> exit
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

# Initialize starship
#$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Invoke-Expression (&starship init powershell)
