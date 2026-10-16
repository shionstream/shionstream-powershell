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

.PARAMETER Categories
No description available.
.PARAMETER Genres
No description available.
.OUTPUTS

V1DashboardCategoriesGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardCategoriesGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Categories},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Genres}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardCategoriesGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Categories) {
            throw "invalid value for 'Categories', 'Categories' cannot be null."
        }

        if ($null -eq $Genres) {
            throw "invalid value for 'Genres', 'Genres' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'categories' = ${Categories}
            'genres' = ${Genres}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardCategoriesGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardCategoriesGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardCategoriesGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardCategoriesGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardCategoriesGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardCategoriesGet200Response
        $AllProperties = ('categories', 'genres')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'categories' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'categories'))) {
            throw "Error! JSON cannot be serialized due to the required property 'categories' missing."
        } else {
            $Categories = $JsonParameters.PSobject.Properties['categories'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'genres'))) {
            throw "Error! JSON cannot be serialized due to the required property 'genres' missing."
        } else {
            $Genres = $JsonParameters.PSobject.Properties['genres'].value
        }

        $PSO = [PSCustomObject]@{
            'categories' = ${Categories}
            'genres' = ${Genres}
        }

        return $PSO
    }

}

