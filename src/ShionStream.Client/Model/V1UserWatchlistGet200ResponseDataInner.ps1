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
.PARAMETER Status
No description available.
.PARAMETER IsFavorite
No description available.
.PARAMETER CurrentEpisode
No description available.
.PARAMETER UserRating
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.OUTPUTS

V1UserWatchlistGet200ResponseDataInner<PSCustomObject>
#>

function Initialize-V1UserWatchlistGet200ResponseDataInner {
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
        ${Status},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsFavorite},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${CurrentEpisode},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${UserRating},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedAt},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UpdatedAt}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserWatchlistGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $AnimeId) {
            throw "invalid value for 'AnimeId', 'AnimeId' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $IsFavorite) {
            throw "invalid value for 'IsFavorite', 'IsFavorite' cannot be null."
        }

        if ($null -eq $CurrentEpisode) {
            throw "invalid value for 'CurrentEpisode', 'CurrentEpisode' cannot be null."
        }

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($null -eq $UpdatedAt) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'status' = ${Status}
            'isFavorite' = ${IsFavorite}
            'currentEpisode' = ${CurrentEpisode}
            'userRating' = ${UserRating}
            'createdAt' = ${CreatedAt}
            'updatedAt' = ${UpdatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserWatchlistGet200ResponseDataInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserWatchlistGet200ResponseDataInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserWatchlistGet200ResponseDataInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserWatchlistGet200ResponseDataInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserWatchlistGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserWatchlistGet200ResponseDataInner
        $AllProperties = ('id', 'animeId', 'status', 'isFavorite', 'currentEpisode', 'userRating', 'createdAt', 'updatedAt')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isFavorite'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isFavorite' missing."
        } else {
            $IsFavorite = $JsonParameters.PSobject.Properties['isFavorite'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'currentEpisode'))) {
            throw "Error! JSON cannot be serialized due to the required property 'currentEpisode' missing."
        } else {
            $CurrentEpisode = $JsonParameters.PSobject.Properties['currentEpisode'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'createdAt'))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties['createdAt'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'updatedAt'))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties['updatedAt'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'userRating'))) { #optional property not found
            $UserRating = $null
        } else {
            $UserRating = $JsonParameters.PSobject.Properties['userRating'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'status' = ${Status}
            'isFavorite' = ${IsFavorite}
            'currentEpisode' = ${CurrentEpisode}
            'userRating' = ${UserRating}
            'createdAt' = ${CreatedAt}
            'updatedAt' = ${UpdatedAt}
        }

        return $PSO
    }

}

