## Step 2 - Publishing to an Azure VM

It can be useful to see the app working on a traditional Windows VM as part of the modernisation journey.

This provides a more realistic environment to run the app from, than your local development workstation. It later stages it can also enable domain account synchronisation to Azure AD.

Create a resource group for all the Azure resources we'll need.

```bash
az group create -n eshopmodernise -l uksouth
```

Create a Web Server VM : [https://docs.microsoft.com/azure/virtual-machines/windows/quick-create-cli#create-virtual-machine](https://docs.microsoft.com/azure/virtual-machines/windows/quick-create-cli#create-virtual-machine)
