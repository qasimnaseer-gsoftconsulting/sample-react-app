#!/bin/bash

# Navigate to the project directory
cd /home/ec2-user

# Fetch the latest code from the repository
git fetch origin
git reset --hard origin/main

# Install dependencies
npm install

# Build the React app
npm run build

# Restart the application service
systemctl restart your-app-service
