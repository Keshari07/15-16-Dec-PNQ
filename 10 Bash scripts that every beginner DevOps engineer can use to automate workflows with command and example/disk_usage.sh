#!/bin/bash
THRESHOLD=80
df -h | awk '{if(NR>1 && $5+0 > '$THRESHOLD') print $1 " is " $5 " full."}'
