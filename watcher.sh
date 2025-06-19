#!/usr/bin/bash

WATCHER:Write() {
  while true; do
    CONTENT="$(date)"
    echo "$CONTENT" >> ./target.txt
    git add .
    git commit -m "Update: $CONTENT"
    sleep 1s
  done
}

WATCHER:Write &
