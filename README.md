# ytdlp-script

You need [yt-dlp](https://github.com/yt-dlp/yt-dlp) and [ffmpeg](https://github.com/BtbN/FFmpeg-Builds/releases/tag/latest)

You can make a directory to put ytdlp.bat, yt.dlp.exe and ffmpeg.exe and the should work fine

Or you can set it as a system variable

### How?

Its in portuguese but you should figure it out where all of this is

Since you are smart enough to know what yt-dlp is.

<img src=tutorial\step1.png/>

<img src=tutorial\step2.png/>

<img src=tutorial\step3.png/>

<img src=tutorial\step4.png/>

Here its the path of where my executables are, they will probably be in your download folder too

However if you dont want a mess in your downloads folder you can create a folder anywhere and put them in

Them set this folder to your environment variable and [Read This](#tip)

### Why?

This is because when the script executes, its the same as opening the cmd and typing. yt-dlp

When you open cmd without admin rights, it opens at `%HOMEPATH%` (its your user's folder)

And what happens is that there is absolutely no `yt-dlp.exe` file `C:\Users\YourUser\`

It will say that this command does not exist or something like this because it really dont

So when you set it as a environment variable it will execute the `yt-dlp.exe` file in your download folder no matter where you are in cmd

As for ffmpeg, `yt-dlp.exe` executes `ffmpeg.exe` as you execute `yt-dlp.exe` in cmd, so if `ffmpeg.exe` isnt in the same folder as `yt-dlp.exe`

It wont execute at all because this command dont exist as `yt-dlp.exe` didnt exist because it wasnt at `%HOMEPATH%` when you opened cmd

And this goes back to what i've said, if the ffmpeg executable is a environment variable it will execute `ffmpeg.exe` no matter where you are in cmd

### Tip

If you want to set your output folder for the videos you download

I dont know if this creates the folder or not but it will save in a folder IN THE SAME DIRECTORY yt-dlp.exe is in

`yt-dlp -P folder\videos\ --embed-metadata --embed-thumbnail %spbl%%format%%link%`

If your folder isnt in the same directory of yt-dlp.exe

`yt-dlp -P C:\Full\Path\To\Videos\ --embed-metadata --embed-thumbnail %spbl%%format%%link%`

If its one folder behind, it works just like cmd CD command. "cd .." goes back "cd ." is the current directory

`yt-dlp -P ..\Videos --embed-metadata --embed-thumbnail %spbl%%format%%link%`

And it accepts variables too

`yt-dlp -P %HOMEPATH%\Videos --embed-metadata --embed-thumbnail %spbl%%format%%link%`