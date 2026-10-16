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

.PARAMETER Url
No description available.
.PARAMETER Key
No description available.
.PARAMETER SizeBytes
No description available.
.OUTPUTS

V1UploadImagePost200ResponseData<PSCustomObject>
#>

function Initialize-V1UploadImagePost200ResponseData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${SizeBytes}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UploadImagePost200ResponseData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Url) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }

        if ($null -eq $Key) {
            throw "invalid value for 'Key', 'Key' cannot be null."
        }

        if ($null -eq $SizeBytes) {
            throw "invalid value for 'SizeBytes', 'SizeBytes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'url' = ${Url}
            'key' = ${Key}
            'sizeBytes' = ${SizeBytes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UploadImagePost200ResponseData<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UploadImagePost200ResponseData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UploadImagePost200ResponseData<PSCustomObject>
#>
function ConvertFrom-JsonToV1UploadImagePost200ResponseData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UploadImagePost200ResponseData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UploadImagePost200ResponseData
        $AllProperties = ('url', 'key', 'sizeBytes')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'url' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'url'))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties['url'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'key'))) {
            throw "Error! JSON cannot be serialized due to the required property 'key' missing."
        } else {
            $Key = $JsonParameters.PSobject.Properties['key'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'sizeBytes'))) {
            throw "Error! JSON cannot be serialized due to the required property 'sizeBytes' missing."
        } else {
            $SizeBytes = $JsonParameters.PSobject.Properties['sizeBytes'].value
        }

        $PSO = [PSCustomObject]@{
            'url' = ${Url}
            'key' = ${Key}
            'sizeBytes' = ${SizeBytes}
        }

        return $PSO
    }

}

