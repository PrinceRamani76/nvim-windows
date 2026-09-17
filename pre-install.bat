@echo off
setlocal

echo Copying Neovim config...

if not exist "D:\ggg\nvim" (
    echo ERROR: D:\ggg\nvim does not exist.
    pause
    exit /b 1
)

if not exist "%LOCALAPPDATA%\nvim" (
    mkdir "%LOCALAPPDATA%\nvim"
)

xcopy "D:\ggg\nvim\*" "%LOCALAPPDATA%\nvim\" /E /I /Y /H

echo.
echo Installing fzf...
winget install --id junegunn.fzf --exact

echo.
echo Done!
pause
