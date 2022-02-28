FROM migoller/shinobidocker:nvidia
RUN apt update && apt install -y apt-utils nano
RUN curl -s https://gitlab.com/Shinobi-Systems/Shinobi/raw/dev/INSTALL/cuda-10.sh | sh
