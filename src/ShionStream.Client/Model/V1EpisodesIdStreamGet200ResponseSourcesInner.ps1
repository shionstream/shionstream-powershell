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

.PARAMETER Id
No description available.
.PARAMETER ServerName
No description available.
.PARAMETER StreamUrl
No description available.
.PARAMETER Format
No description available.
.PARAMETER Quality
No description available.
.PARAMETER Url1080p
No description available.
.PARAMETER Url720p
No description available.
.PARAMETER Url480p
No description available.
.PARAMETER Url360p
No description available.
.PARAMETER IsPrimary
No description available.
.OUTPUTS

V1EpisodesIdStreamGet200ResponseSourcesInner<PSCustomObject>
#>

function Initialize-V1EpisodesIdStreamGet200ResponseSourcesInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StreamUrl},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Format},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Quality},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url1080p},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url720p},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url480p},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url360p},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsPrimary}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1EpisodesIdStreamGet200ResponseSourcesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $StreamUrl) {
            throw "invalid value for 'StreamUrl', 'StreamUrl' cannot be null."
        }

        if ($null -eq $Format) {
            throw "invalid value for 'Format', 'Format' cannot be null."
        }

        if ($null -eq $Quality) {
            throw "invalid value for 'Quality', 'Quality' cannot be null."
        }

        if ($null -eq $IsPrimary) {
            throw "invalid value for 'IsPrimary', 'IsPrimary' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'serverName' = ${ServerName}
            'streamUrl' = ${StreamUrl}
            'format' = ${Format}
            'quality' = ${Quality}
            'url1080p' = ${Url1080p}
            'url720p' = ${Url720p}
            'url480p' = ${Url480p}
            'url360p' = ${Url360p}
            'isPrimary' = ${IsPrimary}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1EpisodesIdStreamGet200ResponseSourcesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1EpisodesIdStreamGet200ResponseSourcesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1EpisodesIdStreamGet200ResponseSourcesInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1EpisodesIdStreamGet200ResponseSourcesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1EpisodesIdStreamGet200ResponseSourcesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1EpisodesIdStreamGet200ResponseSourcesInner
        $AllProperties = ('id', 'serverName', 'streamUrl', 'format', 'quality', 'url1080p', 'url720p', 'url480p', 'url360p', 'isPrimary')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'id'))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties['id'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'streamUrl'))) {
            throw "Error! JSON cannot be serialized due to the required property 'streamUrl' missing."
        } else {
            $StreamUrl = $JsonParameters.PSobject.Properties['streamUrl'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'format'))) {
            throw "Error! JSON cannot be serialized due to the required property 'format' missing."
        } else {
            $Format = $JsonParameters.PSobject.Properties['format'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'quality'))) {
            throw "Error! JSON cannot be serialized due to the required property 'quality' missing."
        } else {
            $Quality = $JsonParameters.PSobject.Properties['quality'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isPrimary'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isPrimary' missing."
        } else {
            $IsPrimary = $JsonParameters.PSobject.Properties['isPrimary'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'serverName'))) { #optional property not found
            $ServerName = $null
        } else {
            $ServerName = $JsonParameters.PSobject.Properties['serverName'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'url1080p'))) { #optional property not found
            $Url1080p = $null
        } else {
            $Url1080p = $JsonParameters.PSobject.Properties['url1080p'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'url720p'))) { #optional property not found
            $Url720p = $null
        } else {
            $Url720p = $JsonParameters.PSobject.Properties['url720p'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'url480p'))) { #optional property not found
            $Url480p = $null
        } else {
            $Url480p = $JsonParameters.PSobject.Properties['url480p'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'url360p'))) { #optional property not found
            $Url360p = $null
        } else {
            $Url360p = $JsonParameters.PSobject.Properties['url360p'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'serverName' = ${ServerName}
            'streamUrl' = ${StreamUrl}
            'format' = ${Format}
            'quality' = ${Quality}
            'url1080p' = ${Url1080p}
            'url720p' = ${Url720p}
            'url480p' = ${Url480p}
            'url360p' = ${Url360p}
            'isPrimary' = ${IsPrimary}
        }

        return $PSO
    }

}

