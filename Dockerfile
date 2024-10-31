

# Usando a imagem Python 3.12 slim
FROM python:3.12-slim

# Instalando pacotes necessários para MySQL e para compilar dependências
RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando e instalando as dependências do Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiando o código-fonte para o contêiner
COPY . .

# Configurações de variáveis de ambiente
ENV FLASK_APP=app
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Variável para o banco de dados
ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL

# Expondo a porta 5000 para acesso externo
EXPOSE 5000

# Comando de inicialização
CMD flask db upgrade && flask run


