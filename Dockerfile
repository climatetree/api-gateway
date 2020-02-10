FROM express-gateway

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

ENV LOG_LEVEL=debug

# Bundle app source
COPY . .

EXPOSE 8080 9876

CMD ["npm", "start"]
