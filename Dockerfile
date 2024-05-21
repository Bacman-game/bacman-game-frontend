FROM node:20.11.1

RUN mkdir -p /app
WORKDIR /app
COPY package*.json .
RUN npm ci --verbose
COPY . .
# RUN npm install pm2@latest -g

CMD ["npm", "run", "start"]