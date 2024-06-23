# Use an official Node runtime as a parent image
FROM node:20.8.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or npm-shrinkwrap.json) into the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the application's source code from the current directory to the working directory in the container
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV REACT_APP_API_URL=http://localhost:8080/v3/api-docs

# Run npm start when the container launches
CMD ["npm", "start"]