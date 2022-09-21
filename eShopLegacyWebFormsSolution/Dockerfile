FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 AS build

COPY . ./src/
WORKDIR /src

RUN nuget restore eShopLegacyWebForms.sln

RUN msbuild eShopLegacyWebForms.sln /p:Configuration=Release /p:BuildingProject=true /p:OutDir=..\PUBLISH
#RUN echo $(ls src/PUBLISH/_PublishedWebsites/eShopLegacyWebForms)

FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build src/src/PUBLISH/_PublishedWebsites/eShopLegacyWebForms/ ./

#Install the Azure CLI
SHELL ["powershell"]
RUN powershell $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
