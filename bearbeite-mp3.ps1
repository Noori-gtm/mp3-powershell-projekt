winget install Gyan.FFmpeg

ffmpeg -version

$ffmpegBin = "C:\PFAD\ZU\FFmpeg\bin"
[Environment]::SetEnvironmentVariable("Path", [Environment]::GetEnvironmentVariable("Path", "User") + ";" + $ffmpegBin, "User")

ffmpeg -i "track1.mp3" -c copy -metadata artist="Beispiel" -metadata title="Track 1" -metadata album="Testalbum" "track1_temp.mp3"
ffmpeg -i "track2.mp3" -c copy -metadata artist="Beispiel" -metadata title="Track 2" -metadata album="Testalbum" "track2_temp.mp3"
ffmpeg -i "track3.mp3" -c copy -metadata artist="Beispiel" -metadata title="Track 3" -metadata album="Testalbum" "track3_temp.mp3"

ffmpeg -i "track1_temp.mp3"
ffmpeg -i "track2_temp.mp3"
ffmpeg -i "track3_temp.mp3"

ffmpeg -i "concat:track1.mp3|track2.mp3|track1.mp3" -acodec libmp3lame -q:a 2 "Alle.mp3"
