# 1. Base Image - Use stable and lightweight Node.js environment
FROM node:18-alpine

# 2. Set working directory - Specify working directory inside container
WORKDIR /app

# 3. Copy package manifests - Copy dependency and package files
COPY package*.json ./

# 4. Install dependencies - Install production dependencies
RUN npm install --production || true

# 5. Copy project files - Copy all application code to container
COPY . .

# 6. Environment variables - Set default environment variables
ENV PORT=3000
ENV NODE_ENV=production

# 7. Expose port - Open specified port for application
EXPOSE 3000

# 8. Start command - Command to run application
CMD ["npm", "start"]
