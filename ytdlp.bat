@echo off
set sp=OFF
title yt-dlp
:start
set /p link=Link:
echo.
echo ------------------------
echo Downloads Options
echo ------------------------
echo.
echo [1] Quick Download
echo [2] Best MP4
echo [3] Audio (M4A)
echo [4] Default
echo [5] Choose
echo [6] Sponsorblock %sp%
echo [0] Cancel
echo.
echo ------------------------
echo.
choice /c 1234560 /n /m "Enter your choice: "
echo.
if %errorlevel% == 1 set format=-f 22/18
if %errorlevel% == 2 set format=-f bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4]
if %errorlevel% == 3 set format=-f ba[ext=m4a]
if %errorlevel% == 4 set format=
if %errorlevel% == 5 set format=-f -
if %errorlevel% == 6 (
	if %sp% == OFF (
		set spbl=--sponsorblock-remove default 
		set sp=ON
	) else (
		set spbl=
		set sp=OFF
	)
	cls
	goto start
)
if %errorlevel% == 7 goto start
yt-dlp --embed-metadata --embed-thumbnail %spbl% %format% %link%
echo.
goto start