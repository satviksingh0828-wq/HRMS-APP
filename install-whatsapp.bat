@echo off
title Garuda HRMS — Repair WhatsApp Module
echo.
echo  ============================================================
echo   Garuda HRMS — WhatsApp Module Repair
echo  ============================================================
echo.
echo  WhatsApp is already pre-installed in this package.
echo  Run this ONLY if WhatsApp stops working and you need to
echo  reinstall it (requires Node.js and internet connection).
echo.
echo  Press any key to continue, or close this window to cancel.
pause >nul

cd /d "%~dp0resources\app"

echo.
echo  Reinstalling @whiskeysockets/baileys ...
call npm install @whiskeysockets/baileys --registry https://registry.npmjs.org --no-save

if errorlevel 1 (
  echo.
  echo  ERROR: Installation failed.
  echo  - Make sure Node.js is installed: https://nodejs.org
  echo  - Check your internet connection
  echo  - Try running this file as Administrator
  echo.
  pause
  exit /b 1
)

echo.
echo  ============================================================
echo   Done! Please restart Garuda HRMS.
echo  ============================================================
echo.
pause
