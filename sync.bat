@echo off
cd /d C:\Users\cxdig\git\PracticasPython

echo ==============================
echo Sincronizando con GitHub...
echo ==============================

git add .
git commit -m "auto sync"
git push

echo.
echo ==============================
echo Sincronizacion completada
echo ==============================

echo.
choice /C SN /M "Quieres abrir el repositorio en Microsoft Edge?"

if errorlevel 2 goto no
if errorlevel 1 goto si

:si
start msedge "https://github.com/Dacas92/PracticasPython"
goto end

:no
echo No se abrira el navegador.

:end
pause
