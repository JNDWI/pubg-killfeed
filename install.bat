@echo off

echo Deleting "%LOCALAPPDATA%\TslGame\Saved\Observer\"
rd /s /q "%LOCALAPPDATA%\TslGame\Saved\Observer\"

echo Downloading Observer folder from GitHub...
curl -L https://github.com/JNDWI/pubg-killfeed/archive/refs/heads/main.zip -o temp.zip
mkdir temp
tar -xf temp.zip -C temp --strip-components=1

echo Copying Observer folder to %LOCALAPPDATA%\TslGame\Saved...
xcopy /s /e /y "temp\Observer" "%LOCALAPPDATA%\TslGame\Saved\Observer\"

echo Cleaning up...
del /q temp.zip
rd /s /q temp

set /p answer= Switch to the numberless version (yes/no): 

if /i "%answer%"=="yes" (
    ren "%LOCALAPPDATA%\TslGame\Saved\Observer\TeamIcon" "TeamIcon-number" 2>nul
    ren "%LOCALAPPDATA%\TslGame\Saved\Observer\TeamIcon-numberless" "TeamIcon" 2>nul
)

echo Done!

echo Opening "%LOCALAPPDATA%\TslGame\Saved\Observer\" in Explorer...
start "" "%LOCALAPPDATA%\TslGame\Saved\Observer\"

pause