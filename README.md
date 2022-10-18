# Modernising a DotNet Framework app to Windows Containers

This guide provides a step by step, developer centric view of migrating **legacy ASP.NET applications** to Azure.

For a tool based approach using  Azure Migrate: App Containerization tool, please see [https://docs.microsoft.com/azure/migrate/tutorial-app-containerization-aspnet-kubernetes](https://docs.microsoft.com/azure/migrate/tutorial-app-containerization-aspnet-kubernetes) or [https://docs.microsoft.com/azure/migrate/tutorial-app-containerization-aspnet-app-service](https://docs.microsoft.com/azure/migrate/tutorial-app-containerization-aspnet-app-service), noting that (at the time of writing) the tooling doesn't support Apps that use Windows Authentication or have non IIS dependencies.

### The App

The application chosen for this guide is from the [eShopModernizing](https://github.com/dotnet-architecture/eShopModernizing) repo. It's a DotNet Framework 4.7 Web Forms Application.

### The Objective

To iteratively work with the application, modernising it step by step to eventually run in a Windows 2022 container. Once containerised there will be guidance on running it in a number of Azure Container Compute services.

## The steps

Step # | Title | Description
------ | ----- | -----------
1 | [Getting the app running locally](1-localRunning.md) | Using Visual Studio, we'll get the eShop app up and running
2 | [On a Virtual Machine](2-virtualMachine.md) | Getting the app running on an Azure VM.
3 | [SQL Database](3-sqlDb.md) | Using SQL instead of the in-memory Database
4 | [App Service](4-appService.md) | Hosting the application in the App Service PaaS platform
5 | [Windows Containerisation](5-windowsContainerise.md) | Focussing on creating a Windows Container
6 | [Windows Container Compute](6-containerCompute.md) | Reviewing the options for running a Windows Container
7 | [Web App for Containers](7-webAppContainers.md) | Deploying the app to Web App for Containers
8 | Kubernetes | Deploying the app to Kubernetes
9 | [Windows 2022](9-windows2022.md) | Changing the base image, re-reviewing compute options

## Links

[Azure app Service Team Blog - Windows Containers](https://azure.github.io/AppService/windows-containers/)
[Docs - Windows Containers](https://docs.microsoft.com/virtualization/windowscontainers/about/)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
