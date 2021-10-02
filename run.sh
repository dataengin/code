#!/bin/bash

argo_tunnel(){
cloudflared --hostname vs.clfd.ml --url http://0.0.0.0:$PORT
}
argo_tunnel &
chmod 777 /run/screen
/usr/local/bin/code-server --disable-telemetry --bind-addr 0.0.0.0:$PORT /home/coder/cdr