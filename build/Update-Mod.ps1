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

Copy-Item -Path ..\source\EnhancedWarfare_0.1.0 -Destination $ModFolder -Recurse -Force -Confirm:$false -Verbose