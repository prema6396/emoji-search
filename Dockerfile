# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application code to the working directory
COPY . .

# Build the React.js application for production
RUN npm run build

# Expose the port on which your React app will run (usually 3000)
EXPOSE 3000

# Define the command to start your React application
CMD ["npm", "start"]

