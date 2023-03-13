# using Node v10
FROM node:10
ENV NODE_ENV production

# Create app directory
WORKDIR /usr/src/lafs



# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY package*.json ./app/package.json
# RUN npm install --production --silent && mv node_modules ../

RUN npm install -g @angular/cli@v6-lts
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port 3000 outside container
EXPOSE 8080
# Command used to start application
CMD [ "node", "server.js" ]
