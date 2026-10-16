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

.PARAMETER Success
No description available.
.PARAMETER Message
No description available.
.PARAMETER User
No description available.
.OUTPUTS

V1ProtectedSampleGet200Response<PSCustomObject>
#>

function Initialize-V1ProtectedSampleGet200Response {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("true")]
        [Boolean]
        ${Success},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1ProtectedSampleGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Success) {
            throw "invalid value for 'Success', 'Success' cannot be null."
        }

        if ($null -eq $Message) {
            throw "invalid value for 'Message', 'Message' cannot be null."
        }

        if ($null -eq $User) {
            throw "invalid value for 'User', 'User' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'success' = ${Success}
            'message' = ${Message}
            'user' = ${User}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1ProtectedSampleGet200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1ProtectedSampleGet200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1ProtectedSampleGet200Response<PSCustomObject>
#>
function ConvertFrom-JsonToV1ProtectedSampleGet200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1ProtectedSampleGet200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1ProtectedSampleGet200Response
        $AllProperties = ('success', 'message', 'user')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'success' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'success'))) {
            throw "Error! JSON cannot be serialized due to the required property 'success' missing."
        } else {
            $Success = $JsonParameters.PSobject.Properties['success'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'message'))) {
            throw "Error! JSON cannot be serialized due to the required property 'message' missing."
        } else {
            $Message = $JsonParameters.PSobject.Properties['message'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'user'))) {
            throw "Error! JSON cannot be serialized due to the required property 'user' missing."
        } else {
            $User = $JsonParameters.PSobject.Properties['user'].value
        }

        $PSO = [PSCustomObject]@{
            'success' = ${Success}
            'message' = ${Message}
            'user' = ${User}
        }

        return $PSO
    }

}

