@echo off
title Sincronizar PracticasPython con GitHub

cd /d C:\Users\cxdig\git\PracticasPython

echo ======================================
echo Sincronizando repositorio...
echo ======================================

git add .

set /p mensaje="Mensaje del commit: "

if "%mensaje%"=="" set mensaje=Actualizacion

git commit -m "%mensaje%"

git push origin main

echo.
echo ======================================
echo Proceso finalizado.
echo ======================================
pause
