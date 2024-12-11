# ========================================================================================
# NAME: exercice1-8.ps1
# AUTHOR: RICHER Aymeric
# DATE: 04/12/2024
# ========================================================================================


[string] $demande = Read-Host 'Voulez-vous les services lancé (oui ou non) ?'


if ($demande -eq 'non'){
    Get-CimInstance -ClassName Win32_Service | Where-Object state -eq "stopped" | Select-Object Name, State, Description | Out-File C:\contextecubsituation7\sauvegarde3.txt

}
elseif ($demande -eq 'oui'){
    Get-CimInstance -ClassName Win32_Service | Where-Object state -eq "running" | Select-Object Name, State, Description | Out-File C:\contextecubsituation7\sauvegarde3.txt
}
else {
    Write-Host 'Vous n avez pas rentrer la bonne valeur rentre soit oui soit non'
}












