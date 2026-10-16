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

.PARAMETER NewEpisodeAlerts
No description available.
.PARAMETER WatchlistUpdates
No description available.
.PARAMETER MarketingEmails
No description available.
.PARAMETER PublicWatchlist
No description available.
.OUTPUTS

V1UserSettingsPatchRequestNotifications<PSCustomObject>
#>

function Initialize-V1UserSettingsPatchRequestNotifications {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NewEpisodeAlerts},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${WatchlistUpdates},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MarketingEmails},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PublicWatchlist}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequestNotifications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'newEpisodeAlerts' = ${NewEpisodeAlerts}
            'watchlistUpdates' = ${WatchlistUpdates}
            'marketingEmails' = ${MarketingEmails}
            'publicWatchlist' = ${PublicWatchlist}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsPatchRequestNotifications<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsPatchRequestNotifications<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsPatchRequestNotifications<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsPatchRequestNotifications {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsPatchRequestNotifications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsPatchRequestNotifications
        $AllProperties = ('newEpisodeAlerts', 'watchlistUpdates', 'marketingEmails', 'publicWatchlist')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'newEpisodeAlerts'))) { #optional property not found
            $NewEpisodeAlerts = $null
        } else {
            $NewEpisodeAlerts = $JsonParameters.PSobject.Properties['newEpisodeAlerts'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'watchlistUpdates'))) { #optional property not found
            $WatchlistUpdates = $null
        } else {
            $WatchlistUpdates = $JsonParameters.PSobject.Properties['watchlistUpdates'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'marketingEmails'))) { #optional property not found
            $MarketingEmails = $null
        } else {
            $MarketingEmails = $JsonParameters.PSobject.Properties['marketingEmails'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'publicWatchlist'))) { #optional property not found
            $PublicWatchlist = $null
        } else {
            $PublicWatchlist = $JsonParameters.PSobject.Properties['publicWatchlist'].value
        }

        $PSO = [PSCustomObject]@{
            'newEpisodeAlerts' = ${NewEpisodeAlerts}
            'watchlistUpdates' = ${WatchlistUpdates}
            'marketingEmails' = ${MarketingEmails}
            'publicWatchlist' = ${PublicWatchlist}
        }

        return $PSO
    }

}

