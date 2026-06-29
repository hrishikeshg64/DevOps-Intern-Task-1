# Use official lightweight Node.js image from DockerHub
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files and install dependencies INSIDE the container
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]