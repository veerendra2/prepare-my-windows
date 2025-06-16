# Prepare My Windows
[IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code) setup to install necessary packages and configure my Windows.

<div style="text-align: center;">
  <img src="./assets/winget-logo.png" alt="Windows" width="100"/>
</div>


## Installation

1. Download `packages.json` file from `main`
```Powershell
Invoke-WebRequest "https://raw.githubusercontent.com/veerendra2/prepare-my-windows/refs/heads/main/packages.config" -OutFile (Join-Path ([Environment]::GetFolderPath("UserProfile")) "Downloads\packages.config")
```

2. Start installation
```Powershell
winget import `
  -i "$env:USERPROFILE\Downloads\packages.json" `
  --accept-package-agreements `
  --accept-source-agreements `
  --silent

```

_For MacOS and Ubuntu [https://github.com/veerendra2/prepare-my-machine.git](https://github.com/veerendra2/prepare-my-machine.git)_
