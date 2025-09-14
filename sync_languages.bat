@echo off
setlocal enabledelayedexpansion

REM Path to the l10n directory
set "L10N_DIR=lib\l10n"
set "ARABIC_FILE=%L10N_DIR%\app_ar.arb"

REM Check if jq is installed
where jq >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo jq is required. Please install it from: https://stedolan.github.io/jq/
    exit /b 1
)

REM Get all keys from Arabic file
jq "keys_unsorted | .[] | select(startswith("@@") | not)" "%ARABIC_FILE%" > keys.txt

REM Process each language file
for %%f in ("%L10N_DIR%\app_*.arb") do (
    if /i not "%%~nxf"=="app_ar.arb" (
        echo Updating %%~nxf
        
        REM Create a temporary file
        set "TEMP_FILE=%%~f.tmp"
        
        REM Start with an empty JSON object
        echo { > "!TEMP_FILE!"
        
        REM Add metadata first
        jq "with_entries(select(.key | startswith("@@")))" "%%f" | findstr /v "^[{}]" >> "!TEMP_FILE!"
        
        REM Add a comma if there are metadata entries
        if %ERRORLEVEL%==0 (
            echo, >> "!TEMP_FILE!"
        )
        
        REM Add all keys from Arabic file, keeping existing translations
        set "first=1"
        for /f "usebackq delims=" %%k in (keys.txt) do (
            set "key=%%~k"
            set "key=!key:"=!"
            
            if !first!==1 (set "first=0") else (echo, >> "!TEMP_FILE!")
            
            REM Get the existing translation or use empty string
            set "translation="
            for /f "usebackq delims=" %%t in (`jq -r ".[!key!] // \"\" | tojson" "%%f" 2>nul`) do set "translation=%%~t"
            
            if "!translation!"=="" (
                echo     "!key!": "" >> "!TEMP_FILE!"
            ) else (
                echo     "!key!": !translation! >> "!TEMP_FILE!"
            )
        )
        
        echo } >> "!TEMP_FILE!"
        
        REM Format the JSON and replace the original file
        jq -S . "!TEMP_FILE!" > "%%f"
        del "!TEMP_FILE!"
    )
)

del keys.txt 2>nul
echo Synchronization complete!
