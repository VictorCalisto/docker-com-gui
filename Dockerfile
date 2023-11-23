FROM victorcalisto/lsiobase-gui:bionic

RUN mkdir -p /etc/services.d/python
COPY run /etc/services.d/python
RUN chmod +x /etc/services.d/python/run
COPY boot.sh /boot.sh
RUN chmod +x /boot.sh
COPY ./python /python

EXPOSE 3389

WORKDIR /python

RUN apt-get update && \
    echo "**** install runtime packages ****" && \
        apt-get install -qy --no-install-recommends ca-certificates \
            python3-pip \
            python3 \
            python3-dev \
            python3-venv \
            python3-setuptools \
            build-essential \
            libssl-dev \
            libffi-dev \
            libxml2-dev \
            libxslt1-dev \
            zlib1g-dev && \
    echo "**** install pip packages ****" && \
        pip3 install --no-cache-dir -U pip && \
        pip3 install -r requirements.txt && \
    echo "**** clean up ****" && \
        rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

CMD [ "sh", "-c", "/etc/services.d/python/run && sleep infinity" ]
#CMD ["sh", "-c", "exec /usr/bin/python3 && python /python/tela.py && sleep infinit"]
#CMD ["sh", "-c", "sleep infinity &"]
