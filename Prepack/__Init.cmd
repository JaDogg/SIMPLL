@echo off
set JAVA_HOME=%CD%\OpenJDK
set path=%CD%\Busybox;%CD%\GCC\bin;%CD%\Groovy\bin;%CD%\OpenJDK\jre\bin;%CD%\AnsiCon\x64;%CD%\AnsiCon\x86;
ansicon -p
IF %errorlevel% EQU 0 GOTO OK
cls
ansicon64 -p
:OK
echo Welcome to
echo Simple Interactive Multiple Programming Language Learner (SIMPLL)
echo.
prompt SIMPLL$g