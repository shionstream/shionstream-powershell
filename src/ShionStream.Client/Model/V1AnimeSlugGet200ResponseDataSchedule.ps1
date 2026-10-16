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

.PARAMETER ReleaseDay
No description available.
.PARAMETER ReleaseTime
No description available.
.PARAMETER EpisodeNumber
No description available.
.PARAMETER Status
No description available.
.PARAMETER Timezone
No description available.
.OUTPUTS

V1AnimeSlugGet200ResponseDataSchedule<PSCustomObject>
#>

function Initialize-V1AnimeSlugGet200ResponseDataSchedule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReleaseDay},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReleaseTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${EpisodeNumber},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Timezone}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1AnimeSlugGet200ResponseDataSchedule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ReleaseDay) {
            throw "invalid value for 'ReleaseDay', 'ReleaseDay' cannot be null."
        }

        if ($null -eq $ReleaseTime) {
            throw "invalid value for 'ReleaseTime', 'ReleaseTime' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $Timezone) {
            throw "invalid value for 'Timezone', 'Timezone' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'releaseDay' = ${ReleaseDay}
            'releaseTime' = ${ReleaseTime}
            'episodeNumber' = ${EpisodeNumber}
            'status' = ${Status}
            'timezone' = ${Timezone}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1AnimeSlugGet200ResponseDataSchedule<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1AnimeSlugGet200ResponseDataSchedule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1AnimeSlugGet200ResponseDataSchedule<PSCustomObject>
#>
function ConvertFrom-JsonToV1AnimeSlugGet200ResponseDataSchedule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1AnimeSlugGet200ResponseDataSchedule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1AnimeSlugGet200ResponseDataSchedule
        $AllProperties = ('releaseDay', 'releaseTime', 'episodeNumber', 'status', 'timezone')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'releaseDay' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'releaseDay'))) {
            throw "Error! JSON cannot be serialized due to the required property 'releaseDay' missing."
        } else {
            $ReleaseDay = $JsonParameters.PSobject.Properties['releaseDay'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'releaseTime'))) {
            throw "Error! JSON cannot be serialized due to the required property 'releaseTime' missing."
        } else {
            $ReleaseTime = $JsonParameters.PSobject.Properties['releaseTime'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'timezone'))) {
            throw "Error! JSON cannot be serialized due to the required property 'timezone' missing."
        } else {
            $Timezone = $JsonParameters.PSobject.Properties['timezone'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodeNumber'))) { #optional property not found
            $EpisodeNumber = $null
        } else {
            $EpisodeNumber = $JsonParameters.PSobject.Properties['episodeNumber'].value
        }

        $PSO = [PSCustomObject]@{
            'releaseDay' = ${ReleaseDay}
            'releaseTime' = ${ReleaseTime}
            'episodeNumber' = ${EpisodeNumber}
            'status' = ${Status}
            'timezone' = ${Timezone}
        }

        return $PSO
    }

}

