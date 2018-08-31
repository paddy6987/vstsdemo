##############################################################

##  Script to stop all Azure Virtual Machine.

##   Author = Pradnesh Kambali

##############################################################

Get-AzureRmVM -status | Stop-AzureRmVM 

Write-Host "All Azure VM are stopped"
