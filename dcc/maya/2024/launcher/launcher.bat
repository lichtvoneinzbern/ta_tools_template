@echo off

setlocal

set MAYA_VER=2024
set MAYA_INSTALL_PATH=C:\Program Files\Autodesk\Maya%MAYA_VER%

cd %~dp0\..\..
set INHOUSE_PATH=%CD%
set THIRD_PARTY_PATH=%INHOUSE_PATH%\third_party

echo Maya version            : %MAYA_VER%
echo Maya Install Path       : %MAYA_INSTALL_PATH%
echo inhouse path            : %INHOUSE_PATH%
echo third party path        : %THIRD_PARTY_PATH%

:: avoid to create pyc files
set PYTHONDONTWRITEBYTECODE=1
set MAYA_UI_LANGUAGE=en_US
set MAYA_SCRIPT_PATH=%MAYA_SCRIPT_PATH%;%INHOUSE_PATH%\scripts;%INHOUSE_PATH%\%MAYA_VER%\scripts;%THIRD_PARTY_PATH%\\scripts
set PYTHONPATH=%PYTHONPATH%;%INHOUSE_PATH%\share\python;%INHOUSE_PATH%\%MAYA_VER%\python;%THIRD_PARTY_PATH%\python

echo PYTHONDONTWRITEBYTECODE : %PYTHONDONTWRITEBYTECODE%
echo MAYA_UI_LANGUAGE        : %MAYA_UI_LANGUAGE%
echo MAYA_SCRIPT_PATH        : %MAYA_SCRIPT_PATH%
echo PYTHONPATH              : %PYTHONPATH%

start "" "%MAYA_INSTALL_PATH%\bin\maya.exe"

endlocal
