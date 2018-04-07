@echo off

:start

@TASKKILL>nul /FI "IMAGENAME eq python.exe"  /F /T
@TASKLIST>nul /FI "WINDOWTITLE eq BihuCheck-*" /FI "IMAGENAME eq cmd.exe" ||exit
@TASKKILL>nul /FI "WINDOWTITLE eq BihuCheck-*" /FI "IMAGENAME eq cmd.exe"  /F /T 

echo ****** %date% %time%
echo ****** kill process success.

call BihuCheck-136.bat
echo ****** start 136-10·ÖÖÓ

call BihuCheck-138.bat
echo ****** start 138-10·ÖÖÓ

call BihuCheck-134.bat
echo ****** start 134-10·ÖÖÓ
echo=

choice /t 1800 /d y /n >nul
goto start

