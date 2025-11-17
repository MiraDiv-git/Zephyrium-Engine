@echo off
cd ..\..

set /p MESSAGE="Commit message: "

git add .
git commit -m "%MESSAGE%"
git push -u origin main