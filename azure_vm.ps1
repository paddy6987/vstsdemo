$secretText = (Get-AzureKeyVaultSecret -VaultName 'Powershell' -Name 'Powerkey').SecretValue
$secpasswd = ConvertTo-SecureString $secretText -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential("username",$secpasswd)
#$cred = Get-Credential -Message "Enter a username and password for the virtual machine."
$vmParams = @{
 ResourceGroupName = 'TutorialResources'
 Name = 'TutorialVM1'
 Location = 'eastus'
 ImageName = 'Win2016Datacenter'
 PublicIpAddressName = 'tutorialPublicIp'
 Credential = $mycreds
 OpenPorts = 3389
}
$newVM1 = New-AzureRmVM @vmParams
