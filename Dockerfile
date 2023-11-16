# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install
# Use an official Amazon Linux image
FROM amazonlinux:2

# Install required dependencies
RUN yum install -y \
    aws-cli \
    && yum clean all

# Copy the rest of the application source code to the container
COPY . .

# Expose a port (if your application listens on a specific port)
EXPOSE 3000

# Define the command to run your Node.js application
CMD ["node", "app.js"]
