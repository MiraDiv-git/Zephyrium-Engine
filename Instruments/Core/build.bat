@echo off

cd ..\..\Core

rem set /p OS="Enter OS (w = Windows, l = Linux, m = macOS, n = Native): "

meson setup build -Ddefault_library=shared

pause
