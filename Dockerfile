FROM node:18

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y python3 make g++

# Diretório de trabalho
WORKDIR /app

# Clonar o repositório da Flowise
RUN git clone https://github.com/FlowiseAI/Flowise.git .

# Instalar dependências (sem tentar reinstalar o Yarn)
RUN yarn install

# Build do projeto
RUN yarn build

# Porta exposta
EXPOSE 3000

# Comando para iniciar o Flowise
CMD ["yarn", "start"]

