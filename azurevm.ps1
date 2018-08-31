$secretText = (Get-AzureKeyVaultSecret -VaultName 'Powershell' -Name 'Powerkey').SecretValue
$secpasswd = ConvertTo-SecureString $secretText -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential("username",$secpasswd)
New-AzureRmResourceGroup -Name myResourceGroup -Location EastUS
New-AzureRmVm `
    -ResourceGroupName "myresourcegroup" `
    -Credential $mycreds `
    -Name "myVM" `
    -Location "East US" `
    -VirtualNetworkName "myVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName "myPublicIpAddress" `
-OpenPorts 80,3389
