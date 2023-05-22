# Gogs Docker Compose

Simple docker compose file and set of scripts for running Gogs on local machine using docker containers.

## Running services

To run Gogs docker compose services, run

```bash
POSTGRES_USER=<db_user> POSTGRES_PASSWORD=<db_password> ./start.sh
```

## Install configuration options

- **Domain**: fill in with Docker container IP (e.g. 192.168.99.100). But if you want to access your Gogs instance
  from a different physical machine, please fill in with the hostname or IP address of the Docker host machine.
- **SSH Port**: Use the exposed port from Docker container. (Default: 10022)
- **HTTP Port**: Use port you want Gogs to listen on inside Docker container. (Default: 3000)
- **Application URL**: Use combination of Domain and exposed HTTP Port values (e.g. http://192.168.99.100:10880/).

## Backup Gogs data

To backup all gogs data to a zip backup file in current directory, run

```bash
./backup.sh <GOGS_CONTAINER_ID>
```
