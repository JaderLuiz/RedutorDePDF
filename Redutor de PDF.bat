@echo off
SETLOCAL EnableDelayedExpansion
@CHCP 65001 >NUL
color 3f
mode 72,27
echo.
echo.
echo   -------------------------------------------------------------------
echo   -------------------------- REDUTOR DE PDF ------------------------- 
echo   -------------------------------------------------------------------
echo.
echo                                                           -Jader Luiz
echo.
echo.
echo   ---------------------------- INSTRUÇÕES --------------------------- 
echo.
echo - Selecione o arquivo .pdf a ser reduzido
echo.
echo - Em seguida, digite um valor de 0-100 indicando a qualidade desejada
echo (quanto menor o valor, menor será a qualidade e tamanho do arquivo)
echo.
echo - Agora altere o nome/local para que o arquivo reduzido seja salvo
echo (caso use o mesmo local, o nome do arquivo deve ser diferente)
echo.
echo - Clique em "Salvar" e aguarde até que esta janela seja fechada
echo.
echo   --------------------------------------------------------------------
echo.
echo.

SLEEP 1
ping 127.0.0.1 -n 1 -w 500> nul

pause> nul | set /p "=  > Pressione qualquer tecla para iniciar. . ." 
javaw -cp "%~dp0\jar\*" edu.emory.cellbio.ShrinkPDF

echo Saindo...
exit 0
