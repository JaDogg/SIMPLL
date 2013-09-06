@echo off
for /f %%i in ("%0") do set curpath=%%~dpi
cd /d %curpath% 
cmd /k __Init.cmd