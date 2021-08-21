from python:alpine

run apk --no-cache add bash \
	&& pip install --no-cache-dir --upgrade chat-downloader youtube_dl

workdir /opt

copy yt2txt.sh /usr/local/bin
