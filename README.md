# Init My Windows
[IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code) setup to install necessary packages and configure my Windows.

<img src="https://user-images.githubusercontent.com/8393701/248329539-0b792b81-2d32-4ef9-b92e-0350ad472d61.png" alt="Windown" width="300"/>

## Prerequisite
Install [`chocolatey`](https://chocolatey.org/) package manager for Windows.

* Goto https://chocolatey.org/install
* Select `Individual`
* Check policy in Powershell(Run as administrator)
  > Run `Get-ExecutionPolicy`. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope` Process.
* Install `chocolatey`
  ```Powershell
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  ```

## Run
* Download this Github repo https://github.com/veerendra2/init-my-windows/archive/refs/heads/main.zip
* Once `chocolatey` is installed, open powershell(with run as administrator)
  ```Powershell
  # Download and extract Github repo
  PS C:\Users\veere\Downloads> cd init-my-windows-main
  PS C:\Users\veere\Downloads\init-my-windows-main> choco install packages.config -y
  ```

## How to create custom script
* Use script builder https://docs.chocolatey.org/en-us/community-repository/script-builde
* Or check package exists in https://community.chocolatey.org/packages and add in [packages.config](./packages.config)

## Other Repos
| Repo | OS |
| ---- | ---- |
| https://github.com/veerendra2/init-my-ubuntu | <img src="https://user-images.githubusercontent.com/8393701/248329468-ed036c98-08e7-4ee6-99ef-d5cef2e48a95.png" alt="Ubuntu" width="25"/> |
| https://github.com/veerendra2/init-my-mac | <img src="https://user-images.githubusercontent.com/8393701/248331160-ae1cd8f6-7c4b-483b-9799-6b44ed3f30f2.png" alt="Mac" width="25"/> |
