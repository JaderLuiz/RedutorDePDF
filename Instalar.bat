@echo off
SETLOCAL EnableDelayedExpansion
@CHCP 65001 >NUL
color 3f
mode 80,25
echo.
echo.
echo   -------------------------------------------------------------------
echo   -------------------------- REDUTOR DE PDF ------------------------- 
echo   -------------------------------------------------------------------
echo.
echo                                                           -Jader Luiz
echo.
echo.
echo   ---------------------------- INSTALAÇÃO --------------------------- 
echo.
echo - Este script irá instalar o 'Redutor de PDF' na unidade Z do computador
echo.
echo - Após isso, você encontrará o ícone do progama na sua área de trabalho
echo.
echo   --------------------------------------------------------------------
echo.
SLEEP 1
ping 127.0.0.1 -n 1 -w 500> nul

pause> nul | set /p "=  > Pressione qualquer tecla para continuar. . ."
echo.
echo.
if not exist "Z:\Redutor de PDF\" mkdir "Z:\Redutor de PDF"
if not exist "Z:\Redutor de PDF\jar\" mkdir "Z:\Redutor de PDF\jar"
copy /y "%~dp0\jar\" "Z:\Redutor de PDF\jar\"
copy /y "%~dp0\Redutor de PDF.bat" "Z:\Redutor de PDF"
copy /y "%~dp0\Redutor de PDF.lnk"  "Z:\Redutor de PDF"
REM copy /y "Z:\Redutor de PDF\Redutor de PDF.lnk"  "%userprofile%\desktop"
echo.
echo.

@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%userprofile%\desktop\Redutor de PDF.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "Z:\Redutor de PDF\Redutor de PDF.bat" >> %SCRIPT%
echo oLink.IconLocation = "Z:\Redutor de PDF\jar\icon1.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

pause> nul | set /p "=  > Pressione qualquer tecla para sair. . ."



