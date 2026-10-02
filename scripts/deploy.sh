#!/bin/bash

# R-Burger API Deployment Script

set -e

APP_DIR="YOUR_APP_DIRECTORY"
PUBLISH_DIR="/var/www/rburger"

echo "Starting deployment..."

cd "$APP_DIR"

echo "Publishing .NET application..."
dotnet publish -c Release -o "$PUBLISH_DIR"

echo "Restarting application service..."
sudo systemctl restart rburger-api.service

echo "Checking application service..."
sudo systemctl is-active rburger-api.service

echo "Deployment completed successfully."
