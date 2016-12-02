Function Transform-BaseWord {

    Param(
        [string]$baseWord,
        [validateSet('n','v','adj','adv')][string]$speechPart       
        )

    if (($baseWord.EndsWith('a')) -and (($speechPart -eq 'n') -or ($speechPart -eq 'adj'))) {
        $baseWordt = $baseWord.TrimEnd('a')
    
        $nNomS = 'ā'
        $nGenS = 'i'
        $nDatS = 'i'
        $nAccS = 'ām'
        $nAblS = 'ā'
    
        $nNomP = 'i'
        $nGenP = 'ārum'  
        $nDatP = 'izh'
        $nAccP = 'āzh'
        $nAblP = 'izh'

        Write-Output "$baseWordt$nNomS`t$baseWord$nGenS`t$baseWord$nDatS`t$baseWordt$nAccS`t$baseWordt$nAblS`t$baseWord$nNomP`t$baseWordt$nGenP`t$baseWord$nDatP`t$baseWordt$nAccP`t$baseWord$nAblP"
    }

    elseif (($baseWord.EndsWith('a')) -and (($speechPart -eq 'v') -or ($speechPart -eq 'adv'))) {
        $baseWordt = $baseWord.TrimEnd('a')
        $v1pSA = 'āt'
        $v2pSA = 'āti'
        $v3pSA = 'ānt'

        $v1pPA = 'āth'
        $v2pPA = 'āthi'
        $v3pPA = 'ānth'

        Write-Output "$baseWordt$v1pSA`t$baseWordt$v2pSA`t$baseWordt$v3pSA`t$baseWordt$v1pPA`t$baseWordt$v2pPA`t$baseWordt$v3pPA"
    }
    elseif (($baseWord.EndsWith('i')) -and (($speechPart -eq 'n') -or ($speechPart -eq 'adj'))) {
        $baseWordt = $baseWord.TrimEnd('i')
    
        $nNomS = 'a'
        $nGenS = 'ī'
        $nDatS = 'ī'
        $nAccS = 'am'
        $nAblS = 'a'

        $nNomP = 'ī'
        $nGenP = 'arum'
        $nDatP = 'īzh'
        $nAccP = 'azh'
        $nAblP = 'īzh'

        Write-Output "$baseWord$nNomS`t$baseWordt$nGenS`t$baseWordt$nDatS`t$baseWord$nAccS`t$baseWord$nAblS`t$baseWordt$nNomP`t$baseWord$nGenP`t$baseWordt$nDatP`t$baseWord$nAccP`t$baseWordt$nAblP"
    }
    elseif (($baseWord.EndsWith('e')) -and (($speechPart -eq 'v') -or ($speechPart -eq 'adv'))) {
        $baseWordt = $baseWord.TrimEnd('e')
    
        $v1pSA = 'at'
        $v2pSA = 'ati'
        $v3pSA = 'ant'

        $v1pPA = 'ath'
        $v2pPA = 'athi'
        $v3pPA = 'anth'

        Write-Output "$baseWordt$v1pSA`t$baseWordt$v2pSA`t$baseWordt$v3pSA`t$baseWordt$v1pPA`t$baseWordt$v2pPA`t$baseWordt$v3pPA"
    }
    elseif (($speechPart -eq 'v') -or ($speechPart -eq 'adv')) {
        $baseWord = $baseWord

        $v1pSA = 'at'
        $v2pSA = 'ati'
        $v3pSA = 'ant'

        $v1pPA = 'ath'
        $v2pPA = 'athi'
        $v3pPA = 'anth'


        Write-Output "$baseWord$v1pSA`t$baseWord$v2pSA`t$baseWord$v3pSA`t$baseWord$v1pPA`t$baseWord$v2pPA`t$baseWord$v3pPA"
    }

    elseif (($speechPart -eq 'n') -or ($speechPart -eq 'adj')) {
        $baseWord = $baseWord
        $nNomS = 'a'
        $nGenS = 'i'
        $nDatS = 'i'
        $nAccS = 'am'
        $nAblS = 'a'

        $nNomP = 'i'
        $nGenP = 'arum'
        $nDatP = 'izh'
        $nAccP = 'azh'
        $nAblP = 'izh'
        Write-Output "$baseWord$nNomS`t$baseWord$nGenS`t$baseWord$nDatS`t$baseWord$nAccS`t$baseWord$nAblS`t$baseWord$nNomP`t$baseWord$nGenP`t$baseWord$nDatP`t$baseWord$nAccP`t$baseWord$nAblP"
    }

    else {Write-Output "I don't know what to do with this input"}

}