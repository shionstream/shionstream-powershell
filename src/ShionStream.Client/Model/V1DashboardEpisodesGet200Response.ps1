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

.PARAMETER Episodes
No description available.
.PARAMETER Total
No description available.
.PARAMETER Page
No description available.
.PARAMETER Limit
No description available.
.OUTPUTS

V1DashboardEpisodesGet200Response<PSCustomObject>
#>

function Initialize-V1DashboardEpisodesGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Episodes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Total},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Page},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Limit}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardEpisodesGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Episodes) {
            throw "invalid value for 'Episodes', 'Episodes' cannot be null."
        }

        if ($null -eq $Total) {
            throw "invalid value for 'Total', 'Total' cannot be null."
        }

        if ($null -eq $Page) {
            throw "invalid value for 'Page', 'Page' cannot be null."
        }

        if ($null -eq $Limit) {
            throw "invalid value for 'Limit', 'Limit' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'episodes' = ${Episodes}
            'total' = ${Total}
            'page' = ${Page}
            'limit' = ${Limit}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardEpisodesGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardEpisodesGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardEpisodesGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardEpisodesGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardEpisodesGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardEpisodesGet200Response
        $AllProperties = ('episodes', 'total', 'page', 'limit')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'episodes' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'episodes'))) {
            throw "Error! JSON cannot be serialized due to the required property 'episodes' missing."
        } else {
            $Episodes = $JsonParameters.PSobject.Properties['episodes'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'total'))) {
            throw "Error! JSON cannot be serialized due to the required property 'total' missing."
        } else {
            $Total = $JsonParameters.PSobject.Properties['total'].value
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

        $PSO = [PSCustomObject]@{
            'episodes' = ${Episodes}
            'total' = ${Total}
            'page' = ${Page}
            'limit' = ${Limit}
        }

        return $PSO
    }

}

