#!/bin/sh
## Example: a typical script with several problems
files=$(ls ./*.m3u)

for f in $files
do
  grep -qi "hq.*mp3 ""$f" \
&& printf 'Playlist %s contains a HQ file in mp3 format' "$f"
done
