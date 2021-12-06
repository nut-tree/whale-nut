#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"
apt-get update
apt-get install tigervnc-standalone-server -y