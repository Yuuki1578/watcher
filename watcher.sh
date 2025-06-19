#!/usr/bin/bash

WATCHER:Write() {
  CONTENT="$(date)"
  echo "$CONTENT" >> ./target.txt
  git add .
  git commit -m "Update: $CONTENT"
  sleep 1s
}

WATCHER:Write &
