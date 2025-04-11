FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install --legacy-peer-deps && npm run build

# Supprimer le fichier Liquibase qui cause une erreur
RUN rm -f ./db/changelog/0.3/20200407_changeset.xml || true

CMD ["npm", "start"]
