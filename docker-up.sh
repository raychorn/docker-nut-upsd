#!/bin/bash

ROOTDIR=$(dirname "$0")
if [ "$ROOTDIR" = "." ]; then
    ROOTDIR=$(pwd)
fi
echo "1. ROOTDIR:$ROOTDIR"

docker-compose up -d

CNAME=nut-ups
CID=$(docker ps -q -f name=$CNAME)

if [ -z "$CID" ]; then
    echo "$CNAME container not found."
    exit 1
fi

echo "Done."