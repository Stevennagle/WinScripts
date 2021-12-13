cls
@echo off
title "Docker Desktop Dev Env Auto Downloader"
echo Running : 
echo Docker Desktop Dev Env Auto Downloader
echo The following packages will be installed : Docker Desktop, WSL2, 

if not exist "C:\DockerDevEnvDownload\" mkdir C:\DockerDevEnvDownload\
echo Created C:\DockerDevEnvDownload\

echo Step 1) Downloading Docker Desktop(485MB)
::Used tiny URL to overcome "%20" issue in download
::https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe
::https://tinyurl.com/55b2ss82
powershell -Command "Invoke-webRequest https://tinyurl.com/55b2ss82 -Outfile C:\DockerDevEnvDownload\DockerDesktopInstaller.exe"
echo Complete.
echo ...

echo Step 2) Downloading Docker Development Environment Dependencies :
echo ...

echo Downloading Windows Subsystem "for" Linux(WSL2)(1/4)
powershell -Command "Invoke-webRequest https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -Outfile C:\DockerDevEnvDownload\wsl_update_x64.msi"
echo Complete.
echo ...

echo Downloading Distro - Kali Linux(2/4) 
powershell -Command "Invoke-webRequest https://aka.ms/wsl-kali-linux-new -Outfile C:\DockerDevEnvDownload\kali-linux-08-06-2019.appx"
echo Complete.
echo ...

::echo Downloading Distro - Ubuntu Linux(2/4) 
::powershell -Command "Invoke-webRequest https://aka.ms/wslubuntu2004 -Outfile C:\DockerDevEnvDownload\Ubuntu_2004.2020.424.0_x64.appx"
::echo Complete.
::echo ..

echo Downloading Git (3/4) 
powershell -Command "Invoke-webRequest https://git-scm.com/download/win -Outfile C:\DockerDevEnvDownload\Git-2.34.1-64-bit.exe"
echo Complete.
echo ...

::https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user
::https://tinyurl.com/yc88fzrd

echo Downloading Visual Studio Code (4/4) 
powershell -Command "Invoke-webRequest https://tinyurl.com/yc88fzrd -Outfile C:\DockerDevEnvDownload\VSCodeUserSetup-x64-1.63.0.exe"
echo Downloading Docker Development Environment Dependencies: Complete
echo ...

echo Updating necessary settings :

echo - Enabling the Windows Subsystem for Linux
powershell -Command "dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart"
echo ...

echo - Enabling Virtual Machine feature
powershell -Command "dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart"
echo ...

echo restart and follow instructions at "https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package"
pause