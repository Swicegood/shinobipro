FROM migoller/shinobidocker:nvidia
RUN apt update && apt install -y apt-utils nano
ADD cuda-10.sh /root/
RUN chmod +x /root/cuda-10.sh && /root/cuda-10.sh
