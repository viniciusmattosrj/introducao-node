FROM node:12-slim

LABEL maintainer="Vinicius Mattos vinimattos.rj@gmail.com"

WORKDIR /usr/src/app

COPY package*.json ./

#Force e omita a mensagem de warning
RUN npm install --no-optional && npm cache clean --force --loglevel=error

COPY . .

EXPOSE 3000

# Run the application.
CMD ["npm", "start"]