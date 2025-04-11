FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install --legacy-peer-deps && npm run build

CMD ["npm", "start"]
