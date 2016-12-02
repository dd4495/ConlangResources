Function Decline-Nouns {
    [cmdletbinding(SupportsShouldProcess = $True)]
    param ( 
    [Parameter (Mandatory = $True,ValueFromPipeline = $True,ValueFromPipelineByPropertyName = $True,Position = 0)]
    [string[]]$DeclensionNames,
    [Parameter (Mandatory = $True,ValueFromPipeline = $True,ValueFromPipelineByPropertyName = $True,Position = 1)]
    [string[]]$Endings,
    [Parameter (Mandatory = $True,ValueFromPipeline = $True,ValueFromPipelineByPropertyName = $True,Position = 2)]
    [string[]]$BaseWords
    )


    $DecList = New-Object System.Collections.ArrayList
    $EndList = New-Object System.Collections.ArrayList
    $WrdList = New-Object System.Collections.ArrayList

    for ($i=0;$i -lt $DeclensionNames.Count; $i++) {
        $DecList.Add(($DeclensionNames[$i])) > $null
    }
    for ($j=0;$j -lt $Endings.Count; $j++) {
        $EndList.Add(($Endings[$j])) > $null
    }
    for ($k=0;$k -lt $BaseWords.Count; $k++) {
        $WrdList.Add(($BaseWords[$k])) > $null
    }

    $lex = New-Object psobject
    foreach ($word in $WrdList) {
        foreach ($end in $EndList) {
            "$word$end"
        }
    }
}
