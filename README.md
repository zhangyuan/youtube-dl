# youtube-dl

## Download videos

```
docker-compose run youtube-dl youtube-dl \
  -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' \
  "VIDEO_URL"
```

## Download videos with proxy

```
docker-compose run youtube-dl youtube-dl \
  --proxy socks5://192.168.3.98:1088 \
  -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' \
  "VIDEO_URL"
```
