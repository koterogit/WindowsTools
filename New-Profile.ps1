if (-not(Test-Path $profile))
{
    New-Item -path $profile -type file -force
}
