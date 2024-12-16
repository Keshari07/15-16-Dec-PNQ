#!/bin/bash
DIR="/path/to/monitor"
inotifywait -m "$DIR" -e create -e delete -e modify |
while read path action file; do
  echo "[$(date)] $action detected on $file"
done
