#!/bin/sh

# Defina variáveis de ambiente
export APP="tela.py"

# Iniciar o Firefox com a URL especificada
cd /python
python $APP

# Inicie o servidor web BusyBox sem a opção -h
/bin/busybox httpd -f -p 80 -h /python

# Libera o terminal
exec "$@"