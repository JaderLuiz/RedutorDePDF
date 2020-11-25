<!-- :: Batch section
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
echo - Este script irá instalar o 'Redutor de PDF' na unidade escolhida
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


echo Selecione uma unidade na caixa de dialogo:
echo.
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
SET un=%HTAreply% 
if %un%==Z echo "Instalando na unidade Z. . ." & echo. & GOTO installZ
if %un%==C echo "Instalando na unidade C. . ." & echo. & GOTO installC 
if %un%==Cancelado echo "Instalação cancelada pelo usuário." & echo. & pause & exit

:installZ

if not exist "Z:\Redutor de PDF\" mkdir "Z:\Redutor de PDF"
if not exist "Z:\Redutor de PDF\jar\" mkdir "Z:\Redutor de PDF\jar"
copy /y "%~dp0\jar\" "Z:\Redutor de PDF\jar\"
copy /y "%~dp0\Redutor de PDF.bat" "Z:\Redutor de PDF"
copy /y "%~dp0\Redutor de PDF.lnk"  "Z:\Redutor de PDF"
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

echo. & echo. & echo. & echo. & echo. & echo. & echo.
echo   ----------------------- INSTALAÇÃO CONCLUÍDA -------------------------- 
echo.
echo                Instalado com sucesso em Z:\Redutor de PDF\
echo.
echo                  Um atalho foi criado na área de trabalho.
echo.
echo   ----------------------------------------------------------------------- 
echo. & echo. & echo. & echo. & echo. & echo. & echo.

echo - Pressione qualquer tecla para sair. . .
pause >nul
exit

:installC

if not exist "C:\Redutor de PDF\" mkdir "C:\Redutor de PDF"
if not exist "C:\Redutor de PDF\jar\" mkdir "C:\Redutor de PDF\jar"
copy /y "%~dp0\jar\" "C:\Redutor de PDF\jar\"
copy /y "%~dp0\Redutor de PDF.bat" "C:\Redutor de PDF"
copy /y "%~dp0\Redutor de PDF.lnk"  "C:\Redutor de PDF"
echo.
echo.

@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%userprofile%\desktop\Redutor de PDF.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Redutor de PDF\Redutor de PDF.bat" >> %SCRIPT%
echo oLink.IconLocation = "C:\Redutor de PDF\jar\icon1.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

echo. & echo. & echo. & echo. & echo. & echo. & echo.
echo   ----------------------- INSTALAÇÃO CONCLUÍDA -------------------------- 
echo.
echo                Instalado com sucesso em C:\Redutor de PDF\
echo.
echo                  Um atalho foi criado na área de trabalho.
echo.
echo   ----------------------------------------------------------------------- 
echo. & echo. & echo. & echo. & echo. & echo. & echo.

echo - Pressione qualquer tecla para sair. . .
pause >nul
exit

-->


<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>Selecione a Unidade para Instalação</TITLE>

<SCRIPT language="JavaScript">
window.resizeTo(320,90);
window.moveTo((screen.width - 320) / 2, (screen.height - 90) / 2);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   if (reply == 1){
   fso.GetStandardStream(1).WriteLine("Z");
   }
   if (reply == 2){
   fso.GetStandardStream(1).WriteLine("C");
   }
   if (reply == 3){
   fso.GetStandardStream(1).WriteLine("Cancelado");
   }
   window.close();
}
</SCRIPT>
</HEAD>
<BODY>
   <button onclick="closeHTA(1);">Unidade Z:</button>
   <button onclick="closeHTA(2);">Unidade C:</button>
   <button onclick="closeHTA(3);">Cancelar</button>
</BODY>
</HTML>