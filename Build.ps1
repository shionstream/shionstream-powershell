#
# ShionStream API
# Modular anime streaming and metadata API built with Hono on Cloudflare Workers.
# Version: 1.0.0
# Author: ShionStream Engineering Team
# Contact: dev@gox.my.id
# Website: https://gox.my.id
# Generated for ShionStream API SDK; DO NOT EDIT.
#

function Get-FunctionsToExport {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        $Path
    )

    Process {
        $Token = $null
        $ParserErr = $null

        $Ast = [System.Management.Automation.Language.Parser]::ParseFile(
            $Path,
            [ref]$Token,
            [ref]$ParserErr
        )

        if ($ParserErr) {
            throw $ParserErr
        } else {
            foreach ($name in 'Begin', 'Process', 'End') {
                foreach ($Statement in $Ast."${name}Block".Statements) {
                    if (
                        [String]::IsNullOrWhiteSpace($Statement.Name) -or
                        $Statement.Extent.ToString() -notmatch
                        ('function\W+{0}' -f $Statement.Name)
                    ) {
                        continue
                    }

                    $Statement.Name
                }
            }
        }
    }
}

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$FunctionPath = 'Api', 'Model', 'Client' | Where-Object {
    Join-Path "$ScriptDir\src\ShionStream.Client\" $_ | Test-Path
} | ForEach-Object { Join-Path "$ScriptDir\src\ShionStream.Client\" $_ }

$Manifest = @{
    Path = "$ScriptDir\src\ShionStream.Client\ShionStream.Client.psd1"

    Author = 'OpenAPI Generator Team'
    CompanyName = 'openapitools.org'
    Description = 'ShionStream.Client - the PowerShell module for ShionStream API'

    ModuleVersion = '0.1.2'

    RootModule = 'ShionStream.Client.psm1'
    Guid = '{18FD0535-A160-4EE7-ACFA-D1EBD69FCBFE}' # Has to be static, otherwise each new build will be considered different module

    PowerShellVersion = '6.2'

    FunctionsToExport = $FunctionPath | Get-ChildItem -Filter *.ps1 | Get-FunctionsToExport

    VariablesToExport = @()
    AliasesToExport = @()
    CmdletsToExport = @()

}

New-ModuleManifest @Manifest
