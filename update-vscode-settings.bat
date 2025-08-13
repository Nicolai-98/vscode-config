@echo off
setlocal

:: Define VS Code settings paths for Windows
set "VS_CODE_PATH=%APPDATA%\Code\User"

:: Define the source files (current directory)
set "KEYBINDINGS_SOURCE=%CD%\keybindings.json"
set "SETTINGS_SOURCE=%CD%\settings.json"
set "SNIPPETS_SOURCE=%CD%\ros2.code-snippets"

:: Check if the keybindings.json and settings.json exist in the current directory
if not exist "%KEYBINDINGS_SOURCE%" (
    echo keybindings.json not found in the current directory.
    goto end
)

if not exist "%SETTINGS_SOURCE%" (
    echo settings.json not found in the current directory.
    goto end
)

if not exist "%SNIPPETS_SOURCE%" (
    echo snippets not found in the current directory.
    goto end
)

:: Overwrite the existing keybindings.json and settings.json in VS Code directory
copy /Y "%KEYBINDINGS_SOURCE%" "%VS_CODE_PATH%\keybindings.json"
echo keybindings.json has been updated!

copy /Y "%SETTINGS_SOURCE%" "%VS_CODE_PATH%\settings.json"
echo settings.json has been updated!

copy /Y "%SNIPPETS_SOURCE%" "%VS_CODE_PATH%\ros2.code-snippets"
echo settings.json has been updated!

:end
endlocal
pause
