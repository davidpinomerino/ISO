@echo off
REM Autor: David Pino Merino.
REM Fecha: 15/11/2023

echo Si pulsa 1 se creara un archivo TXT.
echo Si pulsa 2 se creara un archivo BAT.

set /p pulsacion=

if %pulsacion%==1 goto pulsa1
if %pulsacion%==2 goto pulsa2

:pulsa1
echo Creando archivo TXT...
type NUL > C:\users\%username%\desktop\file.txt
echo Archivo creado.
pause
exit

:pulsa2
echo Creando archivo BAT...
type NUL > C:\users\%username%\desktop\file.bat
echo Arhivo creado.
pause
exit