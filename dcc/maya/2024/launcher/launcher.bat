@echo off

setlocal

:: ==================================
:: Get Maya Path
:: ==================================
set MAYA_VER=2024
set MAYA_INSTALL_PATH=C:\Program Files\Autodesk\Maya%MAYA_VER%

:: ==================================
:: Get Script Paths
:: ==================================
cd %~dp0\..\..\..
set INHOUSE_SHARE_PATH=%CD%\share\inhouse
set INHOUSE_2024_PATH=%CD%\%MAYA_VER%\inhouse
set THIRD_PARTY_SHARE_PATH=%CD%\share\third_party
set THIRD_PARTY_2024_PATH=%CD%\%MAYA_VER%\third_party

:: ==================================
:: Set Environment Variables
:: ==================================
:: avoid to create pyc files
set PYTHONDONTWRITEBYTECODE=1
set MAYA_UI_LANGUAGE=en_US

:: ==================================
:: Set Script Paths
:: ==================================
set MAYA_SCRIPT_PATH=%MAYA_SCRIPT_PATH%;%INHOUSE_SHARE_PATH%\scripts;%INHOUSE_2024_PATH%\scripts;%THIRD_PARTY_SHARE_PATH%\scripts;%THIRD_PARTY_2024_PATH%\scripts
set PYTHONPATH=%PYTHONPATH%;%INHOUSE_SHARE_PATH%\python;%INHOUSE_2024_PATH%\%MAYA_VER%\python;%THIRD_PARTY_SHARE_PATH%\python;%THIRD_PARTY_2024_PATH%\python

:: ==================================
:: Logs
:: ==================================
echo ========================================================
echo Maya Version            : %MAYA_VER%
echo Maya Install Path       : %MAYA_INSTALL_PATH%
echo Inhouse Share Path      : %INHOUSE_SHARE_PATH%
echo Inhouse 2024 Path       : %INHOUSE_2024_PATH%
echo Third Party Share path  : %THIRD_PARTY_SHARE_PATH%
echo Third Party 2024 Path   : %THIRD_PARTY_2024_PATH%
echo -------------------------------------------------------- 
echo PYTHONDONTWRITEBYTECODE : %PYTHONDONTWRITEBYTECODE%
echo MAYA_UI_LANGUAGE        : %MAYA_UI_LANGUAGE%
echo MAYA_SCRIPT_PATH        : %MAYA_SCRIPT_PATH%
echo PYTHONPATH              : %PYTHONPATH%
echo ========================================================

:: ==================================
:: Execute
:: ==================================
start "" "%MAYA_INSTALL_PATH%\bin\maya.exe"

endlocal
