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

.PARAMETER Player
No description available.
.PARAMETER Notifications
No description available.
.OUTPUTS

V1UserSettingsGet200ResponseData<PSCustomObject>
#>

function Initialize-V1UserSettingsGet200ResponseData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Player},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Notifications}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsGet200ResponseData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Player) {
            throw "invalid value for 'Player', 'Player' cannot be null."
        }

        if ($null -eq $Notifications) {
            throw "invalid value for 'Notifications', 'Notifications' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'player' = ${Player}
            'notifications' = ${Notifications}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsGet200ResponseData<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsGet200ResponseData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsGet200ResponseData<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsGet200ResponseData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsGet200ResponseData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsGet200ResponseData
        $AllProperties = ('player', 'notifications')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'player' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'player'))) {
            throw "Error! JSON cannot be serialized due to the required property 'player' missing."
        } else {
            $Player = $JsonParameters.PSobject.Properties['player'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'notifications'))) {
            throw "Error! JSON cannot be serialized due to the required property 'notifications' missing."
        } else {
            $Notifications = $JsonParameters.PSobject.Properties['notifications'].value
        }

        $PSO = [PSCustomObject]@{
            'player' = ${Player}
            'notifications' = ${Notifications}
        }

        return $PSO
    }

}

