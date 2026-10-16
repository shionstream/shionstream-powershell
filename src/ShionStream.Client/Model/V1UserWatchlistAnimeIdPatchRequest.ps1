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

.PARAMETER Status
No description available.
.PARAMETER IsFavorite
No description available.
.OUTPUTS

V1UserWatchlistAnimeIdPatchRequest<PSCustomObject>
#>

function Initialize-V1UserWatchlistAnimeIdPatchRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsFavorite}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserWatchlistAnimeIdPatchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'status' = ${Status}
            'isFavorite' = ${IsFavorite}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserWatchlistAnimeIdPatchRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserWatchlistAnimeIdPatchRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserWatchlistAnimeIdPatchRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserWatchlistAnimeIdPatchRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserWatchlistAnimeIdPatchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserWatchlistAnimeIdPatchRequest
        $AllProperties = ('status', 'isFavorite')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isFavorite'))) { #optional property not found
            $IsFavorite = $null
        } else {
            $IsFavorite = $JsonParameters.PSobject.Properties['isFavorite'].value
        }

        $PSO = [PSCustomObject]@{
            'status' = ${Status}
            'isFavorite' = ${IsFavorite}
        }

        return $PSO
    }

}

