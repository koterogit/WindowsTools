cd $PSScriptRoot

# powershell
if (-not(Test-Path $profile))
{
    New-Item -path $profile -type file -force
}
cp Microsoft.PowerShell_profile.ps1 $home\Documents\PowerShell\


# vim
cp .\.vimrc $home

# peco
cp .\.pbuff $home
cp .\.pcd $home
