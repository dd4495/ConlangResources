#requires -Version 2

 <#
.SYNOPSIS
  Transforms words by adding a suffix 
.DESCRIPTION
  This script will transform a word or list of words based on the supplied suffix(es).
.PARAMETER BaseWords
    This is the root word or list of root words. This parameter can accept either 
    a single entry or a comma-separated list of entries
.PARAMETER Endings
    This is the suffix or list of suffixes. This parameter can accept either 
    a single entry or a comma-separated list of entries
.EXAMPLES
    .\Transform-Words.ps1 -Endings ik, ak, ok -BaseWords kit, kat
.INPUTS
  comma separated list on command line
.OUTPUTS
  text
.NOTES
  Version:        1.0
  Author:         dd4495 
  Creation Date:  August 2016
#>

    
    [cmdletbinding(SupportsShouldProcess = $True)]
    param (
    [Parameter (Mandatory = $True,ValueFromPipeline = $True,ValueFromPipelineByPropertyName = $True,Position = 0)]
    [string[]]$BaseWords,
    [Parameter (Mandatory = $True,ValueFromPipeline = $True,ValueFromPipelineByPropertyName = $True,Position = 1)]
    [string[]]$Endings
    )

    
    $outTable = @()
    foreach ($word in $BaseWords) {
    $table = New-Object psobject
        foreach ($end in $Endings) {
            $table | Add-Member -MemberType NoteProperty -Name $end -Value "$word$end"
        } 
       $outTable += $table 
    }
    [pscustomobject] $outTable 