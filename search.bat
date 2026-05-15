@echo off
echo === Resetting Windows Search / Start state ===

echo Stopping shell processes...
taskkill /f /im SearchHost.exe >nul 2>&1
taskkill /f /im StartMenuExperienceHost.exe >nul 2>&1
taskkill /f /im explorer.exe >nul 2>&1

echo Restarting Explorer...
start explorer.exe

echo Triggering StartApps refresh (silent)...
powershell -Command "Get-StartApps | Out-Null"

echo.
echo IMPORTANT: Restart is still required for full fix.
pause
exit