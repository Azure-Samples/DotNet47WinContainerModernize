# Step 3 - Connecting to a SQL database

The application is working from an in-memory database, and the next step is to configure it to use an Azure SQL Database.

First we need to create the actual SQL database infrastructure in Azure.

```bash
az deployment group create -g eshopmodernise -f sqlServer.bicep
```

Next, we need to configure the web app not to use Mock data, and instead to use a SQL Server Database. For this, open the web.config file and change UseMockData to false.

```xml
  <appSettings>
    <add key="UseMockData" value="false" />
    <add key="UseCustomizationData" value="false" />
  </appSettings>
```

Using the Azure Portal, you can view the connection strings for the newly created SQL Database. Replace the connection string in the web.config file, noting the database name has to be `Microsoft.eShopOnContainers.Services.CatalogDb`.

old

```xml
  <connectionStrings>
    <add name="CatalogDBContext" connectionString="Data Source=(localdb)\MSSQLLocalDB; Initial Catalog=Microsoft.eShopOnContainers.Services.CatalogDb; Integrated Security=True; MultipleActiveResultSets=True;" providerName="System.Data.SqlClient" />
  </connectionStrings>
```

new

```xml
  <connectionStrings>
    <add name="CatalogDBContext" connectionString="VALUE FROM AZURE PORTAL, WITH YOUR DEFINED PASSWORD INSERTED" />
  </connectionStrings>
```
