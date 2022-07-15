@echo OFF
setlocal EnableExtensions EnableDelayedExpansion
title ZortosToolBox v1.0 - By Zortos    
cd c:
:Warning
color 4f
echo we are NOT responsible for any damage caused by this tool.
echo If you do not accept , please exit this program.
timeout /t 3 /NOBREAK > nul
goto menu


:menu
cls
color 8f
echo Select item to Run
echo -----------------------
echo 1. Desktop
echo 2. CloudForce (Coming Soon)
echo 3. UwUTools (Coming Soon)
echo 4. ZortosToolBox 
echo 5. Exit
echo -----------------------
set /p choice="Please enter your choice:"
if %choice% == 1 (
    curl -LJk "https://github.com/zortos293/ZortosToolBox/raw/main/DesktopOverlay.exe" -o "c:\ZortosToolBox\DesktopOverlay.exe" > nul
    curl -LJk "https://github.com/zortos293/ZortosToolBox/raw/main/WinXShell.jcfg" -o "c:\ZortosToolBox\WinXShell.jcfg" > nul
    curl -LJk "https://github.com/zortos293/ZortosToolBox/raw/main/anime.jpg" -o "c:\ZortosToolBox\anime.jpg" > nul
	curl -LJk "https://github.com/zortos293/ZortosToolBox/raw/main/GongShell.dll" -o "c:\ZortosToolBox\GongShell.dll" > nul
	curl -LJk "https://github.com/zortos293/ZortosToolBox/raw/main/ZortosExplorerV2.exe" -o "c:\ZortosToolBox\ZortosExplorerV2.exe" > nul
    cls
	start "" "c:\ZortosToolBox\DesktopOverlay.exe" -Desktop
	color 2f
	echo Desktop Installed!
	timeout /t 3 /NOBREAK > nul
	goto menu
)
if %choice% == 2 (
	echo Coming Soon
    goto menu
)
if %choice% == 3 (
	echo Coming Soon
    goto menu
)
if %choice% == 4 (
	curl -LJk "https://github.com/zortos293/ZortosToolBox/raw/main/ZortosToolBox.bat" -o "c:\ZortosToolBox\ZortosToolBox.bat" > nul
	start "" "c:\ZortosToolBox\AMD.exe" /c "c:\ZortosToolBox\ZortosToolBox.bat"
	goto menu
)
if %choice% == 5 (
	color 0f
	echo Exiting.
	timeout /t 3 /NOBREAK > nul
	exit
)
echo wrong choice.
timeout /t 2 /NOBREAK > nul
goto menu

endlocal