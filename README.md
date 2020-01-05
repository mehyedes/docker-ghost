# docker-ghost
This repo can be used to easily deploy ghost with MariaDB as a database backend and Nginx as a reverse proxy with **docker**.

## Prerequisites
In order to run Ghost using this project, the following packages must be installed:
- docker
- docker-compose

## Instructions
1. Clone this git repository
```
git clone git@github.com:mehyedes/docker-ghost.git
cd docker-ghost
```
2. Create a new env file (`.env.prod` for example) or update the existing `.env` file with your desired configuration values using your favourite text editor.
3. Update the `nginx/blog.conf` vhost configuration file accordingly, if there is no configuration already available under `$NGINX_HOST_PATH`.
4. Deploy Ghost along with Nginx and MySQL by running the `deploy.sh` script as follows:
```
./deploy.sh $ENV_FILE_PATH
```
