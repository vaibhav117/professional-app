FROM node:latest
# COPY build.sh ./build.sh
# COPY index.js ./index.js


# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN yarn install

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV CI true

# Run app.py when the container launches
CMD ["yarn","test"]