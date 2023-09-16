@echo off
git clone https://github.com/graphdeco-inria/gaussian-splatting --recursive
timeout /10

:: Locate your Anaconda3 installation, adjust if installed in a different location
SET ANACONDA_SCRIPT="%USERPROFILE%\Anaconda3\Scripts\activate.bat"

:: Call Anaconda's activate.bat to set up the environment
CALL %ANACONDA_SCRIPT%

:: Execute commands in the Anaconda environment
conda activate gaussian_splatting
SET DISTUTILS_USE_SDK=1
conda env create --file environment.yml
conda activate gaussian_splatting

timeout /t 20
