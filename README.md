# docker-ghost
This repo can be used to easily deploy ghost with MySQL as a database backend and Nginx as a reverse proxy with **docker**.

## Prerequisites
In order to deploy Ghost, the following requirements must be installed on your system:
- docker
- docker-compose

## Instructions
1. Clone this git repository
```
git clone git@github.com:mehyedes/docker-ghost.git
```
2. Update the .env file with the desired configuration values using your favourite CLI editor
3. Deploy Ghost along with Nginx and MySQL by running the `deploy.sh` script as follows:
```
./deploy.sh
```
