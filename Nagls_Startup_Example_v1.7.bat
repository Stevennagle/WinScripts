@ECHO OFF
ECHO "Nagls_Startup_Example_v1.7.bat"

REM In order to have this automatically run at your initial windows log-on 
::--add this file, or a shortcut to its location, to C:\Users\<PID-HERE>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

REM This is here to force the batch file to wait for priority software to load first
TIMEOUT /t 120
::Adjust based on needed delay
::SLEEP 60

REM Sometimes Avaya or other important apps fail to open due to IP conflicts
::ECHO "Updating IP..."
::IPCONFIG /release
::IPCONFIG /renew
::ECHO "Finished updating IP..."

CD "C:\Program Files (x86)\Microsoft Office\Office16"
START OUTLOOK.EXE
CD "C:\Program Files (x86)\KeePass2x"
START KeePass.exe
CD "C:\Program Files\Microsoft VS Code"
START Code.exe
CD "C:\Users\<USERNAME>\Desktop\Main\VanDyke 20Software\VanDyke 20Software"
START SecureCRT.exe
EXIT 0