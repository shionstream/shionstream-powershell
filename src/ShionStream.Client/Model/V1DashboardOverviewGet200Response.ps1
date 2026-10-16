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

.PARAMETER TrafficData
No description available.
.PARAMETER RecentActivities
No description available.
.PARAMETER Notifications
No description available.
.OUTPUTS

V1DashboardOverviewGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardOverviewGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TrafficData},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RecentActivities},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Notifications}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $TrafficData) {
            throw "invalid value for 'TrafficData', 'TrafficData' cannot be null."
        }

        if ($null -eq $RecentActivities) {
            throw "invalid value for 'RecentActivities', 'RecentActivities' cannot be null."
        }

        if ($null -eq $Notifications) {
            throw "invalid value for 'Notifications', 'Notifications' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'trafficData' = ${TrafficData}
            'recentActivities' = ${RecentActivities}
            'notifications' = ${Notifications}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardOverviewGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardOverviewGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardOverviewGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardOverviewGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardOverviewGet200Response
        $AllProperties = ('trafficData', 'recentActivities', 'notifications')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'trafficData' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'trafficData'))) {
            throw "Error! JSON cannot be serialized due to the required property 'trafficData' missing."
        } else {
            $TrafficData = $JsonParameters.PSobject.Properties['trafficData'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'recentActivities'))) {
            throw "Error! JSON cannot be serialized due to the required property 'recentActivities' missing."
        } else {
            $RecentActivities = $JsonParameters.PSobject.Properties['recentActivities'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'notifications'))) {
            throw "Error! JSON cannot be serialized due to the required property 'notifications' missing."
        } else {
            $Notifications = $JsonParameters.PSobject.Properties['notifications'].value
        }

        $PSO = [PSCustomObject]@{
            'trafficData' = ${TrafficData}
            'recentActivities' = ${RecentActivities}
            'notifications' = ${Notifications}
        }

        return $PSO
    }

}

