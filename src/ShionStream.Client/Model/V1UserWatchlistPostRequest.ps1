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
.PARAMETER Status
No description available.
.OUTPUTS

V1UserWatchlistPostRequest<PSCustomObject>
#>

function Initialize-V1UserWatchlistPostRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AnimeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status} = "plan_to_watch"
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserWatchlistPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $AnimeId) {
            throw "invalid value for 'AnimeId', 'AnimeId' cannot be null."
        }

        if ($AnimeId.length -lt 1) {
            throw "invalid value for 'AnimeId', the character length must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            'animeId' = ${AnimeId}
            'status' = ${Status}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserWatchlistPostRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserWatchlistPostRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserWatchlistPostRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserWatchlistPostRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserWatchlistPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserWatchlistPostRequest
        $AllProperties = ('animeId', 'status')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        $PSO = [PSCustomObject]@{
            'animeId' = ${AnimeId}
            'status' = ${Status}
        }

        return $PSO
    }

}

