# Use a imagem base do lsiobase/ubuntu:bionic
FROM lsiobase/ubuntu:focal

# Resolução padrão, altere se desejar
ENV WIDTH=1920
ENV HEIGHT=1080
ENV DISPLAY=:1
ENV HOME=/config

# Atualize novamente os pacotes e instale o Python 3.13 (ou a versão desejada)
RUN apt-get update && \
    echo "**** install runtime packages ****" && \
    apt-get install -qy --no-install-recommends ca-certificates \
        fuse \
        gawk \
        libfuse2 \
        libx11-dev \
        libxfixes3 \
        libxml2 \
        libxrandr2 \
        netcat-traditional \
        openbox \
        pulseaudio \
        x11-apps \
        x11-xserver-utils \
        xfonts-base \
        xorgxrdp \
        xrdp \
        xserver-xorg-core \
        xutils \
        zlib1g \
        curl \
        freetype2-demos \
        git \
        liblcms2-2 \
        libc6  \
        libwebp6 \
        libxml2 \
        libxslt1.1 \
        libopenjp2-7 \
        openssl \
        p7zip-full \
        python3-pip \
        python3 \
        python3-dev \
        tar \
        libtiff5 \
        unrar \
        unzip \
        vnstat \
        wget \
        xz-utils
RUN echo "**** install my packages ****" && \
        apt-get install -qy --no-install-recommends ca-certificates \
		dbus-x11 \
		libcurl4 \
		libgtk-3-0 \
		libgtk2.0-0 \
		libdbus-glib-1.2 \
		busybox \
		fonts-wqy-microhei && \
    echo "**** clean up ****" && \
        rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

RUN mkdir -p /etc/services.d/python
COPY run /etc/services.d/python
COPY boot.sh /
RUN chmod +x boot.sh
COPY ./python /python
RUN chmod +x /etc/services.d/python/run
WORKDIR /python
RUN echo "**** install pip packages ****" && \
    pip3 install --no-cache-dir -U pip && \
    pip3 install -r requirements.txt
#CMD ["/etc/services.d/python/run"]
CMD ["sh", "-c", "sleep infinity"]