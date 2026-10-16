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
.PARAMETER User
No description available.
.PARAMETER Action
No description available.
.PARAMETER Target
No description available.
.PARAMETER Time
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

V1DashboardOverviewGet200ResponseRecentActivitiesInner<PSCustomObject>
#>

function Initialize-V1DashboardOverviewGet200ResponseRecentActivitiesInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${User},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Target},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Time},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("upload", "delete", "edit", "user", "stream")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200ResponseRecentActivitiesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $User) {
            throw "invalid value for 'User', 'User' cannot be null."
        }

        if ($null -eq $Action) {
            throw "invalid value for 'Action', 'Action' cannot be null."
        }

        if ($null -eq $Target) {
            throw "invalid value for 'Target', 'Target' cannot be null."
        }

        if ($null -eq $Time) {
            throw "invalid value for 'Time', 'Time' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'user' = ${User}
            'action' = ${Action}
            'target' = ${Target}
            'time' = ${Time}
            'type' = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardOverviewGet200ResponseRecentActivitiesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardOverviewGet200ResponseRecentActivitiesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardOverviewGet200ResponseRecentActivitiesInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardOverviewGet200ResponseRecentActivitiesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200ResponseRecentActivitiesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardOverviewGet200ResponseRecentActivitiesInner
        $AllProperties = ('id', 'user', 'action', 'target', 'time', 'type')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'user'))) {
            throw "Error! JSON cannot be serialized due to the required property 'user' missing."
        } else {
            $User = $JsonParameters.PSobject.Properties['user'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'action'))) {
            throw "Error! JSON cannot be serialized due to the required property 'action' missing."
        } else {
            $Action = $JsonParameters.PSobject.Properties['action'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'target'))) {
            throw "Error! JSON cannot be serialized due to the required property 'target' missing."
        } else {
            $Target = $JsonParameters.PSobject.Properties['target'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'time'))) {
            throw "Error! JSON cannot be serialized due to the required property 'time' missing."
        } else {
            $Time = $JsonParameters.PSobject.Properties['time'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'type'))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties['type'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'user' = ${User}
            'action' = ${Action}
            'target' = ${Target}
            'time' = ${Time}
            'type' = ${Type}
        }

        return $PSO
    }

}

