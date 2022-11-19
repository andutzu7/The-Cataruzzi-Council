#!/bin/sh

music_list_file=$1
links_out_file=$2
while read p; do
yt-dlp --extract-audio --audio-format mp3  --yes-playlist -o "%(title)s.%(ext)s" "$p"
 done < "$music_list_file"
