FROM lsiobase/kasmvnc:ubuntujammy-version-1ac24797

# Atualize a lista de pacotes
RUN apt-get update

# Instale o Python e o Tkinter
RUN apt-get install -y python3 python3-tk

# Verifique a instalação
RUN python3 --version
RUN python3 -c "import tkinter"

WORKDIR /app