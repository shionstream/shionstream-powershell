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
.PARAMETER Email
No description available.
.PARAMETER Image
No description available.
.PARAMETER Role
No description available.
.PARAMETER Activity
No description available.
.OUTPUTS

V1UserProfileGet200ResponseData<PSCustomObject>
#>

function Initialize-V1UserProfileGet200ResponseData {
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
        ${Email},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Image},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Role},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Activity}
    )

    Process {
        'Creating PSCustomObject: ShionStream.Client => V1UserProfileGet200ResponseData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Email) {
            throw "invalid value for 'Email', 'Email' cannot be null."
        }

        if ($null -eq $Role) {
            throw "invalid value for 'Role', 'Role' cannot be null."
        }

        if ($null -eq $Activity) {
            throw "invalid value for 'Activity', 'Activity' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'email' = ${Email}
            'image' = ${Image}
            'role' = ${Role}
            'activity' = ${Activity}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to V1UserProfileGet200ResponseData<PSCustomObject>

.DESCRIPTION

Convert from JSON to V1UserProfileGet200ResponseData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

V1UserProfileGet200ResponseData<PSCustomObject>
#>
function ConvertFrom-JsonToV1UserProfileGet200ResponseData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: ShionStream.Client => V1UserProfileGet200ResponseData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V1UserProfileGet200ResponseData
        $AllProperties = ('id', 'name', 'email', 'image', 'role', 'activity')
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'email'))) {
            throw "Error! JSON cannot be serialized due to the required property 'email' missing."
        } else {
            $Email = $JsonParameters.PSobject.Properties['email'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'role'))) {
            throw "Error! JSON cannot be serialized due to the required property 'role' missing."
        } else {
            $Role = $JsonParameters.PSobject.Properties['role'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'activity'))) {
            throw "Error! JSON cannot be serialized due to the required property 'activity' missing."
        } else {
            $Activity = $JsonParameters.PSobject.Properties['activity'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'image'))) { #optional property not found
            $Image = $null
        } else {
            $Image = $JsonParameters.PSobject.Properties['image'].value
        }

        $PSO = [PSCustomObject]@{
            'id' = ${Id}
            'name' = ${Name}
            'email' = ${Email}
            'image' = ${Image}
            'role' = ${Role}
            'activity' = ${Activity}
        }

        return $PSO
    }

}

