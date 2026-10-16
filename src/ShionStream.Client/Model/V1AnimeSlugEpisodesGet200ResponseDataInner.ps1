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
.PARAMETER Number
No description available.
.PARAMETER Title
No description available.
.PARAMETER DurationSeconds
No description available.
.PARAMETER Thumbnail
No description available.
.PARAMETER AirDate
No description available.
.PARAMETER Status
No description available.
.PARAMETER ViewsCount
No description available.
.PARAMETER IsVip
No description available.
.PARAMETER CreatedAt
No description available.
.OUTPUTS

V1AnimeSlugEpisodesGet200ResponseDataInner<PSCustomObject>
#>

function Initialize-V1AnimeSlugEpisodesGet200ResponseDataInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Number},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${DurationSeconds},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Thumbnail},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AirDate},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${ViewsCount},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsVip},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedAt}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1AnimeSlugEpisodesGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Number) {
            throw "invalid value for 'Number', 'Number' cannot be null."
        }

        if ($null -eq $Title) {
            throw "invalid value for 'Title', 'Title' cannot be null."
        }

        if ($null -eq $DurationSeconds) {
            throw "invalid value for 'DurationSeconds', 'DurationSeconds' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $ViewsCount) {
            throw "invalid value for 'ViewsCount', 'ViewsCount' cannot be null."
        }

        if ($null -eq $IsVip) {
            throw "invalid value for 'IsVip', 'IsVip' cannot be null."
        }

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'number' = ${Number}
            'title' = ${Title}
            'durationSeconds' = ${DurationSeconds}
            'thumbnail' = ${Thumbnail}
            'airDate' = ${AirDate}
            'status' = ${Status}
            'viewsCount' = ${ViewsCount}
            'isVip' = ${IsVip}
            'createdAt' = ${CreatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1AnimeSlugEpisodesGet200ResponseDataInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1AnimeSlugEpisodesGet200ResponseDataInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1AnimeSlugEpisodesGet200ResponseDataInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1AnimeSlugEpisodesGet200ResponseDataInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1AnimeSlugEpisodesGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1AnimeSlugEpisodesGet200ResponseDataInner
        $AllProperties = ('id', 'number', 'title', 'durationSeconds', 'thumbnail', 'airDate', 'status', 'viewsCount', 'isVip', 'createdAt')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'durationSeconds'))) {
            throw "Error! JSON cannot be serialized due to the required property 'durationSeconds' missing."
        } else {
            $DurationSeconds = $JsonParameters.PSobject.Properties['durationSeconds'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'viewsCount'))) {
            throw "Error! JSON cannot be serialized due to the required property 'viewsCount' missing."
        } else {
            $ViewsCount = $JsonParameters.PSobject.Properties['viewsCount'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isVip'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isVip' missing."
        } else {
            $IsVip = $JsonParameters.PSobject.Properties['isVip'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'createdAt'))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties['createdAt'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'thumbnail'))) { #optional property not found
            $Thumbnail = $null
        } else {
            $Thumbnail = $JsonParameters.PSobject.Properties['thumbnail'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'airDate'))) { #optional property not found
            $AirDate = $null
        } else {
            $AirDate = $JsonParameters.PSobject.Properties['airDate'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'number' = ${Number}
            'title' = ${Title}
            'durationSeconds' = ${DurationSeconds}
            'thumbnail' = ${Thumbnail}
            'airDate' = ${AirDate}
            'status' = ${Status}
            'viewsCount' = ${ViewsCount}
            'isVip' = ${IsVip}
            'createdAt' = ${CreatedAt}
        }

        return $PSO
    }

}

