@echo off
rem Engine install path
set "UEPATH=C:\Game\UE\UE_5.4"

rem Check if directory exists
if not exist "%UEPATH%\*" (
    echo Error: UE directory not found: %UEPATH%
    echo Please check the path in config.bat and set your actual UE path
    pause
    exit /b 1
)