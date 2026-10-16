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

V1UserSettingsGet200ResponseDataNotifications<PSCustomObject>
#>

function Initialize-V1UserSettingsGet200ResponseDataNotifications {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${NewEpisodeAlerts},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${WatchlistUpdates},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${MarketingEmails},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${PublicWatchlist}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserSettingsGet200ResponseDataNotifications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $NewEpisodeAlerts) {
            throw "invalid value for 'NewEpisodeAlerts', 'NewEpisodeAlerts' cannot be null."
        }

        if ($null -eq $WatchlistUpdates) {
            throw "invalid value for 'WatchlistUpdates', 'WatchlistUpdates' cannot be null."
        }

        if ($null -eq $MarketingEmails) {
            throw "invalid value for 'MarketingEmails', 'MarketingEmails' cannot be null."
        }

        if ($null -eq $PublicWatchlist) {
            throw "invalid value for 'PublicWatchlist', 'PublicWatchlist' cannot be null."
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

<#
.SYNOPSIS

Convert from JSON to V1UserSettingsGet200ResponseDataNotifications<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserSettingsGet200ResponseDataNotifications<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserSettingsGet200ResponseDataNotifications<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserSettingsGet200ResponseDataNotifications {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserSettingsGet200ResponseDataNotifications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserSettingsGet200ResponseDataNotifications
        $AllProperties = ('newEpisodeAlerts', 'watchlistUpdates', 'marketingEmails', 'publicWatchlist')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'newEpisodeAlerts' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'newEpisodeAlerts'))) {
            throw "Error! JSON cannot be serialized due to the required property 'newEpisodeAlerts' missing."
        } else {
            $NewEpisodeAlerts = $JsonParameters.PSobject.Properties['newEpisodeAlerts'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'watchlistUpdates'))) {
            throw "Error! JSON cannot be serialized due to the required property 'watchlistUpdates' missing."
        } else {
            $WatchlistUpdates = $JsonParameters.PSobject.Properties['watchlistUpdates'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'marketingEmails'))) {
            throw "Error! JSON cannot be serialized due to the required property 'marketingEmails' missing."
        } else {
            $MarketingEmails = $JsonParameters.PSobject.Properties['marketingEmails'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'publicWatchlist'))) {
            throw "Error! JSON cannot be serialized due to the required property 'publicWatchlist' missing."
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

