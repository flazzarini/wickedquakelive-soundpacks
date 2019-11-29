#!/bin/bash

[ -f "01.WAV" ] && rename 'y/A-Z/a-z/' *.WAV

[ -d stereo ] || mkdir stereo/
[ -d ogg ] || mkdir ogg/

for file in *.wav; do
  sox ${file} stereo/${file} channels 2
  ffmpeg -y -i "stereo/${file}" "ogg/${file/%wav/ogg}"
done
