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
.PARAMETER Content
No description available.
.PARAMETER ParentId
No description available.
.PARAMETER IsSpoiler
No description available.
.PARAMETER GuestName
No description available.
.PARAMETER GuestEmail
No description available.
.OUTPUTS

V1CommentsPostRequest<PSCustomObject>
#>

function Initialize-V1CommentsPostRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AnimeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EpisodeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsSpoiler} = $false,
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GuestName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GuestEmail}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1CommentsPostRequest' | Write-Debug
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

        if ($null -eq $Content) {
            throw "invalid value for 'Content', 'Content' cannot be null."
        }

        if ($Content.length -gt 2000) {
            throw "invalid value for 'Content', the character length must be smaller than or equal to 2000."
        }

        if ($Content.length -lt 1) {
            throw "invalid value for 'Content', the character length must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'content' = ${Content}
            'parentId' = ${ParentId}
            'isSpoiler' = ${IsSpoiler}
            'guestName' = ${GuestName}
            'guestEmail' = ${GuestEmail}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1CommentsPostRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1CommentsPostRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1CommentsPostRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1CommentsPostRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1CommentsPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1CommentsPostRequest
        $AllProperties = ('animeId', 'episodeId', 'content', 'parentId', 'isSpoiler', 'guestName', 'guestEmail')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'content'))) {
            throw "Error! JSON cannot be serialized due to the required property 'content' missing."
        } else {
            $Content = $JsonParameters.PSobject.Properties['content'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'parentId'))) { #optional property not found
            $ParentId = $null
        } else {
            $ParentId = $JsonParameters.PSobject.Properties['parentId'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isSpoiler'))) { #optional property not found
            $IsSpoiler = $null
        } else {
            $IsSpoiler = $JsonParameters.PSobject.Properties['isSpoiler'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'guestName'))) { #optional property not found
            $GuestName = $null
        } else {
            $GuestName = $JsonParameters.PSobject.Properties['guestName'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'guestEmail'))) { #optional property not found
            $GuestEmail = $null
        } else {
            $GuestEmail = $JsonParameters.PSobject.Properties['guestEmail'].value
        }

        $PSO = [PSCustomObject]@{
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'content' = ${Content}
            'parentId' = ${ParentId}
            'isSpoiler' = ${IsSpoiler}
            'guestName' = ${GuestName}
            'guestEmail' = ${GuestEmail}
        }

        return $PSO
    }

}

