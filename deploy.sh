#!/bin/bash

# Load environment variables
source .env

pushd blog/ > /dev/null
echo "Deploying Ghost with the following configuration:"
echo "Blog URL: $BLOG_URL"
echo "MySQL user password: $MYSQL_PASSWORD"
echo "MySQL root password: $MYSQL_ROOT_PASSWORD"
echo "Ghost host data folder: $GHOST_HOST_PATH"
echo "MySQL host data folder: $MYSQL_HOST_PATH"
echo "Nginx host config folder: $NGINX_HOST_PATH"

read -p "Confirm the deployment? (Y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Creating host folders..."
    mkdir -p $GHOST_HOST_PATH
    mkdir -p $MYSQL_HOST_PATH
    mkdir -p $NGINX_HOST_PATH
    echo "Deploying"
    docker-compose up -d
else
  echo "Aborting.."
  exit 1
fi
