FROM node:13

EXPOSE 8000

WORKDIR /usr/src/app/client

COPY package*.json ./

COPY . .

RUN npm install

CMD ["npm", "start"]