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

.PARAMETER Roles
No description available.
.OUTPUTS

V1DashboardRolesGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardRolesGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Roles}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardRolesGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Roles) {
            throw "invalid value for 'Roles', 'Roles' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'roles' = ${Roles}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardRolesGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardRolesGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardRolesGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardRolesGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardRolesGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardRolesGet200Response
        $AllProperties = ('roles')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'roles' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'roles'))) {
            throw "Error! JSON cannot be serialized due to the required property 'roles' missing."
        } else {
            $Roles = $JsonParameters.PSobject.Properties['roles'].value
        }

        $PSO = [PSCustomObject]@{
            'roles' = ${Roles}
        }

        return $PSO
    }

}

