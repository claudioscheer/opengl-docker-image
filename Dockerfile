FROM claudioscheer/programming

COPY requirements.sh /requirements.sh
RUN sh /requirements.sh

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES graphics,utility,compute

WORKDIR /home
