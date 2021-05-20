# dotfiles-windows
Dotfiles for windows

## Install
1. Run `Set-ExecutionPolicy Unrestricted -scope CurrentUser` in powershell
2. (Optional) Set the environment variables `SCOOP` and `SCOOP_GLOBAL`
    - Run
    ```powershell
    $env:SCOOP='D:\Applications\ScoopRootDirectory'
    [Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
    
    $env:SCOOP_GLOBAL='F:\GlobalScoopApps'
    [Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
    ```
3. Run `iex ((new-object net.webclient).DownloadString('https://raw.github.com/starptr/dotfiles-windows/main/bin/bootstrap.ps1'))`
