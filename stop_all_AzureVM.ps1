##############################################################

##  Script to stop all Azure Virtual Machine.

##   Author = Pradnesh Kambali

##############################################################
#Connect-AzureRmAccount
#Get-AzureRmVM -status | Stop-AzureRmVM 
stop-azurermvm -Name Deploy-win

#Write-Host "All Azure VM are stopped"
