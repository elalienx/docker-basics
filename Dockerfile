# Docker build steps
FROM node:20-slim

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 8000

# Docker running image steps
# From this point forward this runs on the instance, 
# that's why we don't use RUN anymore (http://youtu.be/G07FcRhYB2c?t=650)
CMD ["npm", "start"]