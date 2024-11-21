@ECHO OFF
TIMEOUT /t 20
ECHO "Running Nagls_AcumaticaServiceCreator.bat"
::Built by Nagls@ to create a Windows Server 2022 service for Acumatica Device-Hub auto-start & print server integration
sc.exe create Nagls_AcumaticaHubAutoStart binPath="C:\Program Files\Acumatica ERP\DeviceHub\DeviceHub.exe" displayname= "Nagls_AcumaticaHubAutoStart" start= auto 
::
::Alternate Add or Edit options: 
::
::A)  Add a shortcut to DeviceHub.exe location to:
:: C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
::
::B)  Edit Registry directly
::  0) Find the service you want to redirect in [HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services]
::  1) Locate the ImagePath subkey and change that value.
::
::C)  Edit Registry with PowerShell
::Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\My Service" `
::    -Name ImagePath -Value "C:\Program Files (x86)\My Service\DeviceHub.exe"
::
::D)  sc help
::
::E)  Next steps: 
::https://learn.microsoft.com/en-us/dotnet/framework/windows-services/walkthrough-creating-a-windows-service-application-in-the-component-designer
::
TIMEOUT /t 20
EXIT 0