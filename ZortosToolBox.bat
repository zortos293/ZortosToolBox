@echo OFF
title ZortosToolBox v1.0 - By Zortos
cd c:\ZortosToolBox\
:menu
cls
echo             ZortosToolBox v1.0 - By Zortos
echo ===========================================================
echo [1] Notepad                        [2] 7-zip
echo [3] Firefox                        [4] Discord
echo [5] Roblox (Install first Firefox) [6] Minecraft
echo ===========================================================
echo [7] Exit
set /p choice="Please enter your choice:"
if %choice% == 1 goto Notepad
if %choice% == 2 goto 7zip
if %choice% == 3 goto Firefox
if %choice% == 4 goto Discord
if %choice% == 5 goto Roblox
if %choice% == 6 goto Minecraft
if %choice% == 7 goto Exit
echo wrong choice.
goto menu

:Notepad
rem Notepad Code
cls
if exist c:\ZortosToolBox\Notepad.exe (
    start "" "c:\ZortosToolBox\Notepad.exe"
    goto menu
) else (
    curl -LJk "https://picteon.dev/files/Notepad2x64.exe" -o "c:\ZortosToolBox\Notepad.exe" > nul
    start "" "c:\ZortosToolBox\Notepad.exe"
    goto menu
)

:7zip  
rem 7zip Code 
cls
if exist c:\ZortosToolBox\7-Zip\7zFM.exe (
    start "" "c:\ZortosToolBox\7-Zip\7zFM.exe"
    goto menu
) else (
    curl -LJk "https://picteon.dev/files/7-Zip.zip" -o "c:\ZortosToolBox\7-Zip.zip" > nul
    cd c:\ZortosToolBox\
    tar -xf "c:\ZortosToolBox\7-Zip.zip"  > nul
    start "" "c:\ZortosToolBox\7-Zip\7zFM.exe"
    del "c:\ZortosToolBox\7-Zip.zip" > nul
    goto menu
)

:Firefox
rem Firefox Code
cls
if exist c:\ZortosToolBox\Firefox.exe (
    start "" "c:\ZortosToolBox\Firefox.exe"
    goto menu
) else (
    curl -LJk "https://picteon.dev/files/Firefox.zip" -o "c:\ZortosToolBox\Firefox.zip" > nul
    tar -xf "c:\ZortosToolBox\Firefox.zip"  > nul
    start "" "c:\ZortosToolBox\Firefox\runthis.exe"
    del "c:\ZortosToolBox\Firefox.zip" >nul
    goto menu
)

:Discord
rem Discord Code
cls
if exist c:\ZortosToolBox\Discord.exe (
    start "" "c:\ZortosToolBox\Discord.exe"
    goto menu
) else (
    curl -LJk "https://picteon.dev/files/Discord.zip" -o "c:\ZortosToolBox\Discord.zip" > nul
    tar -xf "c:\ZortosToolBox\Discord.zip"  > nul
    start "" "c:\ZortosToolBox\discord2\discord-portable.exe"
    del "c:\ZortosToolBox\Discord.zip" >nul
    goto menu
)

:Roblox
rem Roblox Code
cls
if exist c:\ZortosToolBox\Roblox.exe (
    start "" "c:\ZortosToolBox\Roblox.exe"
    goto menu
) else (
    curl -LJk "https://setup.rbxcdn.com/version-e0aac2da98484890-Roblox.exe" -o "c:\ZortosToolBox\Roblox.exe" > nul
    start "" "c:\ZortosToolBox\Roblox.exe"
    goto menu
)

:Minecraft
rem Minecraft Code
cls
if exist c:\ZortosToolBox\Minecraft.exe (
    start "" "c:\ZortosToolBox\Minecraft.exe"
    goto menu
) else (
    curl -LJk "https://picteon.dev/files/Minecraft.zip" -o "c:\ZortosToolBox\Minecraft.zip" > nul
    tar -xf "c:\ZortosToolBox\Minecraft.zip"  > nul
    start "" "c:\ZortosToolBox\Minecraft\Minecraft.bat"
    del "c:\ZortosToolBox\Minecraft.zip" >nul
    goto menu
)

:Exit
rem Exit Code
cls
echo Exiting ZortosToolBox...
exit
