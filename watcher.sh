#!/usr/bin/bash

WATCHER:WriteEveryHour() {
  CONTENT="$(date)"
  echo "$CONTENT" >> ./target.txt
  git add .
  git commit -m "Update: $CONTENT"
  sleep 1m
}

WATCHER:WriteEveryHour &
