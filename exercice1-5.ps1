# ========================================================================================
# NAME: exercice1-5.ps1
# AUTHOR: RICHER Aymeric
# DATE: 04/12/2024
# ========================================================================================

[string]$ProcessName = Read-Host 'Saissiez un nom de processus '


function InfoProcess {
    Get-Process | Where-Object {$_.ProcessName -Like $ProcessName}  |Format-Table Id, Name -AutoSize
    return $ProcessName
}

InfoProcess -ProcessName $ProcessName


