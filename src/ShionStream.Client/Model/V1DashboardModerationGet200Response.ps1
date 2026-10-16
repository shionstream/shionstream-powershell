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

.PARAMETER Reports
No description available.
.OUTPUTS

V1DashboardModerationGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardModerationGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Reports}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardModerationGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Reports) {
            throw "invalid value for 'Reports', 'Reports' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'reports' = ${Reports}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardModerationGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardModerationGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardModerationGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardModerationGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardModerationGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardModerationGet200Response
        $AllProperties = ('reports')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'reports' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reports'))) {
            throw "Error! JSON cannot be serialized due to the required property 'reports' missing."
        } else {
            $Reports = $JsonParameters.PSobject.Properties['reports'].value
        }

        $PSO = [PSCustomObject]@{
            'reports' = ${Reports}
        }

        return $PSO
    }

}

