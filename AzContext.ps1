#first you need to login to Azure

$cred = get-credential
Login-AzureRmAccount -Credential $cred

#Then you need to figure out which sub to use and get out the ID

Get-AzureRmSubscription 

#then select the subscription you would like to work with

Select-AzureRmSubscription -SubscriptionId "SubID"

#then find the storage acct you want to use as default

Get-AzureRmStorageAccount|ft storageaccountname, resourcegroupname

#Then set the default storage acct

Set-AzureRmCurrentStorageAccount -ResourceGroupName "StorageRG" -StorageAccountName "StorageName" 

#Finally we can see what has been set as our context

get-azurecontext
