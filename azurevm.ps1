

$username = 'pradnesh'
$password = "Password@123"
New-AzureRmResourceGroup -Name myResourceGroup -Location EastUS
New-AzureRmVm `
    -ResourceGroupName "myResourceGroup" `
    -Credential ($username,$password)
    -Name "myVM" `
    -Location "East US" `
    -VirtualNetworkName "myVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName "myPublicIpAddress" `
    -OpenPorts 80,3389
