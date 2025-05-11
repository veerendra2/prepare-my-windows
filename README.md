# Prepare My Windows
[IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code) setup to install necessary packages and configure my Windows.

<div style="text-align: center;">
  <img src="./assets/winget-logo.png" alt="Windows" width="100"/>
</div>


## Run
```Powershell
winget import `
  -i packages.json `
  --accept-package-agreements `
  --accept-source-agreements `
  --silent

```

- For MacOS and Ubuntu https://github.com/veerendra2/prepare-my-machine.git
