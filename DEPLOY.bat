@echo off
echo ============================================
echo   DEPLOYMENT TO GITHUB - Portfolio
echo ============================================
echo.

cd /d "%~dp0"

echo [1/6] Initializing Git repository...
git init

echo.
echo [2/6] Adding all files...
git add .

echo.
echo [3/6] Creating initial commit...
git commit -m "Initial commit: Structured Behavioral Data Portfolio with clean deliverables"

echo.
echo [4/6] Setting main branch...
git branch -M main

echo.
echo [5/6] Adding remote origin...
git remote add origin https://github.com/FlavienBardet/Portfolio.git

echo.
echo [6/6] Pushing to GitHub...
git push -u origin main --force

echo.
echo ============================================
echo   DEPLOYMENT COMPLETE!
echo   Check: https://github.com/FlavienBardet/Portfolio
echo ============================================
pause
