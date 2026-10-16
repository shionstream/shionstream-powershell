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
.PARAMETER Name
No description available.
.PARAMETER Slug
No description available.
.OUTPUTS

V1AnimeSlugGet200ResponseDataGenresInner<PSCustomObject>
#>

function Initialize-V1AnimeSlugGet200ResponseDataGenresInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Slug}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1AnimeSlugGet200ResponseDataGenresInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Slug) {
            throw "invalid value for 'Slug', 'Slug' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'slug' = ${Slug}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1AnimeSlugGet200ResponseDataGenresInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1AnimeSlugGet200ResponseDataGenresInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1AnimeSlugGet200ResponseDataGenresInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1AnimeSlugGet200ResponseDataGenresInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1AnimeSlugGet200ResponseDataGenresInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1AnimeSlugGet200ResponseDataGenresInner
        $AllProperties = ('id', 'name', 'slug')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'name'))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties['name'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'slug'))) {
            throw "Error! JSON cannot be serialized due to the required property 'slug' missing."
        } else {
            $Slug = $JsonParameters.PSobject.Properties['slug'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'slug' = ${Slug}
        }

        return $PSO
    }

}

