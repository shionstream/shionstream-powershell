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
.PARAMETER Number
No description available.
.PARAMETER Title
No description available.
.OUTPUTS

V1EpisodesIdStreamGet200ResponseEpisode<PSCustomObject>
#>

function Initialize-V1EpisodesIdStreamGet200ResponseEpisode {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AnimeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Number},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1EpisodesIdStreamGet200ResponseEpisode' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $AnimeId) {
            throw "invalid value for 'AnimeId', 'AnimeId' cannot be null."
        }

        if ($null -eq $Number) {
            throw "invalid value for 'Number', 'Number' cannot be null."
        }

        if ($null -eq $Title) {
            throw "invalid value for 'Title', 'Title' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'number' = ${Number}
            'title' = ${Title}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1EpisodesIdStreamGet200ResponseEpisode<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1EpisodesIdStreamGet200ResponseEpisode<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1EpisodesIdStreamGet200ResponseEpisode<PSCustomObject>
#>
function ConvertFrom-JsonToV1EpisodesIdStreamGet200ResponseEpisode {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1EpisodesIdStreamGet200ResponseEpisode' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1EpisodesIdStreamGet200ResponseEpisode
        $AllProperties = ('id', 'animeId', 'number', 'title')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'number'))) {
            throw "Error! JSON cannot be serialized due to the required property 'number' missing."
        } else {
            $Number = $JsonParameters.PSobject.Properties['number'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'title'))) {
            throw "Error! JSON cannot be serialized due to the required property 'title' missing."
        } else {
            $Title = $JsonParameters.PSobject.Properties['title'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'number' = ${Number}
            'title' = ${Title}
        }

        return $PSO
    }

}

