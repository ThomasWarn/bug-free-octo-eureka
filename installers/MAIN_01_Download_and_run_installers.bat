curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/01_install_vs2019_tools.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/02_install_anaconda.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/03_install_cuda.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/04_install_git.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/05_restart_once_installers_finished.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/06_install_python37.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/07_download_dataset.bat
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/07_download_dataset.py
curl --location --remote-header-name --remote-name https://raw.githubusercontent.com/ThomasWarn/bug-free-octo-eureka/main/installers/MAIN_02_Download_Dataset_Install_GS.bat
start 01_install_vs2019_tools.bat
start 02_install_anaconda.bat
start 03_install_cuda.bat
start 04_install_git.bat
start 05_restart_once_installers_finished.bat
start 06_install_python37.bat