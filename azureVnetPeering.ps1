#Peering between Azure VNETS(Peerings between VNET1 to VNET2)
Login-AzureRmAccount
$resourceGroup = read-host "Enter your ResourceGroup:::"
$vnet1Name = Read-host "Enter your VNET1 Name:::"
$vnet2Name = read-host "Enter Your VNET2 Name"
$vnet1 = Get-AzureRmVirtualNetwork -ResourceGroupName $resourceGroup -Name $vnet1Name
$vnet2 = Get-AzureRmVirtualNetwork -ResourceGroupName $resourceGroup -Name $vnet2Name
Add-AzureRmVirtualNetworkPeering -Name LinkToVNet2 -VirtualNetwork $vnet1 -RemoteVirtualNetworkId $vnet2.Id
Add-AzureRmVirtualNetworkPeering -Name LinkToVNet1 -VirtualNetwork $vnet2 -RemoteVirtualNetworkId $vnet1.Id
