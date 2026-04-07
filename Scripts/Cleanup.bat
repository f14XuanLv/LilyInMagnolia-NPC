@echo off
setlocal enabledelayedexpansion

:: --- 1. RESOLVE ABSOLUTE PATHS ---
:: Script is now inside project, so parent directory is project root
set "PROJECT_NAME=EnderMagnolia"
for %%i in ("%~dp0..") do set "GAME_DIR=%%~fi"

echo =====================================================
echo       Deep Cleanup Script for !PROJECT_NAME! 
echo =====================================================
echo Target Directory: !GAME_DIR!
echo.

if not exist "!GAME_DIR!" (
    echo [ERROR] Directory not found: !GAME_DIR!
    pause
    exit /b 1
)

:: --- 2. REMOVE PROJECT-LEVEL DIRECTORIES & SLN ---
set "MAIN_DIRS=.vs Saved DerivedDataCache"
for %%d in (%MAIN_DIRS%) do (
    if exist "!GAME_DIR!\%%d" (
        echo [RM DIR]  Removing: %%d
        rmdir /s /q "!GAME_DIR!\%%d"
    )
)

if exist "!GAME_DIR!\!PROJECT_NAME!.sln" (
    echo [RM FILE] Removing: !PROJECT_NAME!.sln
    del /f /q "!GAME_DIR!\!PROJECT_NAME!.sln"
)

:: --- 3. CLEAN MAIN GAME DIRECTORY ---
echo [MAIN]    Cleaning main directory
call :CleanFolder "!GAME_DIR!"

:: --- 4. CLEAN ALL PLUGINS ---
if exist "!GAME_DIR!\Plugins" (
    for /d %%p in ("!GAME_DIR!\Plugins\*") do (
        echo [PLUGIN]  Cleaning: %%~nxp
        call :CleanFolder "%%p"
    )
)

echo.
echo ---------------------------------------------------------
echo Cleanup Finished.
echo All cache, intermediates, and debug symbols removed.
echo Project is now at minimum size for distribution.
echo ---------------------------------------------------------
pause
exit /b 0

:: --- FUNCTION: CleanFolder ---
:: Parameters: %1 = Folder path
:CleanFolder
set "FOLDER=%~1"

:: Remove Intermediate directory
if exist "%FOLDER%\Intermediate" (
    rmdir /s /q "%FOLDER%\Intermediate" >nul 2>&1
)

:: Remove binaries (.exe, .pdb) in Binaries\Win64
if exist "%FOLDER%\Binaries\Win64" (
    del /f /q "%FOLDER%\Binaries\Win64\*.exe" >nul 2>&1
    del /f /q "%FOLDER%\Binaries\Win64\*.pdb" >nul 2>&1
)

exit /b 0