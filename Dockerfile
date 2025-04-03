# Use lightweight Node.js image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy source code
COPY . ./

# Set environment variable
ENV NODE_ENV=production

# Expose backend API port
EXPOSE 8080

# Start backend server (app.js, not server.js)
CMD ["node", "app.js"]
