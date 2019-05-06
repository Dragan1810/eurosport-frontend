FROM node:10

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app/client

# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Building app
# RUN npm run build
EXPOSE 7777

# Running the app
CMD [ "npm", "run", "dev" ]