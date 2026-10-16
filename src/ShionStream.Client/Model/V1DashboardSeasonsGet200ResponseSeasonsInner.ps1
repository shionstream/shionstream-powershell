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
.PARAMETER Year
No description available.
.PARAMETER Quarter
No description available.
.PARAMETER Name
No description available.
.PARAMETER TotalAnime
No description available.
.PARAMETER IsCurrent
No description available.
.PARAMETER IsActive
No description available.
.OUTPUTS

V1DashboardSeasonsGet200ResponseSeasonsInner<PSCustomObject>
#>

function Initialize-V1DashboardSeasonsGet200ResponseSeasonsInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Year},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Quarter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${TotalAnime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsCurrent},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsActive}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardSeasonsGet200ResponseSeasonsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Year) {
            throw "invalid value for 'Year', 'Year' cannot be null."
        }

        if ($null -eq $Quarter) {
            throw "invalid value for 'Quarter', 'Quarter' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $TotalAnime) {
            throw "invalid value for 'TotalAnime', 'TotalAnime' cannot be null."
        }

        if ($null -eq $IsCurrent) {
            throw "invalid value for 'IsCurrent', 'IsCurrent' cannot be null."
        }

        if ($null -eq $IsActive) {
            throw "invalid value for 'IsActive', 'IsActive' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'year' = ${Year}
            'quarter' = ${Quarter}
            'name' = ${Name}
            'totalAnime' = ${TotalAnime}
            'isCurrent' = ${IsCurrent}
            'isActive' = ${IsActive}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardSeasonsGet200ResponseSeasonsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardSeasonsGet200ResponseSeasonsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardSeasonsGet200ResponseSeasonsInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardSeasonsGet200ResponseSeasonsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardSeasonsGet200ResponseSeasonsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardSeasonsGet200ResponseSeasonsInner
        $AllProperties = ('id', 'year', 'quarter', 'name', 'totalAnime', 'isCurrent', 'isActive')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'year'))) {
            throw "Error! JSON cannot be serialized due to the required property 'year' missing."
        } else {
            $Year = $JsonParameters.PSobject.Properties['year'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'quarter'))) {
            throw "Error! JSON cannot be serialized due to the required property 'quarter' missing."
        } else {
            $Quarter = $JsonParameters.PSobject.Properties['quarter'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'name'))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties['name'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'totalAnime'))) {
            throw "Error! JSON cannot be serialized due to the required property 'totalAnime' missing."
        } else {
            $TotalAnime = $JsonParameters.PSobject.Properties['totalAnime'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isCurrent'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isCurrent' missing."
        } else {
            $IsCurrent = $JsonParameters.PSobject.Properties['isCurrent'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isActive'))) {
            throw "Error! JSON cannot be serialized due to the required property 'isActive' missing."
        } else {
            $IsActive = $JsonParameters.PSobject.Properties['isActive'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'year' = ${Year}
            'quarter' = ${Quarter}
            'name' = ${Name}
            'totalAnime' = ${TotalAnime}
            'isCurrent' = ${IsCurrent}
            'isActive' = ${IsActive}
        }

        return $PSO
    }

}

