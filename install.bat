@ECHO OFF
set srcDir=%~dp0
cd %~dp0
cd ../
set tgtDir=%CD%
if not exist "%tgtDir%\gkmedias.dll" copy /V "%srcDir%\gkmedias.dll" "%tgtDir%\gkmedias.dll"
echo b2g.exe -profile "%tgtDir%\b2g-desktop-profile" > "%tgtDir%\b2g-profile.bat"
cd "%tgtDir%"
call "%tgtDir%\b2g-profile.bat"
cd "%srcDir%"

