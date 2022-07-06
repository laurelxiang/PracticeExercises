#!/bin/sh

curl "https://www.cryptingup.com/api/markets" | jq -r ' .markets | sort_by(.volume_24h) | reverse | .[] | .symbol, .price' | head -n 20 | awk 'NR%2{printf "%s ",$0;next}{print;}'