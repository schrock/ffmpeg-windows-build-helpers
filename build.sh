#! /bin/bash

docker image build --rm -f Dockerfile -t ffmpeg_win64_build .
docker container prune -f
docker image prune -f

