@echo off
echo Downloading Observer folder from GitHub...
git clone https://github.com/JNDWI/pubg-killfeed.git temp

echo Copying Observer folder to %LOCALAPPDATA%\TslGame\Saved...
xcopy /s /e /y "temp\Observer" "%LOCALAPPDATA%\TslGame\Saved\Observer\"

echo Cleaning up...
rd /s /q temp

echo  Done. JNDWI's PUBG KILLFEED has been installed. Path:%LOCALAPPDATA%\TslGame\Saved.
pause
