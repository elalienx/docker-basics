FROM node:20-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

# . . Copies all our files except the ones listed in .dockeringore to avoid overwritting the node_modules
COPY . .

# The port we use in our Express app
ENV PORT=8000

# To make the port available
EXPOSE 8000

CMD ["npm", "start"]