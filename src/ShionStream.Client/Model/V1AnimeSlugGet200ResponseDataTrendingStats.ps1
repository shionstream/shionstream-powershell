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

.PARAMETER Rank
No description available.
.PARAMETER TrendScore
No description available.
.PARAMETER TotalViews
No description available.
.OUTPUTS

V1AnimeSlugGet200ResponseDataTrendingStats<PSCustomObject>
#>

function Initialize-V1AnimeSlugGet200ResponseDataTrendingStats {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Rank},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TrendScore},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalViews}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1AnimeSlugGet200ResponseDataTrendingStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Rank) {
            throw "invalid value for 'Rank', 'Rank' cannot be null."
        }

        if ($null -eq $TrendScore) {
            throw "invalid value for 'TrendScore', 'TrendScore' cannot be null."
        }

        if ($null -eq $TotalViews) {
            throw "invalid value for 'TotalViews', 'TotalViews' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'rank' = ${Rank}
            'trendScore' = ${TrendScore}
            'totalViews' = ${TotalViews}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1AnimeSlugGet200ResponseDataTrendingStats<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1AnimeSlugGet200ResponseDataTrendingStats<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1AnimeSlugGet200ResponseDataTrendingStats<PSCustomObject>
#>
function ConvertFrom-JsonToV1AnimeSlugGet200ResponseDataTrendingStats {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1AnimeSlugGet200ResponseDataTrendingStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1AnimeSlugGet200ResponseDataTrendingStats
        $AllProperties = ('rank', 'trendScore', 'totalViews')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'rank' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'rank'))) {
            throw "Error! JSON cannot be serialized due to the required property 'rank' missing."
        } else {
            $Rank = $JsonParameters.PSobject.Properties['rank'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'trendScore'))) {
            throw "Error! JSON cannot be serialized due to the required property 'trendScore' missing."
        } else {
            $TrendScore = $JsonParameters.PSobject.Properties['trendScore'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'totalViews'))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalViews' missing."
        } else {
            $TotalViews = $JsonParameters.PSobject.Properties['totalViews'].value
        }

        $PSO = [PSCustomObject]@{
            'rank' = ${Rank}
            'trendScore' = ${TrendScore}
            'totalViews' = ${TotalViews}
        }

        return $PSO
    }

}

