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

.PARAMETER Reason
No description available.
.OUTPUTS

V1CommentsIdReportPostRequest<PSCustomObject>
#>

function Initialize-V1CommentsIdReportPostRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1CommentsIdReportPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Reason) {
            throw "invalid value for 'Reason', 'Reason' cannot be null."
        }

        if ($Reason.length -gt 500) {
            throw "invalid value for 'Reason', the character length must be smaller than or equal to 500."
        }

        if ($Reason.length -lt 1) {
            throw "invalid value for 'Reason', the character length must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            'reason' = ${Reason}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1CommentsIdReportPostRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1CommentsIdReportPostRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1CommentsIdReportPostRequest<PSCustomObject>
#>
function ConvertFrom-JsonToV1CommentsIdReportPostRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1CommentsIdReportPostRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1CommentsIdReportPostRequest
        $AllProperties = ('reason')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'reason' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reason'))) {
            throw "Error! JSON cannot be serialized due to the required property 'reason' missing."
        } else {
            $Reason = $JsonParameters.PSobject.Properties['reason'].value
        }

        $PSO = [PSCustomObject]@{
            'reason' = ${Reason}
        }

        return $PSO
    }

}

