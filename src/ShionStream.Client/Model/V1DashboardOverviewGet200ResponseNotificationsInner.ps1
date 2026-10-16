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
.PARAMETER Title
No description available.
.PARAMETER Description
No description available.
.PARAMETER Time
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

V1DashboardOverviewGet200ResponseNotificationsInner<PSCustomObject>
#>

function Initialize-V1DashboardOverviewGet200ResponseNotificationsInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Time},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("success", "alert", "info")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200ResponseNotificationsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Title) {
            throw "invalid value for 'Title', 'Title' cannot be null."
        }

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $Time) {
            throw "invalid value for 'Time', 'Time' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'title' = ${Title}
            'description' = ${Description}
            'time' = ${Time}
            'type' = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardOverviewGet200ResponseNotificationsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardOverviewGet200ResponseNotificationsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardOverviewGet200ResponseNotificationsInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardOverviewGet200ResponseNotificationsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200ResponseNotificationsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardOverviewGet200ResponseNotificationsInner
        $AllProperties = ('id', 'title', 'description', 'time', 'type')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'title'))) {
            throw "Error! JSON cannot be serialized due to the required property 'title' missing."
        } else {
            $Title = $JsonParameters.PSobject.Properties['title'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'description'))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties['description'].value
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
            'title' = ${Title}
            'description' = ${Description}
            'time' = ${Time}
            'type' = ${Type}
        }

        return $PSO
    }

}

