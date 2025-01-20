# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock into the container
COPY package.json package-lock.json ./

# Install dependencies with Yarn
RUN npm install

# Copy the rest of your application code into the container
COPY . .

# Expose port 3000 for the Remix app
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "run", "dev"]
