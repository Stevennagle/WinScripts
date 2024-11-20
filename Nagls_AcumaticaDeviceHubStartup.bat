@ECHO OFF
ECHO "Running Nagls_AcumaticaDeviceHubStartup.bat"
::Built by Nagls@ for auto Acumatica Device-Hub Start-up 
:: In order to have this automatically run at your initial Windows10 log-on 
::--add this file, or a shortcut to its location, to:
:: C:\Users\<USERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
ECHO "...Waiting for 20 seconds to prioritize other startup programs..."
TIMEOUT /t 20
ECHO "Starting Acumatica Device-Hub..."
CD "C:\Program Files\Acumatica ERP\DeviceHub\"
START DeviceHub.exe
SLEEP 20
EXIT 0