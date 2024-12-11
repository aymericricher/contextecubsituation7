# ========================================================================================
# NAME: exercice1-6.ps1
# AUTHOR: RICHER Aymeric
# DATE: 04/12/2024
# ========================================================================================


[string]$ProcessName = Read-Host 'Saissiez un nom de processus '


function InfoProcess {
    [string]$process =  Get-Process | Where-Object {$_.ProcessName -Like $ProcessName}  |Format-Table Id, Name -AutoSize
    $process | Out-File C:\contextecubsituation7\sauvegarde.txt
    $process | Export-Csv -Path C:\contextecubsituation7\sauvegarde.csv -Delimiter ',' -Append  
    return $process
}

InfoProcess -ProcessName $ProcessName


