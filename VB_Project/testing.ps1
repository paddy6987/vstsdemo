$location = "central india"
$resourceGroup = "howtoqueuesrg"
New-AzureRmResourceGroup -ResourceGroupName $resourceGroup -Location $location
$storageAccount = New-AzureRmStorageAccount -ResourceGroupName $resourceGroup `
  -Name "queuestorage212" `
  -Location $location `
  -SkuName Standard_LRS

$ctx = $storageAccount.Context
$queueName = "newqueue1212"
$queue = New-AzureStorageQueue –Name $queueName -Context $ctx
# Create a new message using a constructor of the CloudQueueMessage class
$queueMessage = New-Object -TypeName Microsoft.WindowsAzure.Storage.Queue.CloudQueueMessage -ArgumentList "This is message "


