FROM node:18

RUN apt-get update && apt-get install -y python3 make g++

WORKDIR /app

RUN git clone https://github.com/FlowiseAI/Flowise.git .

RUN npm install -g yarn && yarn install

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
