#!/usr/bin/env bash

echo "Generating ceritificates..."
openssl ecparam -genkey -name prime256v1 -noout -out key.pem
openssl req -new -x509 -key key.pem -out cert.pem -days 14 \
  -subj '/CN=localhost' \
  -addext 'subjectAltName=DNS:localhost'
openssl x509 -in cert.pem -outform der | openssl sha256 -binary | base64 > cert.der

# Start web server.
python -m http.server
