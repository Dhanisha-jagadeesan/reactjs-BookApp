#!/bin/bash
set -e  # Exit on error
set -x  # Enable debug mode

echo "Navigating to /app directory..."
cd /app

echo "Installing dependencies..."
npm install

echo "Running build script..."
npm run build

echo "Copying build artifacts to /var/www/html..."
cp -r build/* /var/www/html

echo "Installing pm2 globally..."
npm install pm2 -g

echo "Deployment script completed successfully."
