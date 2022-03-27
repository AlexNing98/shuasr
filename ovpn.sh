#!/usr/bin/env bash
openvpn --config ".github/vpn/config.ovpn" --log "vpn.log" --daemon
until ping -c1 xk.autoisp.shu.edu.cn; do sleep 2; done