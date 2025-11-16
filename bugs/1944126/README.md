## STR
1. Run `./serve-http.sh`.
    - Generates the certificates for the webtransport server.
    - Starts the web server.
2. Run `./serve-webtransport.sh`.
    - Applies the aioquic patch.
    - Starts the webtransport server.
3. Visit `http://127.0.0.1:8000/poc.html`.
