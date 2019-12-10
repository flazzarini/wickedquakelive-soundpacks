#!/bin/bash
find ./sound/wicked -name '*.wav' -print0 | while read -d '' -r file; do
  [ -d $(dirname $file)/old ] || mkdir $(dirname $file)/old
  ffmpeg -i $file -acodec libvorbis ${file%.wav}.ogg
  mv $file $(dirname $file)/old
done
