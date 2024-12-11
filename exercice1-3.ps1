# ========================================================================================
# NAME: exercice1-3.ps1
# AUTHOR: RICHER Aymeric
# DATE: 04/12/2024
# ========================================================================================

Get-Process | Where-Object {$_.ProcessName -Like "*svchost*"}  |Format-Table Id, Name -AutoSize

