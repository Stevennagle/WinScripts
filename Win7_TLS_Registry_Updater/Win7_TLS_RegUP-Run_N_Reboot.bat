@echo off
:: This runs a registry file that adds the requisite directories and values
:: to the Windows 7 registry for TLS 1.2 and restarts the system
echo Running C:\Win7_TLS_Registry_Updater\Win7_TLS_RegistryUpdater.reg
start C:\Win7_TLS_Registry_Updater\Win7_TLS_RegistryUpdater.reg
echo Exit now to cancel system reboot.
TIMEOUT /t 20
shutdown/r









