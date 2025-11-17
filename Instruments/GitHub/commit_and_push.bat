@echo off
cd ..\..

set /p MESSAGE="Commit message: "

git add .
git commit -m "%MESSAGE%"

set /p CONF="Continue? (y/n): "
if /i "%OS%"=="y" (
    git push -u origin main

pause