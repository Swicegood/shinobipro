FROM migoller/shinobidocker:debian
RUN apt update && apt install -y apt-utils nano
ADD INSTALL.sh /opt/shinobi/plugins/face/
RUN chmod +x  /opt/shinobi/plugins/face/INSTALL.sh
RUN /usr/bin/yes no | /opt/shinobi/plugins/face/INSTALL.sh
ADD conf.json /opt/shinobi/plugins/face/
ADD pm2Shinobi.yml /opt/shinobi/
ADD start.sh /opt/shinobi/
RUN chmod +x /opt/shinobi/start.sh
ADD face.yml /opt/shinobi/
ADD faces /opt/shinobi/plugins/face/
