ffmpeg -framerate 30 -pattern_type glob -i "G*.JPG" -vf "select='not(mod(n,5))',setpts=N/30/TB,hflip,vflip,format=yuv420p" -crf 23 -c:v libx264 -s 1280x960 output.mp4
