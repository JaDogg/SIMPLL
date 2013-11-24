@echo off
prompt SIMPLLpackager$g
echo Welcome to SIMPLL package builder
echo.
del prepack\downld.exe
del prepack\StartupGuide.pdf
del prepack\StartSIMPLL.exe
copy downld\install.exe prepack\downld.exe
copy StartupGuide.pdf prepack\
copy StartSIMPLL\StartSIMPLL.exe prepack\
"..\Bin\NSIS\makensisw.exe" Setup\Setup.nsi
pause