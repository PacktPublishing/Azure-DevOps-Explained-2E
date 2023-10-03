# Bicep CLI Installation

## Installation on Windows
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi
Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'
az bicep install
az bicep version

## Installation on macOS
brew update && brew install azure-cli
az bicep install
az bicep version