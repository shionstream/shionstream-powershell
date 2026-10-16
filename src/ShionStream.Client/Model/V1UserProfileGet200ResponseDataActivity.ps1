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

.PARAMETER WatchlistCount
No description available.
.PARAMETER HistoryCount
No description available.
.OUTPUTS

V1UserProfileGet200ResponseDataActivity<PSCustomObject>
#>

function Initialize-V1UserProfileGet200ResponseDataActivity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${WatchlistCount},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${HistoryCount}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserProfileGet200ResponseDataActivity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $WatchlistCount) {
            throw "invalid value for 'WatchlistCount', 'WatchlistCount' cannot be null."
        }

        if ($null -eq $HistoryCount) {
            throw "invalid value for 'HistoryCount', 'HistoryCount' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'watchlistCount' = ${WatchlistCount}
            'historyCount' = ${HistoryCount}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserProfileGet200ResponseDataActivity<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserProfileGet200ResponseDataActivity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserProfileGet200ResponseDataActivity<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserProfileGet200ResponseDataActivity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserProfileGet200ResponseDataActivity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserProfileGet200ResponseDataActivity
        $AllProperties = ('watchlistCount', 'historyCount')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'watchlistCount' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'watchlistCount'))) {
            throw "Error! JSON cannot be serialized due to the required property 'watchlistCount' missing."
        } else {
            $WatchlistCount = $JsonParameters.PSobject.Properties['watchlistCount'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'historyCount'))) {
            throw "Error! JSON cannot be serialized due to the required property 'historyCount' missing."
        } else {
            $HistoryCount = $JsonParameters.PSobject.Properties['historyCount'].value
        }

        $PSO = [PSCustomObject]@{
            'watchlistCount' = ${WatchlistCount}
            'historyCount' = ${HistoryCount}
        }

        return $PSO
    }

}

