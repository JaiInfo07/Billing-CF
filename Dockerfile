# Step 1: Use the base image with CommandBox
FROM ortussolutions/commandbox:latest

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy the build.zip file from the build context to the container
COPY build.zip /app/build.zip

# Step 4: Extract the contents of the build.zip file
RUN unzip build.zip -d /app/ && rm build.zip

# Step 5: Expose the port for the ColdFusion server
EXPOSE 8080

# Step 6: Start the ColdFusion server
CMD ["box", "server", "start"]
