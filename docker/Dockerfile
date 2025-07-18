#base image pull the container from docker hub
FROM 991490798/hellowold

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y build-essential

# Install dependencies
RUN apt-get install -y libssl-dev libffi-dev python3-dev    
RUN pip install --no-cache-dir -r requirements.txt

# Build the application
RUN make install

# Make port 8080 available to the world outside this container
EXPOSE 8080

#command to run the application
CMD [ "executable" ]

