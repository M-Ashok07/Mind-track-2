# Use Nginx image to serve static files
FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy project files (HTML, CSS, JS) into nginx directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Run Nginx on port 3000
CMD ["nginx", "-g", "daemon off;"]
