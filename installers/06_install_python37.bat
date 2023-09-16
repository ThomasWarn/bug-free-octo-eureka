@echo off

:: Set variables
set INSTALLER_PATH=%TEMP%\python37_installer.exe
set INSTALL_URL=https://www.python.org/ftp/python/3.7.12/python-3.7.12-amd64.exe

:: Download Python 3.7 Installer
echo Downloading Python 3.7 Installer...
powershell.exe -Command "Invoke-WebRequest -Uri %INSTALL_URL% -OutFile %INSTALLER_PATH%"

:: Install Python 3.7
echo Installing Python 3.7...
start /wait "" "%INSTALLER_PATH%" /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

echo Installation completed!

timeout /t 10
