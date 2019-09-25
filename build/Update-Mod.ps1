<#
    .SYNOPSIS
        Publish the newest build of the mod to the factorio mod folder for testing.
    .NOTES
        Author:     SarcasticMonkey
        Versions:   1.0 (2019-09-25)
    .
#>

param (
    [Parameter(Mandatory = $false)][string] $ModFolder = (Join-Path -Path $env:APPDATA -ChildPath "Factorio\Mods")
)

$Version = (Get-Content -Path ..\source\EnhancedWarfare\info.json | ConvertFrom-Json).version
$Destination = (New-Item -Path $ModFolder -ItemType Directory -Name ("EnhancedWarfare_" + $Version)).FullName
Copy-Item -Path ..\source\EnhancedWarfare\* -Destination $Destination -Recurse -Force -Confirm:$false -Verbose