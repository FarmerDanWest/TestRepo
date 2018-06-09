$cred = get-credential
Login-AzureRmAccount -Credential $cred

Get-AzureRmSubscription 

Select-AzureRmSubscription -SubscriptionId 

get-azurecontext