#Auto-fix PowerShell directory name error 
#   Explanation: 
#-In Windows PowerShell 5.1 the "PSReadline" module was spelled with a lowercase "L."
#-This was changed to an uppercase "L" for the release of PowerShell 6.
#-This can create complications with several features.
#-This directory name mismatch produces errors when attempting to update CmdLets.
#   How to use this script:
#-Run from a Microsoft Windows Admin CMD window:
#C:\WINDOWS\system32> powershell.exe -ExecutionPolicy Bypass -File <yourFilePath>\AutoFixPS51DirName.ps1
Write-Host "Running Auto-fix for PowerShell 5.1 Directory Name Error"
cmd /c ren "C:\Program Files\WindowsPowerShell\Modules\PSReadline" PSReadLine
#   Optional:
#Remove-Module PSReadline
Import-Module PSReadLine
Update-Help -Module PSReadLine -Force
