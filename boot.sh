#!/bin/sh

# Caminho do GUI
#exec /usr/bin/python3 &&
/bin/busybox httpd -f -p 8080 -h /python
python /python/tela.py