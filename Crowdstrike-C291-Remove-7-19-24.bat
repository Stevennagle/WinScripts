::Run as admin
::Close CMD window within 20 seconds to stop reboot
cls
@echo off
title C-00000291*.sys Removal
echo Running Crowdstrike C-00000291*.sys Removal
del "C:\Windows\System32\drivers\CrowdStrike\C-00000291*.sys"
echo Damaged driver C-00000291 has been removed. Rebooting System:
timeout /t 20
shutdown/r
exit 0