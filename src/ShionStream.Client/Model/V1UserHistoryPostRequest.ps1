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
.OUTPUTS

V1UserHistoryPostRequest<PSCustomObject>
#>

function Initialize-V1UserHistoryPostRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AnimeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EpisodeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${EpisodeNumber},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${ProgressPercent} = 0,
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${DurationSeconds} = 0,
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${ProgressSeconds} = 0
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserHistoryPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $AnimeId) {
            throw "invalid value for 'AnimeId', 'AnimeId' cannot be null."
        }

        if ($AnimeId.length -lt 1) {
            throw "invalid value for 'AnimeId', the character length must be greater than or equal to 1."
        }

        if ($null -eq $EpisodeId) {
            throw "invalid value for 'EpisodeId', 'EpisodeId' cannot be null."
        }

        if ($EpisodeId.length -lt 1) {
            throw "invalid value for 'EpisodeId', the character length must be greater than or equal to 1."
        }

        if ($ProgressPercent -and $ProgressPercent -gt 100) {
          throw "invalid value for 'ProgressPercent', must be smaller than or equal to 100."
        }

        if ($ProgressPercent -and $ProgressPercent -lt 0) {
          throw "invalid value for 'ProgressPercent', must be greater than or equal to 0."
        }

        if ($DurationSeconds -and $DurationSeconds -lt 0) {
          throw "invalid value for 'DurationSeconds', must be greater than or equal to 0."
        }

        if ($ProgressSeconds -and $ProgressSeconds -lt 0) {
          throw "invalid value for 'ProgressSeconds', must be greater than or equal to 0."
        }


        $PSO = [PSCustomObject]@{
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'episodeNumber' = ${EpisodeNumber}
            'progressPercent' = ${ProgressPercent}
            'durationSeconds' = ${DurationSeconds}
            'progressSeconds' = ${ProgressSeconds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserHistoryPostRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserHistoryPostRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserHistoryPostRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserHistoryPostRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserHistoryPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserHistoryPostRequest
        $AllProperties = ('animeId', 'episodeId', 'episodeNumber', 'progressPercent', 'durationSeconds', 'progressSeconds')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'animeId' missing."
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodeNumber'))) { #optional property not found
            $EpisodeNumber = $null
        } else {
            $EpisodeNumber = $JsonParameters.PSobject.Properties['episodeNumber'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'progressPercent'))) { #optional property not found
            $ProgressPercent = $null
        } else {
            $ProgressPercent = $JsonParameters.PSobject.Properties['progressPercent'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'durationSeconds'))) { #optional property not found
            $DurationSeconds = $null
        } else {
            $DurationSeconds = $JsonParameters.PSobject.Properties['durationSeconds'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'progressSeconds'))) { #optional property not found
            $ProgressSeconds = $null
        } else {
            $ProgressSeconds = $JsonParameters.PSobject.Properties['progressSeconds'].value
        }

        $PSO = [PSCustomObject]@{
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'episodeNumber' = ${EpisodeNumber}
            'progressPercent' = ${ProgressPercent}
            'durationSeconds' = ${DurationSeconds}
            'progressSeconds' = ${ProgressSeconds}
        }

        return $PSO
    }

}

