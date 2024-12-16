#!/bin/bash
LOGFILE="/var/log/app.log"
MAXSIZE=1048576 # 1MB in bytes

if [ $(stat -c%s "$LOGFILE") -ge $MAXSIZE ]; then
  mv "$LOGFILE" "$LOGFILE-$(date +"%Y%m%d%H%M%S").old"
  touch "$LOGFILE"
  echo "Log rotated."
fi
