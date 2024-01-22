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
if %format% == 1 (set format=22/18)
if %format% == 2 (set format=bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4])
if %format% == 3 (set format=bv+ba/b)
if %format% == 4 (set format=ba[ext=m4a])
if %format% == 5 (set format=-)
if %format% == 0 (goto start)
yt-dlp --embed-metadata --embed-thumbnail -f %format% %link%
echo.
goto start