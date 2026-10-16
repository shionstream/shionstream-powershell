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

.PARAMETER IsDislike
No description available.
.OUTPUTS

V1CommentsIdLikePostRequest<PSCustomObject>
#>

function Initialize-V1CommentsIdLikePostRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsDislike} = $false
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1CommentsIdLikePostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'isDislike' = ${IsDislike}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1CommentsIdLikePostRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1CommentsIdLikePostRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1CommentsIdLikePostRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1CommentsIdLikePostRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1CommentsIdLikePostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1CommentsIdLikePostRequest
        $AllProperties = ('isDislike')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isDislike'))) { #optional property not found
            $IsDislike = $null
        } else {
            $IsDislike = $JsonParameters.PSobject.Properties['isDislike'].value
        }

        $PSO = [PSCustomObject]@{
            'isDislike' = ${IsDislike}
        }

        return $PSO
    }

}

