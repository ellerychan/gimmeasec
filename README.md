```
$ ./gimmeasec -h
Prepend one second of silence to each audio file.  Runs 'ffmpeg' to
process the audio data.

Usage:    gimmeasec [-h] [-b <backup_dir>] <audio_file> [... ]
  where
          -b | --backup-dir   move originals to backup directory <backup_dir>
          -h | --help         display this help message
          <audio_file> [...]  a list of one or more audio files to be modified

Example:  gimmeasec song.mp3
          - creates song_1s.mp3
          - does not modify song.mp3
```
