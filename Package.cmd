prompt pack$g
del prepack\downld.exe
del prepack\StartupGuide.pdf
del prepack\StartSIMPLL.exe
copy install\install.exe prepack\downld.exe
copy StartupGuide.pdf prepack\
copy StartSIMPLL\StartSIMPLL.exe prepack\
"C:\Program Files (x86)\NSIS\makensisw.exe" Setup\Setup.nsi
pause