# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm ci

# Copy the rest of the application code to the working directory
COPY . .

ENV PORT=3000


EXPOSE $PORT

# Define the command to run your Node.js application
CMD [ "npm", "start" ]
