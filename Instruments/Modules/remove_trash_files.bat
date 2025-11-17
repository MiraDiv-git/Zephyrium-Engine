@echo off
echo Cleaning up Windows build artifacts...

cd ..\..\Modules\target\release

del /Q *.pdb 2>nul
del /Q *.lib 2>nul
del /Q *.exp 2>nul
del /Q *.d 2>nul
del /Q *.dll.lib 2>nul

echo Done!

pause