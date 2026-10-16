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
.Synopsis
    Helper function to get common parameters (Verbose, Debug, etc.)
.Example
    Get-CommonParameters
#>
function Get-CommonParameters {
    function tmp {
        [CmdletBinding()]
        Param ()
    }

    (Get-Command -Name tmp -CommandType Function).Parameters.Keys
}
