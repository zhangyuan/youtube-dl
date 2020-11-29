FROM alpine:3.12

RUN apk add --update --no-cache python3 curl ffmpeg

COPY youtube-dl /usr/local/bin/youtube-dl

# RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl

RUN chmod a+rx /usr/local/bin/youtube-dl

RUN ln -sf python3 /usr/bin/python

WORKDIR  /data