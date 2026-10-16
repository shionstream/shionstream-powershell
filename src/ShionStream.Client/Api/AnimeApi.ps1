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

List Anime Catalog

.DESCRIPTION

No description available.

.PARAMETER Page
No description available.

.PARAMETER Limit
No description available.

.PARAMETER Search
No description available.

.PARAMETER Type
No description available.

.PARAMETER Status
No description available.

.PARAMETER Genre
No description available.

.PARAMETER Season
No description available.

.PARAMETER Year
No description available.

.PARAMETER Sort
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

V1AnimeGet200Response
#>
function Invoke-V1AnimeGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Page},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Search},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Type},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Genre},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Season},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Year},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("latest", "popular", "score")]
        [String]
        ${Sort},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-V1AnimeGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v1/anime'

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Search) {
            $LocalVarQueryParameters['search'] = $Search
        }

        if ($Type) {
            $LocalVarQueryParameters['type'] = $Type
        }

        if ($Status) {
            $LocalVarQueryParameters['status'] = $Status
        }

        if ($Genre) {
            $LocalVarQueryParameters['genre'] = $Genre
        }

        if ($Season) {
            $LocalVarQueryParameters['season'] = $Season
        }

        if ($Year) {
            $LocalVarQueryParameters['year'] = $Year
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "V1AnimeGet200Response" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get Anime Details by Slug

.DESCRIPTION

No description available.

.PARAMETER Slug
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

V1AnimeSlugGet200Response
#>
function Invoke-V1AnimeSlugGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Slug},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-V1AnimeSlugGet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v1/anime/{slug}'
        if (!$Slug) {
            throw "Error! The required parameter `Slug` missing when calling v1AnimeSlugGet."
        }
        $LocalVarUri = $LocalVarUri.replace('{slug}', [System.Uri]::EscapeDataString([string]$Slug))

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "V1AnimeSlugGet200Response" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

