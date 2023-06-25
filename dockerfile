# Use the devopsedu/webapp base image
FROM devopsedu/webapp

# Set the working directory
WORKDIR /var/www/html

# Copy the PHP website files to the container
COPY ./website/ .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the PHP server
CMD ["php", "-S", "0.0.0.0:80"]
