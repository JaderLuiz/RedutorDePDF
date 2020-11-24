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
echo - Este script irá criar um link do 'Redutor de PDF' para seu usuário
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

copy /y "%~dp0\Redutor de PDF.lnk" "%userprofile%\desktop"
echo.
echo.

pause> nul | set /p "=  > Pressione qualquer tecla para sair. . ."



