# ========================================================================================
# NAME: exercice1-4.ps1
# AUTHOR: RICHER Aymeric
# DATE: 04/12/2024
# ========================================================================================

[string]$name = Read-Host 'Saissiez un nom de processus'

Get-Process | Where-Object {$_.ProcessName -Like $name}  |Format-Table Id, Name -AutoSize

