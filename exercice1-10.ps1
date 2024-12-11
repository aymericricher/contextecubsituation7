# ========================================================================================
# NAME: exercice1-8.ps1
# AUTHOR: RICHER Aymeric
# DATE: 04/12/2024
# ========================================================================================


Get-CimInstance -ClassName Win32_Service  | Where-Object state -eq "running" | Select-Object Name, State | Out-File C:\contextecubsituation7\sauvegarde2.txt

[string]$name = Read-Host 'saissisez le mot que vous dsirez filtrer'



$contenu = Get-Content C:\contextecubsituation7\sauvegarde2.txt

foreach ($ligne in $contenu) {
    
    if ($ligne -match $name) {
        Write-host $ligne -ForegroundColor Green
    }
    else {
        Write-host $ligne -ForegroundColor Red
    }


}