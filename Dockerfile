# Use an official Node.js runtime as the parent image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents (where the Dockerfile is located) into the container at /app
COPY package*.json ./

# Install any needed dependencies using npm
RUN npm install

# Copy the rest of the current directory contents into the container at /app
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define the command to run the application using npm
CMD ["npm", "run", "dev"]
