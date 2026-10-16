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

.PARAMETER DefaultQuality
No description available.
.PARAMETER DefaultSubtitle
No description available.
.PARAMETER AutoPlayNext
No description available.
.PARAMETER AutoSkipIntro
No description available.
.PARAMETER PreferredAudio
No description available.
.OUTPUTS

V1UserSettingsPatchRequestPlayer<PSCustomObject>
#>

function Initialize-V1UserSettingsPatchRequestPlayer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultQuality},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultSubtitle},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AutoPlayNext},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AutoSkipIntro},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PreferredAudio}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequestPlayer' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'defaultQuality' = ${DefaultQuality}
            'defaultSubtitle' = ${DefaultSubtitle}
            'autoPlayNext' = ${AutoPlayNext}
            'autoSkipIntro' = ${AutoSkipIntro}
            'preferredAudio' = ${PreferredAudio}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsPatchRequestPlayer<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsPatchRequestPlayer<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsPatchRequestPlayer<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsPatchRequestPlayer {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequestPlayer' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsPatchRequestPlayer
        $AllProperties = ('defaultQuality', 'defaultSubtitle', 'autoPlayNext', 'autoSkipIntro', 'preferredAudio')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'defaultQuality'))) { #optional property not found
            $DefaultQuality = $null
        } else {
            $DefaultQuality = $JsonParameters.PSobject.Properties['defaultQuality'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'defaultSubtitle'))) { #optional property not found
            $DefaultSubtitle = $null
        } else {
            $DefaultSubtitle = $JsonParameters.PSobject.Properties['defaultSubtitle'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'autoPlayNext'))) { #optional property not found
            $AutoPlayNext = $null
        } else {
            $AutoPlayNext = $JsonParameters.PSobject.Properties['autoPlayNext'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'autoSkipIntro'))) { #optional property not found
            $AutoSkipIntro = $null
        } else {
            $AutoSkipIntro = $JsonParameters.PSobject.Properties['autoSkipIntro'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'preferredAudio'))) { #optional property not found
            $PreferredAudio = $null
        } else {
            $PreferredAudio = $JsonParameters.PSobject.Properties['preferredAudio'].value
        }

        $PSO = [PSCustomObject]@{
            'defaultQuality' = ${DefaultQuality}
            'defaultSubtitle' = ${DefaultSubtitle}
            'autoPlayNext' = ${AutoPlayNext}
            'autoSkipIntro' = ${AutoSkipIntro}
            'preferredAudio' = ${PreferredAudio}
        }

        return $PSO
    }

}

