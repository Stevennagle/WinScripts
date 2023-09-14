@ECHO OFF
ECHO "Running Nagls_Startup_Example_v2.bat"
::Built by Nagls@ for a quick win10 startup

REM 0)TIPS:
:: Set your web browser to open a bookmark folder or a bookmarklet
:: Run Selenium for browser automation
:: In order to have this automatically run at your initial Windows10 log-on 
::--add this file, or a shortcut to its location, to:
:: C:\Users\<USERNAME>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
:: TIMEOUT can be skipped, SLEEP cannot - pick your preference
:: You can run additional programs like Moba-X-term from any folder
::----------------------------------------------------------------------------------------

REM 1)Pause
:: This pause is here for 2 reasons:
:: 1) To force the batch file to wait for Avaya to load first
:: 2) Just in case you accidentally run this batch file by accident
:: you can stop it before it resets the NICs
ECHO "...Waiting for 2 minutes while dependencies load. Exit now to avoid resetting NICs."
TIMEOUT /t 120
::SLEEP 60
::----------------------------------------------------------------------------------------

REM 2) IP Reset
::Sometimes Avaya, or other important apps fail to open due to IP conflicts
ECHO "Updating IP..."
IPCONFIG /release
IPCONFIG /renew
ECHO "Finished updating IP..."
::----------------------------------------------------------------------------------------

REM 3) Apps
::Sometimes the VPN clients aren't enabled on startup
CD "C:\Program Files\Palo Alto Networks\GlobalProtect"
START PanGPA.exe

CD "C:\Program Files\Google\Chrome\Application"
START "Chrome" https://github.com/

CD "C:\Program Files (x86)\Microsoft Office\Office16"
START OUTLOOK.EXE

CD "C:\Program Files (x86)\KeePass2x"
START KeePass.exe

CD "C:\Program Files\Cisco Spark"
START CiscoCollabHost.exe

CD "C:\Program Files\Microsoft VS Code"
START Code.exe

CD "C:\Program Files\VanDyke Software\Clients"
START SecureCRT.exe

CD "C:\Program Files\Wireshark"
START Wireshark.exe
EXIT 0