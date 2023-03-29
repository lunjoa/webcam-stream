#!/bin/bash
ffmpeg -f v4l2 \
 -framerate 30 \
 -re -stream_loop \
 -1 \
 -video_size 1280x720 \
 -input_format h264 \
 -i /dev/video0 \
 -vf "crop=450:450:300:50" \
 -c:v h264 \
 -f rtsp rtsp://localhost:8554/mystream \
 -vsync 0 \
