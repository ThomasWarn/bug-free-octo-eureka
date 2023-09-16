@echo off

:: Set variables
set INSTALLER_PATH=%TEMP%\cuda_11.8.0_522.06_windows.exe
set INSTALL_URL=https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_522.06_windows.exe

:: Download CUDA 11.8 Installer
echo Downloading CUDA 11.8 Installer...
powershell.exe -Command "Invoke-WebRequest -Uri %INSTALL_URL% -OutFile %INSTALLER_PATH%"

:: Install CUDA
echo Installing CUDA 11.8...
start /wait "" "%INSTALLER_PATH%" -s

echo Installation completed!

timeout /t 30