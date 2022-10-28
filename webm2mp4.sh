#!/bin/sh
# converts webm to mp4

new_name=${$1%.webm}.mp4
ffmpeg -i "$1" -c copy -strict -2 "$new_name"


