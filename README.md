# Prepare My Windows
[IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code) setup to install necessary packages and configure my Windows.

<img src="https://user-images.githubusercontent.com/8393701/248329539-0b792b81-2d32-4ef9-b92e-0350ad472d61.png" alt="Windown" width="75"/> <img src="https://user-images.githubusercontent.com/8393701/269617804-375d5662-9229-48c2-b107-f82da1e06243.png" alt="Windown" width="100"/>

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
* Download this Github repo [zip file](https://github.com/veerendra2/prepare-my-windows/archive/refs/heads/main.zip) or download [packages.config](https://github.com/veerendra2/prepare-my-windows/blob/main/packages.config)
* Once `chocolatey` is installed, open powershell(with run as administrator)
  ```Powershell
  # Download and extract Github repo
  PS C:\Users\veere\Downloads> cd prepare-my-windows-main
  PS C:\Users\veere\Downloads\prepare-my-windows-main> choco install packages.config -y
  ```

## How to create custom script
* Use script builder https://docs.chocolatey.org/en-us/community-repository/script-builde
* Or check package exists in https://community.chocolatey.org/packages and add in [packages.config](./packages.config)

## For MacOS and Ubuntu

* https://github.com/veerendra2/prepare-my-machine.git 

