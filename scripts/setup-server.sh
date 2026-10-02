#!/bin/bash

# R-Burger API - EC2 Server Setup
# Amazon Linux 2023

set -e

echo "Updating system packages..."
sudo dnf update -y

echo "Installing Git..."
sudo dnf install -y git

echo "Installing .NET 8..."
sudo dnf install -y dotnet-sdk-8.0

echo "Creating application directory..."
sudo mkdir -p /var/www/rburger

echo "Setting ownership..."
sudo chown -R ec2-user:ec2-user /var/www/rburger

echo "Server setup completed."
echo "Application secrets must be configured outside this repository."
