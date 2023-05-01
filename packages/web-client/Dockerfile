FROM node:13

WORKDIR /usr/src/app/web-client

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]