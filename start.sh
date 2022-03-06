#!/bin/sh
set -e

pm2-docker /opt/shinobi/pm2Shinobi.yml &
sleep 15

### Check if face-plugin installed
if [ ! -f /.installed ]; then
  echo "New install detected - please wait while we face-plugin - will take up to 30 minutes!"
  /usr/bin/yes no | /opt/shinobi/plugins/face/INSTALL.sh

  cp /opt/shinobi/plugins/face/conf.json.real /opt/shinobi/plugins/face/conf.json
  touch /.installed    
fi  

pm2-docker /opt/shinobi/face.yml
