#!/bin/bash
USER=$1
HOST=$2

ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ""
ssh-copy-id $USER@$HOST

echo "SSH key added to $USER@$HOST."
