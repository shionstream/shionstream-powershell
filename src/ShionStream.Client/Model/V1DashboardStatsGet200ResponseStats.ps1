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

.PARAMETER TotalAnime
No description available.
.PARAMETER TotalEpisodes
No description available.
.PARAMETER TotalUsers
No description available.
.PARAMETER PendingReports
No description available.
.PARAMETER ActiveStreams
No description available.
.PARAMETER BandwidthUsageGb
No description available.
.PARAMETER CpuLoadPercent
No description available.
.PARAMETER StorageUsedGb
No description available.
.PARAMETER MonthlyGrowthPercent
No description available.
.OUTPUTS

V1DashboardStatsGet200ResponseStats<PSCustomObject>
#>

function Initialize-V1DashboardStatsGet200ResponseStats {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalAnime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalEpisodes},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalUsers},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${PendingReports},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${ActiveStreams},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${BandwidthUsageGb},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${CpuLoadPercent},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${StorageUsedGb},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${MonthlyGrowthPercent}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardStatsGet200ResponseStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $TotalAnime) {
            throw "invalid value for 'TotalAnime', 'TotalAnime' cannot be null."
        }

        if ($null -eq $TotalEpisodes) {
            throw "invalid value for 'TotalEpisodes', 'TotalEpisodes' cannot be null."
        }

        if ($null -eq $TotalUsers) {
            throw "invalid value for 'TotalUsers', 'TotalUsers' cannot be null."
        }

        if ($null -eq $PendingReports) {
            throw "invalid value for 'PendingReports', 'PendingReports' cannot be null."
        }

        if ($null -eq $ActiveStreams) {
            throw "invalid value for 'ActiveStreams', 'ActiveStreams' cannot be null."
        }

        if ($null -eq $BandwidthUsageGb) {
            throw "invalid value for 'BandwidthUsageGb', 'BandwidthUsageGb' cannot be null."
        }

        if ($null -eq $CpuLoadPercent) {
            throw "invalid value for 'CpuLoadPercent', 'CpuLoadPercent' cannot be null."
        }

        if ($null -eq $StorageUsedGb) {
            throw "invalid value for 'StorageUsedGb', 'StorageUsedGb' cannot be null."
        }

        if ($null -eq $MonthlyGrowthPercent) {
            throw "invalid value for 'MonthlyGrowthPercent', 'MonthlyGrowthPercent' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'totalAnime' = ${TotalAnime}
            'totalEpisodes' = ${TotalEpisodes}
            'totalUsers' = ${TotalUsers}
            'pendingReports' = ${PendingReports}
            'activeStreams' = ${ActiveStreams}
            'bandwidthUsageGb' = ${BandwidthUsageGb}
            'cpuLoadPercent' = ${CpuLoadPercent}
            'storageUsedGb' = ${StorageUsedGb}
            'monthlyGrowthPercent' = ${MonthlyGrowthPercent}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardStatsGet200ResponseStats<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardStatsGet200ResponseStats<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardStatsGet200ResponseStats<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardStatsGet200ResponseStats {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardStatsGet200ResponseStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardStatsGet200ResponseStats
        $AllProperties = ('totalAnime', 'totalEpisodes', 'totalUsers', 'pendingReports', 'activeStreams', 'bandwidthUsageGb', 'cpuLoadPercent', 'storageUsedGb', 'monthlyGrowthPercent')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'totalAnime' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'totalAnime'))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalAnime' missing."
        } else {
            $TotalAnime = $JsonParameters.PSobject.Properties['totalAnime'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'totalEpisodes'))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalEpisodes' missing."
        } else {
            $TotalEpisodes = $JsonParameters.PSobject.Properties['totalEpisodes'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'totalUsers'))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalUsers' missing."
        } else {
            $TotalUsers = $JsonParameters.PSobject.Properties['totalUsers'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'pendingReports'))) {
            throw "Error! JSON cannot be serialized due to the required property 'pendingReports' missing."
        } else {
            $PendingReports = $JsonParameters.PSobject.Properties['pendingReports'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'activeStreams'))) {
            throw "Error! JSON cannot be serialized due to the required property 'activeStreams' missing."
        } else {
            $ActiveStreams = $JsonParameters.PSobject.Properties['activeStreams'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'bandwidthUsageGb'))) {
            throw "Error! JSON cannot be serialized due to the required property 'bandwidthUsageGb' missing."
        } else {
            $BandwidthUsageGb = $JsonParameters.PSobject.Properties['bandwidthUsageGb'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'cpuLoadPercent'))) {
            throw "Error! JSON cannot be serialized due to the required property 'cpuLoadPercent' missing."
        } else {
            $CpuLoadPercent = $JsonParameters.PSobject.Properties['cpuLoadPercent'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'storageUsedGb'))) {
            throw "Error! JSON cannot be serialized due to the required property 'storageUsedGb' missing."
        } else {
            $StorageUsedGb = $JsonParameters.PSobject.Properties['storageUsedGb'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'monthlyGrowthPercent'))) {
            throw "Error! JSON cannot be serialized due to the required property 'monthlyGrowthPercent' missing."
        } else {
            $MonthlyGrowthPercent = $JsonParameters.PSobject.Properties['monthlyGrowthPercent'].value
        }

        $PSO = [PSCustomObject]@{
            'totalAnime' = ${TotalAnime}
            'totalEpisodes' = ${TotalEpisodes}
            'totalUsers' = ${TotalUsers}
            'pendingReports' = ${PendingReports}
            'activeStreams' = ${ActiveStreams}
            'bandwidthUsageGb' = ${BandwidthUsageGb}
            'cpuLoadPercent' = ${CpuLoadPercent}
            'storageUsedGb' = ${StorageUsedGb}
            'monthlyGrowthPercent' = ${MonthlyGrowthPercent}
        }

        return $PSO
    }

}

