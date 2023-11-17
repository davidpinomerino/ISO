@echo off
REM Autor: David Pino Merino
REM Fecha: 15/11/2023

REM 1.- Crear fichero con nombre pedido al usuario
REM 2.- Mostrar el arbol de directorios de la carpeta de usuario
REM 3.- Crear los directorios alfredoff, marinapg, ramonam en tu directorio actual.
REM 4.- Mostrar archivos con extension txt.
REM 5.- Copia el contenido de tu carpeta de usuario al escritorio.

echo Pulsa 1, 2, 3, 4 o 5 para una de las siguientes acciones:
echo.
echo 1.- Crear fichero con nombre pedido al usuario
echo 2.- Mostrar el arbol de directorios de la carpeta de usuario
echo 3.- Crear los directorios alfredoff, marinapg, ramonam en tu directorio actual.
echo 4.- Mostrar archivos con extension txt.
echo 5.- Copia el contenido de tu carpeta de usuario al escritorio.

set /p opcion=

if %opcion% EQU 1 goto opcion1
if %opcion% EQU 2 goto opcion2
if %opcion% EQU 3 goto opcion3
if %opcion% EQU 4 goto opcion4
if %opcion% EQU 5 goto opcion5

:opcion1
set /p nombre=Escribe un nombre:
echo Creando fichero...
type NUL > C:\users\%username%\desktop\%nombre%.txt
echo Fichero creado.
pause
exit

:opcion2
echo Mostrando el arbol de directorios de %username%
tree %userprofile%
pause
exit

:opcion3
echo Creando los directorios alfredoff, marinapg y ramonam en este mismo directorio...
mkdir alfredoff ramonam marinapg
dir .
rmdir ramonam alfredoff marinapg
pause
exit

:opcion4
echo Mostrando archivos con extension txt en este mismo directorio...
dir *.txt
pause
exit

:opcion5
echo Copiando contenido de este directorio al escritorio...
xcopy /S . C:\users\%username%\desktop\archivos_copiados_ejercicio
pause
exit