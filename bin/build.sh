#! /bin/sh

set -e

docker build . -t youtube-dl

docker tag youtube-dl 192.168.3.98:5001/youtube-dl