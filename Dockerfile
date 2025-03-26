# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Install nodemon globally for development
RUN npm install -g nodemon

# Copy the rest of the application source code to the working directory
COPY . .

# Expose port 8088 (or the port specified in your code)
EXPOSE 8088

# Define the command to start your Node.js application in development mode
CMD ["nodemon", "src/index.ts"]