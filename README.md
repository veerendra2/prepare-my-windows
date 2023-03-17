# Windows Dev
Scripts and playbooks to install necessary packages I use on my Windows.

## Prerequisite
Install [`chocolatey`](https://chocolatey.org/) package manager for Windows.

* Goto https://chocolatey.org/install
* Select "Individual"
* Check policy in Powershell(Run as administrator)
  > Run `Get-ExecutionPolicy`. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope` Process.
* Install `chocolatey`
  ```
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  ```

## Run
Once `chocolatey` is installed, open powershell(with run as administrator)
```Powershell
PS C:\WINDOWS\system32> cd c:\Users\veere\Downloads
PS C:\Users\veere\Downloads> cd windows-dev
PS C:\Users\veere\Downloads\windows-dev> choco install packages.config -y
```

## How to create custom script
* Use script builder https://docs.chocolatey.org/en-us/community-repository/script-builde
* Or check package exists in https://community.chocolatey.org/packages and add in [packages.config](./packages.config)