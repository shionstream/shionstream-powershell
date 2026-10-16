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

.PARAMETER Page
No description available.
.PARAMETER Limit
No description available.
.PARAMETER Total
No description available.
.PARAMETER TotalPages
No description available.
.OUTPUTS

V1AnimeGet200ResponsePagination<PSCustomObject>
#>

function Initialize-V1AnimeGet200ResponsePagination {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Page},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Total},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalPages}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1AnimeGet200ResponsePagination' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Page) {
            throw "invalid value for 'Page', 'Page' cannot be null."
        }

        if ($null -eq $Limit) {
            throw "invalid value for 'Limit', 'Limit' cannot be null."
        }

        if ($null -eq $Total) {
            throw "invalid value for 'Total', 'Total' cannot be null."
        }

        if ($null -eq $TotalPages) {
            throw "invalid value for 'TotalPages', 'TotalPages' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'page' = ${Page}
            'limit' = ${Limit}
            'total' = ${Total}
            'totalPages' = ${TotalPages}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1AnimeGet200ResponsePagination<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1AnimeGet200ResponsePagination<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1AnimeGet200ResponsePagination<PSCustomObject>
#>
function ConvertFrom-JsonToV1AnimeGet200ResponsePagination {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1AnimeGet200ResponsePagination' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1AnimeGet200ResponsePagination
        $AllProperties = ('page', 'limit', 'total', 'totalPages')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'page' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'page'))) {
            throw "Error! JSON cannot be serialized due to the required property 'page' missing."
        } else {
            $Page = $JsonParameters.PSobject.Properties['page'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'limit'))) {
            throw "Error! JSON cannot be serialized due to the required property 'limit' missing."
        } else {
            $Limit = $JsonParameters.PSobject.Properties['limit'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'total'))) {
            throw "Error! JSON cannot be serialized due to the required property 'total' missing."
        } else {
            $Total = $JsonParameters.PSobject.Properties['total'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'totalPages'))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalPages' missing."
        } else {
            $TotalPages = $JsonParameters.PSobject.Properties['totalPages'].value
        }

        $PSO = [PSCustomObject]@{
            'page' = ${Page}
            'limit' = ${Limit}
            'total' = ${Total}
            'totalPages' = ${TotalPages}
        }

        return $PSO
    }

}

