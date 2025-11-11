# Use an official PHP image
FROM php:8.2-apache

# Copy your app files to the container
COPY . /var/www/html/

# Expose port 10000 for Render
EXPOSE 10000

# Run PHP’s built-in server
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/var/www/html"]
