[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $myParam
)

Write-Host "Build tools installer executed"
Write-Host "Param $myParam"