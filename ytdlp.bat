@echo off
:start
title yt-dlp
set /p link=Link:
echo ------------------------
echo Quick Downloads
echo ------------------------
echo.
echo [1] Format 22/18       |
echo [2] Best MP4           |
echo [3] Default            |
echo [4] Audio              |
echo [5] Custom             |
echo [0] Cancel             |
echo.
echo ------------------------
set /p format=Choice:
echo.
if %format% == 1 (set format=-f 22/18)
if %format% == 2 (set format=-f bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4])
if %format% == 3 (set format=)
if %format% == 4 (set format=-f ba[ext=m4a])
if %format% == 5 (set format=-f -)
if %format% == 0 (goto start)
yt-dlp --embed-metadata --embed-thumbnail %format% %link%
echo.
goto start