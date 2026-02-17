# Use Node.js base image 
FROM node:22-alpine
 
# Set working directory 
WORKDIR /app 
 
# Copy app files 
COPY package*.json ./
 
# Install dependencies 
RUN npm install 

COPY . .

EXPOSE 8080

# Start the app 
CMD ["node", "index.js"] 
 

# Commands to run: 

# Build the image 
# docker build -t my-node-app . 
 
# Run the container 
# docker run -p 3000:3000 my-node-app
# docker run -it --rm 3000:3000 my-node-app