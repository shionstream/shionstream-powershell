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
.PARAMETER Label
No description available.
.PARAMETER LanguageCode
No description available.
.PARAMETER FileUrl
No description available.
.PARAMETER Format
No description available.
.PARAMETER IsDefault
No description available.
.OUTPUTS

V1EpisodesIdStreamGet200ResponseSubtitlesInner<PSCustomObject>
#>

function Initialize-V1EpisodesIdStreamGet200ResponseSubtitlesInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LanguageCode},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FileUrl},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Format},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsDefault}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1EpisodesIdStreamGet200ResponseSubtitlesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Label) {
            throw "invalid value for 'Label', 'Label' cannot be null."
        }

        if ($null -eq $LanguageCode) {
            throw "invalid value for 'LanguageCode', 'LanguageCode' cannot be null."
        }

        if ($null -eq $FileUrl) {
            throw "invalid value for 'FileUrl', 'FileUrl' cannot be null."
        }

        if ($null -eq $Format) {
            throw "invalid value for 'Format', 'Format' cannot be null."
        }

        if ($null -eq $IsDefault) {
            throw "invalid value for 'IsDefault', 'IsDefault' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'label' = ${Label}
            'languageCode' = ${LanguageCode}
            'fileUrl' = ${FileUrl}
            'format' = ${Format}
            'isDefault' = ${IsDefault}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1EpisodesIdStreamGet200ResponseSubtitlesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1EpisodesIdStreamGet200ResponseSubtitlesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1EpisodesIdStreamGet200ResponseSubtitlesInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1EpisodesIdStreamGet200ResponseSubtitlesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1EpisodesIdStreamGet200ResponseSubtitlesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1EpisodesIdStreamGet200ResponseSubtitlesInner
        $AllProperties = ('id', 'label', 'languageCode', 'fileUrl', 'format', 'isDefault')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'label'))) {
            throw "Error! JSON cannot be serialized due to the required property 'label' missing."
        } else {
            $Label = $JsonParameters.PSobject.Properties['label'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'languageCode'))) {
            throw "Error! JSON cannot be serialized due to the required property 'languageCode' missing."
        } else {
            $LanguageCode = $JsonParameters.PSobject.Properties['languageCode'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'fileUrl'))) {
            throw "Error! JSON cannot be serialized due to the required property 'fileUrl' missing."
        } else {
            $FileUrl = $JsonParameters.PSobject.Properties['fileUrl'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'format'))) {
            throw "Error! JSON cannot be serialized due to the required property 'format' missing."
        } else {
            $Format = $JsonParameters.PSobject.Properties['format'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isDefault'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isDefault' missing."
        } else {
            $IsDefault = $JsonParameters.PSobject.Properties['isDefault'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'label' = ${Label}
            'languageCode' = ${LanguageCode}
            'fileUrl' = ${FileUrl}
            'format' = ${Format}
            'isDefault' = ${IsDefault}
        }

        return $PSO
    }

}

