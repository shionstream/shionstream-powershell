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
.PARAMETER AnimeId
No description available.
.PARAMETER EpisodeId
No description available.
.PARAMETER EpisodeNumber
No description available.
.PARAMETER ProgressPercent
No description available.
.PARAMETER DurationSeconds
No description available.
.PARAMETER ProgressSeconds
No description available.
.PARAMETER LastWatchedAt
No description available.
.OUTPUTS

V1UserHistoryGet200ResponseDataInner<PSCustomObject>
#>

function Initialize-V1UserHistoryGet200ResponseDataInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AnimeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EpisodeId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${EpisodeNumber},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${ProgressPercent},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${DurationSeconds},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${ProgressSeconds},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastWatchedAt}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserHistoryGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $AnimeId) {
            throw "invalid value for 'AnimeId', 'AnimeId' cannot be null."
        }

        if ($null -eq $EpisodeId) {
            throw "invalid value for 'EpisodeId', 'EpisodeId' cannot be null."
        }

        if ($null -eq $ProgressPercent) {
            throw "invalid value for 'ProgressPercent', 'ProgressPercent' cannot be null."
        }

        if ($null -eq $DurationSeconds) {
            throw "invalid value for 'DurationSeconds', 'DurationSeconds' cannot be null."
        }

        if ($null -eq $ProgressSeconds) {
            throw "invalid value for 'ProgressSeconds', 'ProgressSeconds' cannot be null."
        }

        if ($null -eq $LastWatchedAt) {
            throw "invalid value for 'LastWatchedAt', 'LastWatchedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'episodeNumber' = ${EpisodeNumber}
            'progressPercent' = ${ProgressPercent}
            'durationSeconds' = ${DurationSeconds}
            'progressSeconds' = ${ProgressSeconds}
            'lastWatchedAt' = ${LastWatchedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserHistoryGet200ResponseDataInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserHistoryGet200ResponseDataInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserHistoryGet200ResponseDataInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserHistoryGet200ResponseDataInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserHistoryGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserHistoryGet200ResponseDataInner
        $AllProperties = ('id', 'animeId', 'episodeId', 'episodeNumber', 'progressPercent', 'durationSeconds', 'progressSeconds', 'lastWatchedAt')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'animeId'))) {
            throw "Error! JSON cannot be serialized due to the required property 'animeId' missing."
        } else {
            $AnimeId = $JsonParameters.PSobject.Properties['animeId'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodeId'))) {
            throw "Error! JSON cannot be serialized due to the required property 'episodeId' missing."
        } else {
            $EpisodeId = $JsonParameters.PSobject.Properties['episodeId'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'progressPercent'))) {
            throw "Error! JSON cannot be serialized due to the required property 'progressPercent' missing."
        } else {
            $ProgressPercent = $JsonParameters.PSobject.Properties['progressPercent'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'durationSeconds'))) {
            throw "Error! JSON cannot be serialized due to the required property 'durationSeconds' missing."
        } else {
            $DurationSeconds = $JsonParameters.PSobject.Properties['durationSeconds'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'progressSeconds'))) {
            throw "Error! JSON cannot be serialized due to the required property 'progressSeconds' missing."
        } else {
            $ProgressSeconds = $JsonParameters.PSobject.Properties['progressSeconds'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'lastWatchedAt'))) {
            throw "Error! JSON cannot be serialized due to the required property 'lastWatchedAt' missing."
        } else {
            $LastWatchedAt = $JsonParameters.PSobject.Properties['lastWatchedAt'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodeNumber'))) { #optional property not found
            $EpisodeNumber = $null
        } else {
            $EpisodeNumber = $JsonParameters.PSobject.Properties['episodeNumber'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'episodeNumber' = ${EpisodeNumber}
            'progressPercent' = ${ProgressPercent}
            'durationSeconds' = ${DurationSeconds}
            'progressSeconds' = ${ProgressSeconds}
            'lastWatchedAt' = ${LastWatchedAt}
        }

        return $PSO
    }

}

