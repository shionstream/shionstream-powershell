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
.PARAMETER Description
No description available.
.PARAMETER MemberCount
No description available.
.PARAMETER Permissions
No description available.
.PARAMETER IsDefault
No description available.
.OUTPUTS

V1DashboardRolesGet200ResponseRolesInner<PSCustomObject>
#>

function Initialize-V1DashboardRolesGet200ResponseRolesInner {
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
        ${Slug},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${MemberCount},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Permissions},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsDefault}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1DashboardRolesGet200ResponseRolesInner' | Write-Debug
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

        if ($null -eq $Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if ($null -eq $MemberCount) {
            throw "invalid value for 'MemberCount', 'MemberCount' cannot be null."
        }

        if ($null -eq $Permissions) {
            throw "invalid value for 'Permissions', 'Permissions' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'slug' = ${Slug}
            'description' = ${Description}
            'memberCount' = ${MemberCount}
            'permissions' = ${Permissions}
            'isDefault' = ${IsDefault}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1DashboardRolesGet200ResponseRolesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1DashboardRolesGet200ResponseRolesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1DashboardRolesGet200ResponseRolesInner<PSCustomObject>
#>
function ConvertFrom-JsonToV1DashboardRolesGet200ResponseRolesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1DashboardRolesGet200ResponseRolesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1DashboardRolesGet200ResponseRolesInner
        $AllProperties = ('id', 'name', 'slug', 'description', 'memberCount', 'permissions', 'isDefault')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'description'))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties['description'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'memberCount'))) {
            throw "Error! JSON cannot be serialized due to the required property 'memberCount' missing."
        } else {
            $MemberCount = $JsonParameters.PSobject.Properties['memberCount'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'permissions'))) {
            throw "Error! JSON cannot be serialized due to the required property 'permissions' missing."
        } else {
            $Permissions = $JsonParameters.PSobject.Properties['permissions'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'isDefault'))) { #optional property not found
            $IsDefault = $null
        } else {
            $IsDefault = $JsonParameters.PSobject.Properties['isDefault'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'slug' = ${Slug}
            'description' = ${Description}
            'memberCount' = ${MemberCount}
            'permissions' = ${Permissions}
            'isDefault' = ${IsDefault}
        }

        return $PSO
    }

}

