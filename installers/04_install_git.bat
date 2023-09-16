@echo off

:: Set variables
set INSTALLER_PATH=%TEMP%\git_installer.exe
set INSTALL_URL=https://github.com/git-for-windows/git/releases/download/v2.33.1.windows.1/Git-2.33.1-64-bit.exe

:: Download Git Installer
echo Downloading Git Installer...
powershell.exe -Command "Invoke-WebRequest -Uri %INSTALL_URL% -OutFile %INSTALLER_PATH%"

:: Install Git
echo Installing Git...
start /wait "" "%INSTALLER_PATH%" /VERYSILENT

echo Installation completed!

timeout /t 30
