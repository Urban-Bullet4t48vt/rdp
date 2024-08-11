@echo off
setlocal enabledelayedexpansion

set seconds=0
set minutes=0
set hours=0

:loop
cls
echo Time elapsed: !hours! hours, !minutes! minutes, !seconds! seconds
timeout /t 1 /nobreak >nul
set /a seconds+=1

if !seconds! equ 60 (
    set /a seconds=0
    set /a minutes+=1
)

if !minutes! equ 60 (
    set /a minutes=0
    set /a hours+=1
)

goto loop
