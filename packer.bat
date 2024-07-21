@echo off
echo Starting script
cd /d "%~dp0\Pack"
if errorlevel 1 (
    echo directory not found!
    pause
    exit /b
)
echo directory founded!
copy /b pkg_* temp.zip
if errorlevel 1 (
    echo Failed to copy files
    pause
    exit /b
)
echo Files copied successfully
del pkg_*
if errorlevel 1 (
    echo Failed to delete files
    pause
    exit /b
)
echo Files deleted successfully
pause
