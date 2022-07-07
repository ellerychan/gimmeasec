# gimmeasec

`gimmeasec` adds some silence to the start of audio files.  I was having trouble
playing music files in [OBS Studio](https://obsproject.com) on Windows using the
VLC media extension because it would always cut off the first 1 second of the
music.  (OBS Studio is part of a setup for streaming church services on Zoom.)

The solution was to add a little bit of silence at the start of each audio file.
`gimmeasec` is a shell script that runs [ffmpeg](https://ffmpeg.org) to augment
the audio files.


#### Dependencies

You must have [ffmpeg](https://ffmpeg.org) installed on your system.  See
[below](#installation) for installation instructions.


### Bash script

Run this from the command line on Linux or MacOS.  On Windows, run it in [Git
Bash](https://gitforwindows.org/), or a Bash shell in Cygwin or WSL.  You can
process many files at once.

#### Usage
```
$ ./gimmeasec -h
Prepend one second of silence to each audio file.  Runs 'ffmpeg' to
process the audio data.

Usage:  gimmeasec [-h] [-f] [-d SEC] [-b BACKUP_DIR] AUDIO_FILE [...]
 where
          -b | --backup-dir   move originals to backup directory BACKUP_DIR
          -d | --delay        add SEC seconds of silence to the start of each audio file (default 1 sec.)
          -f | --force        keep going even if one of the audio files cannot be processed
          -h | --help         display this help message
          AUDIO_FILE [...]  a list of one or more audio files to be modified

Example:  gimmeasec song.mp3
            - creates song_1s.mp3
            - does not modify song.mp3
```


### Windows batch script

In Windows, you can create a shortcut that runs the `gimmeasec.bat` script.  You
can place the shortcut on the Windows desktop, then drag-and-drop multiple audio
files onto it to process them.


## Installation

### ffmpeg
[TBD]

### gimmeasec
[TBD]
