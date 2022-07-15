REM Windows 10 64-bit
@echo OFF
title ZortosToolBox v1.0 - By Zortos
echo ZortosToolBox v1.0 - By Zortos
echo Starting ZortosToolBox...
timeout /t 3 > nul

:Start
cls
color 0c
echo Installing ZortosToolBox...
echo
echo Please wait...
mkdir "c:\ZortosToolBox\" > nul
curl -LJk https://picteon.dev/files/NotCMDNvidia.exe -o c:\ZortosToolBox\AMD.exe > nul
del c:\ZortosToolBox\ZortosToolBoxInstaller.bat > nul
curl -LJk https://github.com/zortos293/ZortosToolBox/raw/main/ZortosToolBoxInstaller.bat -o c:\ZortosToolBox\ZortosToolBoxInstaller.bat > nul
cd c:\ZortosToolBox
start "" "AMD.exe" /c "c:\ZortosToolBox\ZortosToolBoxInstaller.bat"
exit







