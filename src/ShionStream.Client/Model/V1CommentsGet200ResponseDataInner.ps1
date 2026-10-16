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
.PARAMETER UserId
No description available.
.PARAMETER GuestName
No description available.
.PARAMETER ParentId
No description available.
.PARAMETER Content
No description available.
.PARAMETER IsSpoiler
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.PARAMETER Likes
No description available.
.PARAMETER Dislikes
No description available.
.OUTPUTS

V1CommentsGet200ResponseDataInner<PSCustomObject>
#>

function Initialize-V1CommentsGet200ResponseDataInner {
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
        [String]
        ${UserId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GuestName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsSpoiler},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedAt},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UpdatedAt},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Likes},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Dislikes}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1CommentsGet200ResponseDataInner' | Write-Debug
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

        if ($null -eq $Content) {
            throw "invalid value for 'Content', 'Content' cannot be null."
        }

        if ($null -eq $IsSpoiler) {
            throw "invalid value for 'IsSpoiler', 'IsSpoiler' cannot be null."
        }

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($null -eq $UpdatedAt) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }

        if ($null -eq $Likes) {
            throw "invalid value for 'Likes', 'Likes' cannot be null."
        }

        if ($null -eq $Dislikes) {
            throw "invalid value for 'Dislikes', 'Dislikes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'userId' = ${UserId}
            'guestName' = ${GuestName}
            'parentId' = ${ParentId}
            'content' = ${Content}
            'isSpoiler' = ${IsSpoiler}
            'createdAt' = ${CreatedAt}
            'updatedAt' = ${UpdatedAt}
            'likes' = ${Likes}
            'dislikes' = ${Dislikes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1CommentsGet200ResponseDataInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1CommentsGet200ResponseDataInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1CommentsGet200ResponseDataInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1CommentsGet200ResponseDataInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1CommentsGet200ResponseDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1CommentsGet200ResponseDataInner
        $AllProperties = ('id', 'animeId', 'episodeId', 'userId', 'guestName', 'parentId', 'content', 'isSpoiler', 'createdAt', 'updatedAt', 'likes', 'dislikes')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'content'))) {
            throw "Error! JSON cannot be serialized due to the required property 'content' missing."
        } else {
            $Content = $JsonParameters.PSobject.Properties['content'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isSpoiler'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isSpoiler' missing."
        } else {
            $IsSpoiler = $JsonParameters.PSobject.Properties['isSpoiler'].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'likes'))) {
            throw "Error! JSON cannot be serialized due to the required property 'likes' missing."
        } else {
            $Likes = $JsonParameters.PSobject.Properties['likes'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'dislikes'))) {
            throw "Error! JSON cannot be serialized due to the required property 'dislikes' missing."
        } else {
            $Dislikes = $JsonParameters.PSobject.Properties['dislikes'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'userId'))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties['userId'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'guestName'))) { #optional property not found
            $GuestName = $null
        } else {
            $GuestName = $JsonParameters.PSobject.Properties['guestName'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'parentId'))) { #optional property not found
            $ParentId = $null
        } else {
            $ParentId = $JsonParameters.PSobject.Properties['parentId'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'animeId' = ${AnimeId}
            'episodeId' = ${EpisodeId}
            'userId' = ${UserId}
            'guestName' = ${GuestName}
            'parentId' = ${ParentId}
            'content' = ${Content}
            'isSpoiler' = ${IsSpoiler}
            'createdAt' = ${CreatedAt}
            'updatedAt' = ${UpdatedAt}
            'likes' = ${Likes}
            'dislikes' = ${Dislikes}
        }

        return $PSO
    }

}

