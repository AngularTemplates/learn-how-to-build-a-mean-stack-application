FROM node:10

# Create app dir
WORKDIR /usr/src/lafs-api

# install app dependencies
COPY package*.json ./

RUN npm install -g @angular/cli@v6-lts
RUN npm install

# bundle app source
COPY . .

EXPOSE 3000

CMD ng serve --host 0.0.0.0

