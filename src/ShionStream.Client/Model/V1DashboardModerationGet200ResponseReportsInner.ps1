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
.PARAMETER CommentId
No description available.
.PARAMETER CommentText
No description available.
.PARAMETER AnimeTitle
No description available.
.PARAMETER EpisodeNumber
No description available.
.PARAMETER Author
No description available.
.PARAMETER Reporter
No description available.
.PARAMETER Reason
No description available.
.PARAMETER Status
No description available.
.PARAMETER ReportedAt
No description available.
.PARAMETER FlaggedBySystem
No description available.
.OUTPUTS

V1DashboardModerationGet200ResponseReportsInner<PSCustomObject>
#>

function Initialize-V1DashboardModerationGet200ResponseReportsInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommentId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommentText},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AnimeTitle},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${EpisodeNumber},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reporter},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReportedAt},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${FlaggedBySystem}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardModerationGet200ResponseReportsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $CommentId) {
            throw "invalid value for 'CommentId', 'CommentId' cannot be null."
        }

        if ($null -eq $CommentText) {
            throw "invalid value for 'CommentText', 'CommentText' cannot be null."
        }

        if ($null -eq $AnimeTitle) {
            throw "invalid value for 'AnimeTitle', 'AnimeTitle' cannot be null."
        }

        if ($null -eq $EpisodeNumber) {
            throw "invalid value for 'EpisodeNumber', 'EpisodeNumber' cannot be null."
        }

        if ($null -eq $Author) {
            throw "invalid value for 'Author', 'Author' cannot be null."
        }

        if ($null -eq $Reporter) {
            throw "invalid value for 'Reporter', 'Reporter' cannot be null."
        }

        if ($null -eq $Reason) {
            throw "invalid value for 'Reason', 'Reason' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $ReportedAt) {
            throw "invalid value for 'ReportedAt', 'ReportedAt' cannot be null."
        }

        if ($null -eq $FlaggedBySystem) {
            throw "invalid value for 'FlaggedBySystem', 'FlaggedBySystem' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'commentId' = ${CommentId}
            'commentText' = ${CommentText}
            'animeTitle' = ${AnimeTitle}
            'episodeNumber' = ${EpisodeNumber}
            'author' = ${Author}
            'reporter' = ${Reporter}
            'reason' = ${Reason}
            'status' = ${Status}
            'reportedAt' = ${ReportedAt}
            'flaggedBySystem' = ${FlaggedBySystem}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardModerationGet200ResponseReportsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardModerationGet200ResponseReportsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardModerationGet200ResponseReportsInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardModerationGet200ResponseReportsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardModerationGet200ResponseReportsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardModerationGet200ResponseReportsInner
        $AllProperties = ('id', 'commentId', 'commentText', 'animeTitle', 'episodeNumber', 'author', 'reporter', 'reason', 'status', 'reportedAt', 'flaggedBySystem')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'commentId'))) {
            throw "Error! JSON cannot be serialized due to the required property 'commentId' missing."
        } else {
            $CommentId = $JsonParameters.PSobject.Properties['commentId'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'commentText'))) {
            throw "Error! JSON cannot be serialized due to the required property 'commentText' missing."
        } else {
            $CommentText = $JsonParameters.PSobject.Properties['commentText'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'animeTitle'))) {
            throw "Error! JSON cannot be serialized due to the required property 'animeTitle' missing."
        } else {
            $AnimeTitle = $JsonParameters.PSobject.Properties['animeTitle'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodeNumber'))) {
            throw "Error! JSON cannot be serialized due to the required property 'episodeNumber' missing."
        } else {
            $EpisodeNumber = $JsonParameters.PSobject.Properties['episodeNumber'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'author'))) {
            throw "Error! JSON cannot be serialized due to the required property 'author' missing."
        } else {
            $Author = $JsonParameters.PSobject.Properties['author'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reporter'))) {
            throw "Error! JSON cannot be serialized due to the required property 'reporter' missing."
        } else {
            $Reporter = $JsonParameters.PSobject.Properties['reporter'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reason'))) {
            throw "Error! JSON cannot be serialized due to the required property 'reason' missing."
        } else {
            $Reason = $JsonParameters.PSobject.Properties['reason'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reportedAt'))) {
            throw "Error! JSON cannot be serialized due to the required property 'reportedAt' missing."
        } else {
            $ReportedAt = $JsonParameters.PSobject.Properties['reportedAt'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'flaggedBySystem'))) {
            throw "Error! JSON cannot be serialized due to the required property 'flaggedBySystem' missing."
        } else {
            $FlaggedBySystem = $JsonParameters.PSobject.Properties['flaggedBySystem'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'commentId' = ${CommentId}
            'commentText' = ${CommentText}
            'animeTitle' = ${AnimeTitle}
            'episodeNumber' = ${EpisodeNumber}
            'author' = ${Author}
            'reporter' = ${Reporter}
            'reason' = ${Reason}
            'status' = ${Status}
            'reportedAt' = ${ReportedAt}
            'flaggedBySystem' = ${FlaggedBySystem}
        }

        return $PSO
    }

}

