FROM node:18

WORKDIR /app

# Clona apenas os arquivos necessários (evita bugs)
RUN git clone https://github.com/FlowiseAI/Flowise.git .

# Instala Yarn e dependências com segurança
RUN npm install -g yarn && yarn install --frozen-lockfile

# Build do projeto
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
