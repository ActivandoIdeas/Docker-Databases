# Database Docker

Include this databases engines

* PostgreSQL + PgAdmin
* SQL Server

# How to use

## Add .env file

The content is next

```env
USER=youruser
PASSWORD="yourpass"
DB=yourdb
PGUSEREMAIL="your@email.com"
```

## Run

Excecute specific engines

```bash
docker-compose up
docker-compose postgres pgadmin
docker-compose sql-server
```