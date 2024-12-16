#!/bin/bash
URL="https://example.com"
STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ $STATUS -ne 200 ]; then
  echo "Website $URL is down (HTTP $STATUS)."
else
  echo "Website $URL is up."
fi
