# docker-com-gui
container docker que roda aplicacoes com interface grafica.

## Baixar e instalar

Antes de iniciar, certifique-se de que os seguintes requisitos estejam atendidos:

- Git: [Instale o Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Docker: [Instale o Docker](https://docs.docker.com/get-docker/)


Para executar este projeto em seu ambiente de desenvolvimento, siga as etapas abaixo:
1. **Clone o repositório do projeto com o Git:**
```bash
https://github.com/VictorCalisto/docker-com-gui.git
```
2. **Navegue até o diretório do projeto:**
```bash
cd docker-com-gui
```
3. **Construa e execute os contêineres Docker:**
```bash
docker-compose up --build -d
```
## Como usar
1. Acesse o container em http://localhost:3000
2. Acesse a pasta do volume pelo terminal xterm. Esse terminal esta disponivel no navegador.
```
cd /app
```
3. Rode aplicação de exemplo.
```
python3 flag.py
```
