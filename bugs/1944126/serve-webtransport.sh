#!/usr/bin/env bash

if [[ ! -f cert.pem ]] || [[ ! -f key.pem ]]; then
    echo "Certificates are missing! Run ./serve-http.sh first!"
    exit 0
fi

echo "Applying aioquic patch..."
git -C aioquic apply --quiet ../aioquic.diff

echo "Running webtransport server..."
python aioquic/examples/http3_server.py -c ./cert.pem -k ./key.pem
