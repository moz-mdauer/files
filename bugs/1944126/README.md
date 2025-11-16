## STR
> [!NOTE]
> This requires the following values in `about:config`:
> - `fuzzing.enabled = true`
> - `network.http3.disable_when_third_party_roots_found = false`

1. Run `./serve-http.sh`.
    - Generates the certificates for the webtransport server.
    - Starts the web server.
2. Run `./serve-webtransport.sh`.
    - Applies the aioquic patch.
    - Starts the webtransport server.
3. Visit `http://127.0.0.1:8000/poc.html`.
