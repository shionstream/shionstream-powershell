#
# ShionStream API
# Modular anime streaming and metadata API built with Hono on Cloudflare Workers.
# Version: 1.0.0
# Author: ShionStream Engineering Team
# Contact: dev@gox.my.id
# Website: https://gox.my.id
# Generated for ShionStream API SDK; DO NOT EDIT.
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Seasons
No description available.
.OUTPUTS

V1DashboardSeasonsGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardSeasonsGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Seasons}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardSeasonsGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Seasons) {
            throw "invalid value for 'Seasons', 'Seasons' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'seasons' = ${Seasons}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardSeasonsGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardSeasonsGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardSeasonsGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardSeasonsGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardSeasonsGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardSeasonsGet200Response
        $AllProperties = ('seasons')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'seasons' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'seasons'))) {
            throw "Error! JSON cannot be serialized due to the required property 'seasons' missing."
        } else {
            $Seasons = $JsonParameters.PSobject.Properties['seasons'].value
        }

        $PSO = [PSCustomObject]@{
            'seasons' = ${Seasons}
        }

        return $PSO
    }

}

