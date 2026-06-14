#!/bin/bash

curl -L "https://raw.githubusercontent.com/ryansnetcafe/ott-playlist/refs/heads/main/ryansnetcafe.m3u" -o source.m3u

echo "#EXTM3U" > combined.m3u

tail -n +2 source.m3u >> combined.m3u

echo "" >> combined.m3u

tail -n +2 custom.m3u >> combined.m3u
