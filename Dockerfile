FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

COPY .env .                 # Add the .env file

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main.js", "start:prod"]
