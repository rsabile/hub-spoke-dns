# hub-spoke-dns

# DNS Forwarder VM

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Frsabile%2Fhub-spoke-dns%2Fmain%2Fazuredeploy.json)  

[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Frsabile%2Fhub-spoke-dns%2Fmain%2Fazuredeploy.json)

This template shows how to create a DNS server that forwards queries to Azure's internal DNS servers so that hostnames for VMs in the virtual network can be resolved from outside the network.  As illustrated below, this is useful for doing hostname resolution between virtual networks or from on-premise machines to Azure. See [Name resolution using your own DNS server](https://azure.microsoft.com/documentation/articles/virtual-networks-name-resolution-for-vms-and-role-instances/#name-resolution-using-your-own-dns-server) for more details of how DNS resolution work in Azure.

![Inter-vnet DNS](https://raw.githubusercontent.com/rsabile/hub-spoke-dns/blob/main/images/inter-vnet-dns.png)


