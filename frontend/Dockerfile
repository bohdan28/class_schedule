FROM node:14.0-alpine3.10

WORKDIR /app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

COPY . . 

EXPOSE 3000

# Start the application
CMD ["npm", "start"]