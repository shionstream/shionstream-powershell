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

.PARAMETER Stats
No description available.
.OUTPUTS

V1DashboardStatsGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardStatsGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Stats}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardStatsGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Stats) {
            throw "invalid value for 'Stats', 'Stats' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'stats' = ${Stats}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardStatsGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardStatsGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardStatsGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardStatsGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardStatsGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardStatsGet200Response
        $AllProperties = ('stats')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'stats' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'stats'))) {
            throw "Error! JSON cannot be serialized due to the required property 'stats' missing."
        } else {
            $Stats = $JsonParameters.PSobject.Properties['stats'].value
        }

        $PSO = [PSCustomObject]@{
            'stats' = ${Stats}
        }

        return $PSO
    }

}

