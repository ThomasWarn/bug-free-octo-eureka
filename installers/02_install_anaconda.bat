@echo off

:: Set variables
set INSTALLER_PATH=%TEMP%\Anaconda3Installer.exe
set INSTALL_URL=https://repo.anaconda.com/archive/Anaconda3-2021.05-Windows-x86_64.exe

:: Download Anaconda Installer
echo Downloading Anaconda Installer...
powershell.exe -Command "Invoke-WebRequest -Uri %INSTALL_URL% -OutFile %INSTALLER_PATH%"

:: Install Anaconda
echo Installing Anaconda...
start /wait "" "%INSTALLER_PATH%" /InstallationType=JustMe /AddToPath=1 /RegisterPython=1 /S

echo Installation completed!

pause
