# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies.
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose app port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
