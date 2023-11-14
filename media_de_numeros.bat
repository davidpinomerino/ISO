@echo off
REM Realizar la media de 3 numeros pasados por parametro o argumentos.
REM SUBIRLO AL GITHUB DE PAJUELO.

set /A media=(%1+%2+%3)/3
echo Media: %media%