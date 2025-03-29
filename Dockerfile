FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# Add .env file only if it exists
RUN if [ -f .env ]; then cp .env .; fi

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main"]


# FROM node:20-alpine

# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install

# COPY . .

# RUN npm run build

# EXPOSE 3000

# CMD ["node", "dist/main.js", "start:prod"]
