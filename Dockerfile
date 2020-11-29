FROM debian:buster-slim

RUN apt-get update

RUN apt-get install -y ffmpeg locales curl

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
  chmod a+rx /usr/local/bin/youtube-dl

RUN rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

WORKDIR  /data

CMD ["youtube-dl"]
