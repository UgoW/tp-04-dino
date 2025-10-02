FROM node:24-alpine3.21

WORKDIR /app

COPY package*.json ./

# Install dependecier dino chrome
RUN npm install react-chrome-dino

RUN npm install --production

# Copie le reste des fichiers de l'application
COPY . .

EXPOSE 3000

# Commande par défaut (à adapter selon ton projet)
CMD ["npm", "start"]