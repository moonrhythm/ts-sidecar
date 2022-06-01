#!/bin/sh

tailscaled --state=mem: --tun=userspace-networking --socket=/tmp/tailscaled.sock &
PID=$!

tailscale --socket=/tmp/tailscaled.sock up --accept-dns=false --authkey=${AUTH_KEY}
wait ${PID}
