FROM migoller/shinobidocker:nvidia
RUN apt update && apt install -y apt-utils nano
<<<<<<< HEAD
ADD INSTALL.sh /opt/shinobi/plugins/face/
RUN chmod +x  /opt/shinobi/plugins/face/INSTALL.sh
RUN cd /opt/shinobi/plugins/face/ && /usr/bin/yes no | INSTALL.sh
ADD conf.json /opt/shinobi/plugins/face/
ADD pm2Shinobi.yml /opt/shinobi/
ADD start.sh /opt/shinobi/
ADD face.yml /opt/shinobi/
ADD faces /opt/shinobi/plugins/face/
=======
RUN curl -s https://gitlab.com/Shinobi-Systems/Shinobi/raw/dev/INSTALL/cuda-10.sh | sh
>>>>>>> 2380f9bd5396953071c09016ab680eb814dd653b
