@echo off
setlocal

rem Build GameTarget
rem Requires UEPATH to be set in config.bat.

call "%~dp0config.bat"

rem Path to Build.bat
set "BUILD_BATCH_FILE=%UEPATH%\Engine\Build\BatchFiles\Build.bat"

rem Path to the .uproject file
set "PROJECT_FILE=%~dp0..\EnderMagnolia.uproject"

if not exist "%PROJECT_FILE%" (
    echo [ERROR] Project file not found at:
    echo %PROJECT_FILE%
    echo.
    echo Please ensure that Scripts\Run_ProjectGenerator.bat ran successfully.
    pause
    exit /b
)

rem Build the GameTarget.
call "%BUILD_BATCH_FILE%" EnderMagnolia Win64 Development -Project="%PROJECT_FILE%" -WaitMutex