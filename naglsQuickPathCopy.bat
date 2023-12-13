@echo off
REM Simple, but highly useful; this sends the path of whatever you drag and drop on it. to the clipboard
::  I like to keep it on the Windows Desktop to quickly copy the path of a file. 
set filename=%1
for %%F in ("%filename%") do set dirname=%%~dpF
for %%F in ("%dirname%") do set dirname=%%~dpF
echo %dirname% | CLIP