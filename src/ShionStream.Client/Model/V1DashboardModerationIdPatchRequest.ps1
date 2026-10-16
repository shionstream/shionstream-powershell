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

.PARAMETER Status
No description available.
.PARAMETER Action
No description available.
.OUTPUTS

V1DashboardModerationIdPatchRequest<PSCustomObject>
#>

function Initialize-V1DashboardModerationIdPatchRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("resolved", "dismissed")]
        [String]
        ${Status},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("delete_comment", "keep")]
        [String]
        ${Action} = "keep"
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardModerationIdPatchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'status' = ${Status}
            'action' = ${Action}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardModerationIdPatchRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardModerationIdPatchRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardModerationIdPatchRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardModerationIdPatchRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardModerationIdPatchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardModerationIdPatchRequest
        $AllProperties = ('status', 'action')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'status' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'action'))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties['action'].value
        }

        $PSO = [PSCustomObject]@{
            'status' = ${Status}
            'action' = ${Action}
        }

        return $PSO
    }

}

