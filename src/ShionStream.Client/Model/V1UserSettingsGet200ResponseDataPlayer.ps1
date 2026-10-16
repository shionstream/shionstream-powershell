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

V1UserSettingsGet200ResponseDataPlayer<PSCustomObject>
#>

function Initialize-V1UserSettingsGet200ResponseDataPlayer {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultQuality},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultSubtitle},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${AutoPlayNext},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${AutoSkipIntro},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PreferredAudio}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsGet200ResponseDataPlayer' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $DefaultQuality) {
            throw "invalid value for 'DefaultQuality', 'DefaultQuality' cannot be null."
        }

        if ($null -eq $DefaultSubtitle) {
            throw "invalid value for 'DefaultSubtitle', 'DefaultSubtitle' cannot be null."
        }

        if ($null -eq $AutoPlayNext) {
            throw "invalid value for 'AutoPlayNext', 'AutoPlayNext' cannot be null."
        }

        if ($null -eq $AutoSkipIntro) {
            throw "invalid value for 'AutoSkipIntro', 'AutoSkipIntro' cannot be null."
        }

        if ($null -eq $PreferredAudio) {
            throw "invalid value for 'PreferredAudio', 'PreferredAudio' cannot be null."
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

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsGet200ResponseDataPlayer<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsGet200ResponseDataPlayer<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsGet200ResponseDataPlayer<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsGet200ResponseDataPlayer {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsGet200ResponseDataPlayer' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsGet200ResponseDataPlayer
        $AllProperties = ('defaultQuality', 'defaultSubtitle', 'autoPlayNext', 'autoSkipIntro', 'preferredAudio')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'defaultQuality' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'defaultQuality'))) {
            throw "Error! JSON cannot be serialized due to the required property 'defaultQuality' missing."
        } else {
            $DefaultQuality = $JsonParameters.PSobject.Properties['defaultQuality'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'defaultSubtitle'))) {
            throw "Error! JSON cannot be serialized due to the required property 'defaultSubtitle' missing."
        } else {
            $DefaultSubtitle = $JsonParameters.PSobject.Properties['defaultSubtitle'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'autoPlayNext'))) {
            throw "Error! JSON cannot be serialized due to the required property 'autoPlayNext' missing."
        } else {
            $AutoPlayNext = $JsonParameters.PSobject.Properties['autoPlayNext'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'autoSkipIntro'))) {
            throw "Error! JSON cannot be serialized due to the required property 'autoSkipIntro' missing."
        } else {
            $AutoSkipIntro = $JsonParameters.PSobject.Properties['autoSkipIntro'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'preferredAudio'))) {
            throw "Error! JSON cannot be serialized due to the required property 'preferredAudio' missing."
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

