@echo off
:: https://privacy.sexy — v0.11.4 — Thu, 16 Mar 2023 20:47:26 GMT
:: Ensure admin privileges
fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    PowerShell Start -Verb RunAs '%0' 2> nul || (
        echo Right-click on the script and select "Run as administrator".
        pause & exit 1
    )
    exit 0
)


:: ----------------------------------------------------------
:: -------------------Disable online tips--------------------
:: ----------------------------------------------------------
echo --- Disable online tips
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d 0 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Do not keep history of recently opened documents-----
:: ----------------------------------------------------------
echo --- Do not keep history of recently opened documents
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: ----Clear history of recently opened documents on exit----
:: ----------------------------------------------------------
echo --- Clear history of recently opened documents on exit
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ClearRecentDocsOnExit" /t REG_DWORD /d 1 /f
:: ----------------------------------------------------------


:: ----------------------------------------------------------
:: -----Do not show recently used files in Quick Access------
:: ----------------------------------------------------------
echo --- Do not show recently used files in Quick Access
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /d 0 /t "REG_DWORD" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /f
if not %PROCESSOR_ARCHITECTURE%==x86 ( REM is 64 bit?
    reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /f
)
:: ----------------------------------------------------------


pause
exit /b 0