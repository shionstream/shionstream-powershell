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
.PARAMETER Slug
No description available.
.PARAMETER TitleRomaji
No description available.
.PARAMETER TitleEnglish
No description available.
.PARAMETER TitleJapanese
No description available.
.PARAMETER Synopsis
No description available.
.PARAMETER CoverImage
No description available.
.PARAMETER BannerImage
No description available.
.PARAMETER Type
No description available.
.PARAMETER Status
No description available.
.PARAMETER SeasonName
No description available.
.PARAMETER SeasonYear
No description available.
.PARAMETER EpisodesCount
No description available.
.PARAMETER DurationPerEp
No description available.
.PARAMETER Rating
No description available.
.PARAMETER IsFeatured
No description available.
.PARAMETER IsTrending
No description available.
.PARAMETER SubOrDub
No description available.
.OUTPUTS

V1AnimeGet200ResponseDataInner<PSCustomObject>
#>

function Initialize-V1AnimeGet200ResponseDataInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slug},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TitleRomaji},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TitleEnglish},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TitleJapanese},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Synopsis},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CoverImage},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BannerImage},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SeasonName},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${SeasonYear},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${EpisodesCount},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DurationPerEp},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Rating},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsFeatured},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsTrending},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SubOrDub}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1AnimeGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Slug) {
            throw "invalid value for 'Slug', 'Slug' cannot be null."
        }

        if ($null -eq $TitleRomaji) {
            throw "invalid value for 'TitleRomaji', 'TitleRomaji' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $EpisodesCount) {
            throw "invalid value for 'EpisodesCount', 'EpisodesCount' cannot be null."
        }

        if ($null -eq $IsFeatured) {
            throw "invalid value for 'IsFeatured', 'IsFeatured' cannot be null."
        }

        if ($null -eq $IsTrending) {
            throw "invalid value for 'IsTrending', 'IsTrending' cannot be null."
        }

        if ($null -eq $SubOrDub) {
            throw "invalid value for 'SubOrDub', 'SubOrDub' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'slug' = ${Slug}
            'titleRomaji' = ${TitleRomaji}
            'titleEnglish' = ${TitleEnglish}
            'titleJapanese' = ${TitleJapanese}
            'synopsis' = ${Synopsis}
            'coverImage' = ${CoverImage}
            'bannerImage' = ${BannerImage}
            'type' = ${Type}
            'status' = ${Status}
            'seasonName' = ${SeasonName}
            'seasonYear' = ${SeasonYear}
            'episodesCount' = ${EpisodesCount}
            'durationPerEp' = ${DurationPerEp}
            'rating' = ${Rating}
            'isFeatured' = ${IsFeatured}
            'isTrending' = ${IsTrending}
            'subOrDub' = ${SubOrDub}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1AnimeGet200ResponseDataInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1AnimeGet200ResponseDataInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1AnimeGet200ResponseDataInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1AnimeGet200ResponseDataInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1AnimeGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1AnimeGet200ResponseDataInner
        $AllProperties = ('id', 'slug', 'titleRomaji', 'titleEnglish', 'titleJapanese', 'synopsis', 'coverImage', 'bannerImage', 'type', 'status', 'seasonName', 'seasonYear', 'episodesCount', 'durationPerEp', 'rating', 'isFeatured', 'isTrending', 'subOrDub')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'slug'))) {
            throw "Error! JSON cannot be serialized due to the required property 'slug' missing."
        } else {
            $Slug = $JsonParameters.PSobject.Properties['slug'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'titleRomaji'))) {
            throw "Error! JSON cannot be serialized due to the required property 'titleRomaji' missing."
        } else {
            $TitleRomaji = $JsonParameters.PSobject.Properties['titleRomaji'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'type'))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties['type'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodesCount'))) {
            throw "Error! JSON cannot be serialized due to the required property 'episodesCount' missing."
        } else {
            $EpisodesCount = $JsonParameters.PSobject.Properties['episodesCount'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isFeatured'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isFeatured' missing."
        } else {
            $IsFeatured = $JsonParameters.PSobject.Properties['isFeatured'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isTrending'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isTrending' missing."
        } else {
            $IsTrending = $JsonParameters.PSobject.Properties['isTrending'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'subOrDub'))) {
            throw "Error! JSON cannot be serialized due to the required property 'subOrDub' missing."
        } else {
            $SubOrDub = $JsonParameters.PSobject.Properties['subOrDub'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'titleEnglish'))) { #optional property not found
            $TitleEnglish = $null
        } else {
            $TitleEnglish = $JsonParameters.PSobject.Properties['titleEnglish'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'titleJapanese'))) { #optional property not found
            $TitleJapanese = $null
        } else {
            $TitleJapanese = $JsonParameters.PSobject.Properties['titleJapanese'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'synopsis'))) { #optional property not found
            $Synopsis = $null
        } else {
            $Synopsis = $JsonParameters.PSobject.Properties['synopsis'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'coverImage'))) { #optional property not found
            $CoverImage = $null
        } else {
            $CoverImage = $JsonParameters.PSobject.Properties['coverImage'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'bannerImage'))) { #optional property not found
            $BannerImage = $null
        } else {
            $BannerImage = $JsonParameters.PSobject.Properties['bannerImage'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'seasonName'))) { #optional property not found
            $SeasonName = $null
        } else {
            $SeasonName = $JsonParameters.PSobject.Properties['seasonName'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'seasonYear'))) { #optional property not found
            $SeasonYear = $null
        } else {
            $SeasonYear = $JsonParameters.PSobject.Properties['seasonYear'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'durationPerEp'))) { #optional property not found
            $DurationPerEp = $null
        } else {
            $DurationPerEp = $JsonParameters.PSobject.Properties['durationPerEp'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'rating'))) { #optional property not found
            $Rating = $null
        } else {
            $Rating = $JsonParameters.PSobject.Properties['rating'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'slug' = ${Slug}
            'titleRomaji' = ${TitleRomaji}
            'titleEnglish' = ${TitleEnglish}
            'titleJapanese' = ${TitleJapanese}
            'synopsis' = ${Synopsis}
            'coverImage' = ${CoverImage}
            'bannerImage' = ${BannerImage}
            'type' = ${Type}
            'status' = ${Status}
            'seasonName' = ${SeasonName}
            'seasonYear' = ${SeasonYear}
            'episodesCount' = ${EpisodesCount}
            'durationPerEp' = ${DurationPerEp}
            'rating' = ${Rating}
            'isFeatured' = ${IsFeatured}
            'isTrending' = ${IsTrending}
            'subOrDub' = ${SubOrDub}
        }

        return $PSO
    }

}

