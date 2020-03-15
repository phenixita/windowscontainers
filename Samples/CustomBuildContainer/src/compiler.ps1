[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $myParam
)

Write-Host 'compiling'
Set-Content -Value $myParam -Path App.exe.txt -Force
Write-Host 'completed'
