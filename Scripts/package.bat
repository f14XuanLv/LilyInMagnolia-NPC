@echo off
setlocal

call "%~dp0config.bat"

set UPROJ=%~dp0..\EnderMagnolia.uproject
set STAGE_DIR=%~dp0..\Saved\StagedBuilds
set "BIN_DIR=%~dp0..\Binaries\Win64"
set "DUMMY_EXE=%BIN_DIR%\EnderMagnolia.exe"

if not exist "%UPROJ%" (
  echo Cannot find EnderMagnolia.uproject at "%UPROJ%".
  exit /b 1
)

if not exist "%BIN_DIR%" mkdir "%BIN_DIR%"

set "CREATED_DUMMY=0"
if not exist "%DUMMY_EXE%" (
    echo [INFO] Creating dummy placeholder for UAT: %DUMMY_EXE%
    type nul > "%DUMMY_EXE%"
    set "CREATED_DUMMY=1"
)

echo Running BuildCookRun via RunUAT...
call "%UEPATH%\\Engine\\Build\BatchFiles\\RunUAT.bat" BuildCookRun^
 -SkipCookingEditorContent -installed -nop4 -project="%UPROJ%"^
 -stagingdirectory="%STAGE_DIR%"^
 -prereqs -nodebuginfo -manifests -targetplatform=Win64 -clientconfig=Development -utf8output -iostore^
 -cook -stage -pak -package ^
 -nocompile -nocompileeditor ^
 -ddc=InstalledDerivedDataBackendGraph

if "%CREATED_DUMMY%"=="1" (
    if exist "%DUMMY_EXE%" (
        echo [CLEANUP] Removing dummy placeholder...
        del /f /q "%DUMMY_EXE%"
    )
)

:: --- Check and copy pakchunk1 files to LogicMods ---
set "PAK_SOURCE_DIR=%~dp0..\Saved\StagedBuilds\Windows\EnderMagnolia\Content\Paks"
set "LOGIC_MODS_DIR=%~dp0..\LogicMods"

if exist "%PAK_SOURCE_DIR%\pakchunk1-Windows.ucas" (
    if exist "%PAK_SOURCE_DIR%\pakchunk1-Windows.pak" (
        if exist "%PAK_SOURCE_DIR%\pakchunk1-Windows.utoc" (
            echo.
            echo [INFO] Found pakchunk1 files, copying to LogicMods...
            
            if not exist "%LOGIC_MODS_DIR%" (
                echo [INFO] Creating LogicMods directory...
                mkdir "%LOGIC_MODS_DIR%"
            )
            
            copy /Y "%PAK_SOURCE_DIR%\pakchunk1-Windows.ucas" "%LOGIC_MODS_DIR%\LilyInMagnolia-NPC.ucas"
            copy /Y "%PAK_SOURCE_DIR%\pakchunk1-Windows.pak" "%LOGIC_MODS_DIR%\LilyInMagnolia-NPC.pak"
            copy /Y "%PAK_SOURCE_DIR%\pakchunk1-Windows.utoc" "%LOGIC_MODS_DIR%\LilyInMagnolia-NPC.utoc"
            
            echo [SUCCESS] pakchunk1 files copied to LogicMods as LilyInMagnolia-NPC.*
        )
    )
)

endlocal