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

.PARAMETER VarProfile
No description available.
.PARAMETER Player
No description available.
.PARAMETER Notifications
No description available.
.OUTPUTS

V1UserSettingsPatchRequest<PSCustomObject>
#>

function Initialize-V1UserSettingsPatchRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarProfile},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Player},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Notifications}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'profile' = ${VarProfile}
            'player' = ${Player}
            'notifications' = ${Notifications}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsPatchRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsPatchRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsPatchRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsPatchRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsPatchRequest
        $AllProperties = ('profile', 'player', 'notifications')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'profile'))) { #optional property not found
            $VarProfile = $null
        } else {
            $VarProfile = $JsonParameters.PSobject.Properties['profile'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'player'))) { #optional property not found
            $Player = $null
        } else {
            $Player = $JsonParameters.PSobject.Properties['player'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'notifications'))) { #optional property not found
            $Notifications = $null
        } else {
            $Notifications = $JsonParameters.PSobject.Properties['notifications'].value
        }

        $PSO = [PSCustomObject]@{
            'profile' = ${VarProfile}
            'player' = ${Player}
            'notifications' = ${Notifications}
        }

        return $PSO
    }

}

