# Use Node.js
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy app files
COPY . .

# Expose port (match your server.js)
EXPOSE 4000

# Start app
CMD ["node", "server.js"]