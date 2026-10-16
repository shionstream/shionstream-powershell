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

.PARAMETER DisplayName
No description available.
.PARAMETER Bio
No description available.
.PARAMETER AvatarUrl
No description available.
.OUTPUTS

V1UserSettingsPatchRequestProfile<PSCustomObject>
#>

function Initialize-V1UserSettingsPatchRequestProfile {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Bio},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AvatarUrl}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequestProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'displayName' = ${DisplayName}
            'bio' = ${Bio}
            'avatarUrl' = ${AvatarUrl}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsPatchRequestProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsPatchRequestProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsPatchRequestProfile<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsPatchRequestProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequestProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsPatchRequestProfile
        $AllProperties = ('displayName', 'bio', 'avatarUrl')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'displayName'))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties['displayName'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'bio'))) { #optional property not found
            $Bio = $null
        } else {
            $Bio = $JsonParameters.PSobject.Properties['bio'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'avatarUrl'))) { #optional property not found
            $AvatarUrl = $null
        } else {
            $AvatarUrl = $JsonParameters.PSobject.Properties['avatarUrl'].value
        }

        $PSO = [PSCustomObject]@{
            'displayName' = ${DisplayName}
            'bio' = ${Bio}
            'avatarUrl' = ${AvatarUrl}
        }

        return $PSO
    }

}

