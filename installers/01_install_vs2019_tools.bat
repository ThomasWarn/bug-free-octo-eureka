@echo off

:: Set variables
set INSTALLER_PATH=%TEMP%\vs_installer.exe
set INSTALL_URL=https://aka.ms/vs/16/release/vs_buildtools.exe
set WORKLOAD=microsoft.visualstudio.workload.vctools

:: Download Visual Studio Installer
echo Downloading Visual Studio Installer...
powershell.exe -Command "Invoke-WebRequest -Uri %INSTALL_URL% -OutFile %INSTALLER_PATH%"

:: Install Visual Studio with Desktop development with C++ workload
echo Installing Visual Studio with Desktop Development with C++...
%INSTALLER_PATH% --add %WORKLOAD% --quiet --wait --norestart

echo Installation completed!
timeout /t 30
