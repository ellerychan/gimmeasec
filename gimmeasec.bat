: Add one second of silence to an audio file
: Author: Ellery Chan <ellery.chan@gmail.com>
@echo off
setlocal enabledelayedexpansion
: Add one second of silence to the beginning of an audio file
: Usage:    gimmeasec <audio_file>
:
: Example:  gimmeasec song.mp3
:           - creates song_1s.mp3
:           - does not modify song.mp3

set FFMPEG="c:\Program Files\ffmpeg\bin\ffmpeg.exe"

: Get the command line arg count
set argc=0
for %%x in (%*) do set /A argc+=1

: Print the usage if wrong number of args
if %argc% equ 0 (
    echo Usage:    gimmeasec audio_file
    echo.
    echo Example:  gimmeasec song.mp3
    echo           - creates song_1s.mp3
    echo           - does not modify song.mp3
    exit /b 1
)

for %%f in (%*) do (
    : set audio_file=%%f
    set audio_file_dir=%%~pf
    set audio_file_no_ext=%%~nf
    set audio_file_ext=%%~xf

    %FFMPEG% -i "!audio_file_dir!!audio_file_no_ext!!audio_file_ext!" -af "adelay=1s:all=true" "!audio_file_dir!!audio_file_no_ext!_1s!audio_file_ext!"
)
