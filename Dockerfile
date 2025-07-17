FROM node:18

WORKDIR /app

# Clona o repositório oficial
RUN git clone https://github.com/FlowiseAI/Flowise.git .

# Usa o Yarn já instalado e instala dependências com segurança
RUN yarn install --frozen-lockfile

# Faz build do projeto
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
