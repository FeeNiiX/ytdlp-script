@echo off
:start
title yt-dlp
set /p link=Link:
echo ------------------------
echo Quick Downloads
echo ------------------------
echo.
echo [1] Format 22/18
echo [2] Best MP4
echo [3] Default
echo [4] Audio
echo [5] Custom
echo [0] Cancel
echo.
echo ------------------------
set /p format=Format:
echo.
if %format% equ 1 set frmt=22/18
if %format% equ 2 set frmt=bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]
if %format% equ 3 set frmt=bv*+ba/b
if %format% equ 4 set frmt=ba[ext=m4a]
if %format% equ 5 set frmt=-
if %format% equ 0 goto start
yt-dlp --embed-metadata --embed-thumbnail -f %frmt% %link%
echo.
goto start