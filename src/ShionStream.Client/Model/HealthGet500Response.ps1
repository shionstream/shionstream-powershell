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

.PARAMETER Status
No description available.
.PARAMETER Timestamp
No description available.
.PARAMETER Database
No description available.
.PARAMETER VarError
No description available.
.OUTPUTS

HealthGet500Response<PSCustomObject>
#>

function Initialize-HealthGet500Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ok", "degraded")]
        [String]
        ${Status},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Timestamp},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Database},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarError}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => HealthGet500Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $Timestamp) {
            throw "invalid value for 'Timestamp', 'Timestamp' cannot be null."
        }

        if ($null -eq $Database) {
            throw "invalid value for 'Database', 'Database' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'status' = ${Status}
            'timestamp' = ${Timestamp}
            'database' = ${Database}
            'error' = ${VarError}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HealthGet500Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to HealthGet500Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HealthGet500Response<PSCustomObject>
#>
function ConvertFrom-JsonToHealthGet500Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => HealthGet500Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in HealthGet500Response
        $AllProperties = ('status', 'timestamp', 'database', 'error')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'status' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'timestamp'))) {
            throw "Error! JSON cannot be serialized due to the required property 'timestamp' missing."
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties['timestamp'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'database'))) {
            throw "Error! JSON cannot be serialized due to the required property 'database' missing."
        } else {
            $Database = $JsonParameters.PSobject.Properties['database'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'error'))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties['error'].value
        }

        $PSO = [PSCustomObject]@{
            'status' = ${Status}
            'timestamp' = ${Timestamp}
            'database' = ${Database}
            'error' = ${VarError}
        }

        return $PSO
    }

}

