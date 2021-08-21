#!/bin/bash

function yt2txt() {
  while read -r v ; do
    url="https://www.youtube.com/watch?v=$v"
    echo "# downloading chats from $url ..."
    title=$(youtube-dl --skip-download --get-title --no-warnings "$url" | tr '[:space:]' '_' | tr -cd '[:alnum:]._-')
    for t in top live ; do
      chat_downloader --chat_type "$t" "$url" >"${v}_-_${title}_-_${t}.txt"
    done
  done
}

# https://unix.stackexchange.com/a/607547/100379
if [ "$#" -gt 0 ]; then
  for i in "$@" ; do echo "$i" | yt2txt ; done
else
  # read from stdin
  yt2txt
fi

exit 0
