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

.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER Username
No description available.
.OUTPUTS

V1DashboardModerationGet200ResponseReportsInnerReporter<PSCustomObject>
#>

function Initialize-V1DashboardModerationGet200ResponseReportsInnerReporter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardModerationGet200ResponseReportsInnerReporter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Username) {
            throw "invalid value for 'Username', 'Username' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'username' = ${Username}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardModerationGet200ResponseReportsInnerReporter<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardModerationGet200ResponseReportsInnerReporter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardModerationGet200ResponseReportsInnerReporter<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardModerationGet200ResponseReportsInnerReporter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardModerationGet200ResponseReportsInnerReporter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardModerationGet200ResponseReportsInnerReporter
        $AllProperties = ('id', 'name', 'username')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'id'))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties['id'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'name'))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties['name'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'username'))) {
            throw "Error! JSON cannot be serialized due to the required property 'username' missing."
        } else {
            $Username = $JsonParameters.PSobject.Properties['username'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'username' = ${Username}
        }

        return $PSO
    }

}

