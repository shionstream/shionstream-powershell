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

.PARAMETER Time
No description available.
.PARAMETER ActiveStreams
No description available.
.PARAMETER BandwidthGbps
No description available.
.OUTPUTS

V1DashboardOverviewGet200ResponseTrafficDataInner<PSCustomObject>
#>

function Initialize-V1DashboardOverviewGet200ResponseTrafficDataInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Time},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${ActiveStreams},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${BandwidthGbps}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200ResponseTrafficDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Time) {
            throw "invalid value for 'Time', 'Time' cannot be null."
        }

        if ($null -eq $ActiveStreams) {
            throw "invalid value for 'ActiveStreams', 'ActiveStreams' cannot be null."
        }

        if ($null -eq $BandwidthGbps) {
            throw "invalid value for 'BandwidthGbps', 'BandwidthGbps' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'time' = ${Time}
            'activeStreams' = ${ActiveStreams}
            'bandwidthGbps' = ${BandwidthGbps}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardOverviewGet200ResponseTrafficDataInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardOverviewGet200ResponseTrafficDataInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardOverviewGet200ResponseTrafficDataInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardOverviewGet200ResponseTrafficDataInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardOverviewGet200ResponseTrafficDataInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardOverviewGet200ResponseTrafficDataInner
        $AllProperties = ('time', 'activeStreams', 'bandwidthGbps')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'time' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'time'))) {
            throw "Error! JSON cannot be serialized due to the required property 'time' missing."
        } else {
            $Time = $JsonParameters.PSobject.Properties['time'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'activeStreams'))) {
            throw "Error! JSON cannot be serialized due to the required property 'activeStreams' missing."
        } else {
            $ActiveStreams = $JsonParameters.PSobject.Properties['activeStreams'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'bandwidthGbps'))) {
            throw "Error! JSON cannot be serialized due to the required property 'bandwidthGbps' missing."
        } else {
            $BandwidthGbps = $JsonParameters.PSobject.Properties['bandwidthGbps'].value
        }

        $PSO = [PSCustomObject]@{
            'time' = ${Time}
            'activeStreams' = ${ActiveStreams}
            'bandwidthGbps' = ${BandwidthGbps}
        }

        return $PSO
    }

}

