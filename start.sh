#!/bin/sh
set -e

pm2-docker /opt/shinobi/pm2Shinobi.yml &
sleep 15

pm2-docker /opt/shinobi/face.yml
