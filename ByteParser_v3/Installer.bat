@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

call :colorEcho 04 "########  ##    ## ########     ###     ######   ######"
echo.
call :colorEcho 04 "##     ##  ##  ##  ##     ##   ## ##   ##    ## ##    ##"
echo.
call :colorEcho 04 "##     ##   ####   ##     ##  ##   ##  ##       ##"
echo.
call :colorEcho 04 "########     ##    ########  ##     ##  ######   ######"
echo.
call :colorEcho 04 "##     ##    ##    ##        #########       ##       ##"
echo.
call :colorEcho 04 "##     ##    ##    ##        ##     ## ##    ## ##    ##"
echo.
call :colorEcho 04 "########     ##    ##        ##     ##  ######   ######"
echo.
echo.

pause



call :colorecho 0A "Downloading Modules..."
echo.
echo.
python -m pip install --upgrade pystyle
python -m pip install --upgrade pymem
python -m pip install --upgrade colorama
python -m pip install --upgrade psutil
call :colorecho 0A "Done. Now running ByteParser-V3"
echo.
echo.
python server.py

pause

exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i